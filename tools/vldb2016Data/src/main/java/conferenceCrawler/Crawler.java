package conferenceCrawler;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.postgresql.util.PSQLException;

public class Crawler {
	final static String DBHost = "127.0.0.1";
	final static String DBPort = "5432";
	final static String DBName = "conference";
	static String DBUsername = "";
	static String DBPassword = "";
	final static String DUPLICATE_KEY_ERROR = "23505";

	static LinkedHashSet<Person> persons = new LinkedHashSet<>();
	static LinkedHashSet<Paper> papers = new LinkedHashSet<>();
	static LinkedHashSet<Event> events = new LinkedHashSet<>();
	static LinkedHashSet<Session> sessions = new LinkedHashSet<>();
	static LinkedHashMap<String, UUID> institutes = new LinkedHashMap<>();
	static LinkedHashSet<String> locations = new LinkedHashSet<>();
	static LinkedHashSet<String> tags = new LinkedHashSet<>();
	static LinkedHashMap<String,Integer> tracks = new LinkedHashMap<>();
	static int uuidcount = 0;
	static final UUIDFaker uuidFake= new UUIDFaker();
	
	public static void main(String[] args) throws IOException, ParseException, ClassNotFoundException, SQLException {
		if(args.length!=2) {
			System.out.println("Usage <dbuser> <dbpw>");
			System.exit(0);
		}
		DBUsername=args[0];
		DBPassword=args[1];
		Class.forName("org.postgresql.Driver");
		Connection connection = null;
		connection = DriverManager.getConnection("jdbc:postgresql://" + DBHost + ":" + DBPort + "/" + DBName,
				DBUsername, DBPassword);

		int paperid = 1000000000, sessionid = 1000000000,eventid=1000000000,trackid=1000000000;
		File f = new File("vldb2016.html");
		Document doc = Jsoup.parse(f, "UTF8");
		doc.select(".ritz.grid-container").remove();
		Elements days = doc.select("div[name~=day.*]");
		for (Element day : days) {
			Elements sessions = day.select(".session_wrapper");
			for (Element session : sessions) {
				if (session.id().equals("secD0F0T0")) {
					continue;
				}
				Elements h1s = session.select("h1");
				String time = h1s.text();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy MMM d'th', hh:mm a");
				time = time.substring(time.indexOf(' '), time.indexOf('-')).trim();
				Date parsedDate = dateFormat.parse("2016 Sep 5th, 12:30 pm");
				Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
				Elements sessioninfos = session.children().get(1).children();
				int state = 0;
				String location = "", chair = "", sesname = "";
				for (Element sessioninfo : sessioninfos) {
					if (sessioninfo.hasClass("session")) {
						sesname = sessioninfo.text();
						tags.add(sesname);
						state = 1;
					} else if (state == 1 && sessioninfo.hasClass("location")) {
						location = sessioninfo.text().replace("Location: ", "");
						state = 2;
					} else if (state == 2 && sessioninfo.hasClass("location")) {
						chair = sessioninfo.text();
						state = 1;
					} else if (sessioninfo.hasClass("booklet_paper_folded")) {
						String url = sessioninfo.select("a").attr("href");
						String title = sessioninfo.select("a").select("strong").text();
						String authors = (sessioninfo.select("p").size() > 0) ? (sessioninfo.select("p").get(0).text())
								: "";
						String abstr = sessioninfo.select("div.abstract").text().trim();

						events.add(new Event(eventid++,paperid, sessionid, location));
						papers.add(new Paper(paperid++, title, url, abstr, sesname, authors));
						state = 1;
					}
					locations.add(location);
				}
				String trackname=sesname.substring(0,sesname.indexOf(' '));
				trackname=trackname.replaceAll("s$", "");
				if(!tracks.containsKey(trackname)) {
					tracks.put(trackname, trackid++);
				}
				Crawler.sessions.add(new Session(sessionid++, sesname, timestamp,tracks.get(trackname)));

			}
		}
		try {
			connection.createStatement().executeUpdate(
					"INSERT INTO conference (id,name,location,fromdate,untildate) VALUES (424242,'VLDB 216','New Delhi','2016-09-05','2016-09-09')");
		} catch (PSQLException e) {
			// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
			throw e;
		}
		for (String room : locations) {
			try {
				connection.createStatement()
						.executeUpdate("INSERT INTO room (name,size,conferenceid) VALUES ('" + room + "',100,424242)");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
		}
		for (String tag : tags) {
			try {
				connection.createStatement().executeUpdate("INSERT INTO tag (name) VALUES ('" + tag + "')");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
		}
		try {
			connection.createStatement().executeUpdate("INSERT INTO tag (name) VALUES ('NULL')");
		} catch (PSQLException e) {
			// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
			throw e;
		}
		for (String key : institutes.keySet()) {
			try {
				String id = institutes.get(key).toString();
				connection.createStatement().executeUpdate("INSERT INTO institution (id,name,details,iconURL) VALUES ('"
						+ id + "','" + key + "','NULL','NULL')");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
		}
		for (Person p : persons) {
			try {
				connection.createStatement()
						.executeUpdate("INSERT INTO person (id,name,institutionid,email,details) VALUES ('" + p.id
								+ "','" + p.name + "',"
								+ (p.institute == null ? null : ("'" + institutes.get(p.institute) + "'")) + ",'"
								+ p.email + "',NULL)");
			} catch (PSQLException e) {
				System.out.println(p);
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				// throw e;
			}
		}
		for (Paper p : papers) {
			try {
				connection.createStatement()
						.executeUpdate("INSERT INTO paper (id,title,keywords,abstract,url,tag) VALUES ('" + p.id + "','"
								+ (p.title == null || p.title.isEmpty() ? p.id : p.title.replace("'", "''")) + "','"
								+ (p.tag == null ? "" : p.tag).replace(' ', ',') + "','"
								+ (p.abstr == null || p.abstr.isEmpty() ? p.id
										: (p.title
												.equals("Exploiting Soft and Hard Correlations in Big Data Query Optimization")
														? p.title : p.abstr.replace("'", "''")))
								+ "','"
								+ (p.url == null || p.url.isEmpty()
										|| p.url.equals("http://vldb2016.persistent.com/awards.php") ? p.id : p.url)
								+ "'," + (p.tag == null ? null : ("'" + p.tag + "'")) + ")");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
			for (UUID pers : p.authors) {
				try {
					connection.createStatement().executeUpdate(
							"INSERT INTO author (paperid,personid) VALUES (" + p.id + ",'" + pers + "')");
				} catch (PSQLException e) {
					// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
					throw e;
				}
			}
		}
		for(String tr: tracks.keySet()){
			try {
				connection.createStatement().executeUpdate("INSERT INTO public.kind(name)"+
					    "VALUES ('"+tr+"')");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
		}
		for(String tr: tracks.keySet()){
			try {
				connection.createStatement().executeUpdate("INSERT INTO public.track(id, conferenceid, kind, name)"+
					    "VALUES ("+tracks.get(tr)+",424242,'"+tr+"','"+tr+"')");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
		}
		for(Session s: sessions){
			try {
				connection.createStatement().executeUpdate("INSERT INTO public.session(id, name, trackid, starttime, endtime, chair)"+
					    "VALUES ("+s.id+",'"+s.name+"','"+s.trackid+"','"+s.start+"','"+s.start+"'::TIMESTAMP+ interval '1 hours 30 minutes', null)");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}
		}
		for (Event ev : events) {
			try {
				connection.createStatement().executeUpdate(
						"INSERT INTO public.event(id, sessionid, paperid, roomname, alias, duration, starttime,kind, isexclusive, maxsize, conferenceid)"
								+ "VALUES ("+ev.eventid+","+ev.sessionid+","+ev.paperid+",'"+ev.location+"',null,'00:15',null,null,'false',null,424242)");
			} catch (PSQLException e) {
				// if (!e.getSQLState().equals(DUPLICATE_KEY_ERROR))
				throw e;
			}

		}
		
		connection.close();
	}

	static class Session {
		int id;
		String name;
		Timestamp start;
		int trackid;
		public Session(int id, String name, Timestamp start,int trackid) {
			super();
			this.id = id;
			this.name = name;
			this.start = start;
			this.trackid=trackid;
		}

	}

	static class Event {
		int eventid;
		int paperid;
		int sessionid;
		String location;

		public Event(int eventid,int paperid, int sessionid, String location) {
			super();
			this.eventid=eventid;
			this.paperid = paperid;
			this.sessionid = sessionid;
			this.location = location;
		}

	}

	static class Paper {
		int id;
		String title;
		String url;
		String abstr;
		String tag;
		ArrayList<UUID> authors = new ArrayList<>();

		public Paper(int id, String title, String url, String abstr, String tag, String as) {
			super();
			this.id = id;
			this.title = title;
			this.url = url;
			this.tag = tag;
			this.abstr = abstr;
			if (as.endsWith("Christian Jensen (Aalborg University") || as.endsWith("Nicolas Le Scouarnec (Technicolor"))
				as += ")";
			ArrayList<String> asx = new ArrayList<String>(Arrays.asList(as.split("[,;]")));
			for (int i = 0; i < asx.size(); ++i) {
				if (asx.get(i).matches(".*\\([^)]*")) {
					asx.set(i, asx.get(i) + ',' + asx.get(i + 1));
					asx.remove(i + 1);
					--i;
				}
			}
			for (String a : asx) {
				if (a.isEmpty() || a.trim().equals("Berkeley") || a.trim().equals("Founding Partner")
						|| a.trim().equals("Rocketship.vc"))
					continue;
				if (persons.contains(new Person(a))) {
					for (Person p : persons) {
						if (p.equals(new Person(a))) {
							this.authors.add(p.id);
						}
					}
				} else {
					Person p = new Person(a);
					this.authors.add(p.id);
					persons.add(p);
				}
			}
		}

		@Override
		public String toString() {
			return "Paper [id=" + id + ", title=" + title + ", url=" + url + ", abstr=" + abstr + ", authors=" + authors
					+ "]";
		}
	}

	static class Person {
		UUID id = UUID.fromString(uuidFake.getNext());
		String name;
		String email;
		String institute;

		public Person(String parsestring) {
			this.name = parsestring
					.substring(0, parsestring.indexOf('(') == -1 ? parsestring.length() : parsestring.indexOf('('))
					.trim();
			if (this.name.equals("John Lui")) {
				this.name = "John C.S. Lui";
				return;
			} else if (this.name.equals("Frederick Reiss")) {
				this.name = "Fred Reiss";
				return;
			} else if (this.name.equals("Reynold C.K. Cheng")) {
				this.name = "Reynold Cheng";
				return;
			}
			this.institute = parsestring.substring(parsestring.indexOf('(') == -1 ? 0 : (parsestring.indexOf('(') + 1),
					parsestring.indexOf(')') == -1 ? parsestring.length() : parsestring.indexOf(')')).trim();
			if (!institutes.containsKey(institute)) {
				institutes.put(institute, UUID.fromString(uuidFake.getNext()));
			}
			this.email = (this.name.charAt(0) + this.name.substring(this.name.lastIndexOf(' ')).trim().toLowerCase()
					+ '@'
					+ (this.institute
							.substring(this.institute.lastIndexOf(' ') < 0 ? 0 : this.institute.lastIndexOf(' ')))
									.trim()
					+ ".edu").trim().toLowerCase();
			if (this.name.equals("Weimin Zheng") || this.name.equals("Xiaohang Zhang")
					|| this.name.equals("Xiaohang Zhang") || this.name.equals("Maheshweta Das")
					|| this.name.equals("Wenguang Chen") || this.name.equals("Ke Chen")
					|| this.name.equals("Walid Aref") || this.name.equals("Jeff Ballard")
					|| this.name.equals("Lisi Chen") || this.name.equals("Jianlin Feng")
					|| this.name.equals("Ihab Ilyas") || this.name.equals("Jiannan Wang")) {
				this.email = "w" + this.email;
			}
		}

		@Override
		public String toString() {
			return "Person [id=" + id + ", name=" + name + ", email=" + email + ", institute=" + institute + "]";
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + ((name == null) ? 0 : name.hashCode());
			return result;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Person other = (Person) obj;
			if (name == null) {
				if (other.name != null)
					return false;
			} else if (!name.equals(other.name))
				return false;
			return true;
		}

	}
	
	static class UUIDFaker {
		String startUUID = "a92eb70e-3e0e-497a-ab08-38aec34e51e7";
		char[] chars = {'1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
		
		String getNext() {
			int pos=1;
			while(true) {
				int charIdx=0;
				for(int i=0;i<chars.length;++i){
					if(chars[i]==startUUID.charAt(startUUID.length()-pos)) {
						charIdx=i;
						break;
					}
				}
				// overflow
				if(charIdx==chars.length-1) {
					char[] startUUIDChars = startUUID.toCharArray();
					startUUIDChars[startUUID.length()-pos] = chars[0];
					startUUID = String.valueOf(startUUIDChars);
					++pos;
				} else {
					char[] startUUIDChars = startUUID.toCharArray();
					startUUIDChars[startUUID.length()-pos] = chars[charIdx+1];
					startUUID = String.valueOf(startUUIDChars);
					break;
				}
			}
			return startUUID;
		}
	}
}
