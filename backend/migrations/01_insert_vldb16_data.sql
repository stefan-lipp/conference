--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: eliti
--

INSERT INTO conference (id, name, location, fromdate, untildate) VALUES (424242, 'VLDB 216', 'New Delhi', '2016-09-05', '2016-09-09');


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: eliti
--



--
-- Data for Name: institution; Type: TABLE DATA; Schema: public; Owner: eliti
--

INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'Duke University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51ee', 'Colgate University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51f2', 'SAP', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51f5', 'University of Saarland', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51f8', 'LinkedIn', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51fb', 'Amazon', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51fe', 'MemSQL', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5212', 'Cisco, USA', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5215', 'Oracle, USA', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5218', 'Hewlett-Packard', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e521d', 'University of Pittsburgh', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5221', 'Fraunhofer FIT, Germany', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5224', 'RWTH Aachen University, Germany', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5227', 'Harbin Inst. of Tech., China', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e522a', 'East Carolina University, USA', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e522d', 'QCRI, Qatar', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5231', 'Microsoft Research', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5236', 'Amazon, India', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e523d', 'Persistent Systems', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5245', 'Indian Institute of Science', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5248', 'IBM Research', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e524b', 'Prof. Ion Stoica', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e524e', 'University of California', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5252', 'University of Washington', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5257', 'The Ohio State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e525e', 'New Jersey Institute of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5262', 'Institute of Computing Technology, Chinese Academy of Sciences', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e529c', 'Brown University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e529f', 'Intel Labs and MIT', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'University of Toronto', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'MIT', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52b2', 'Portland State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52b5', 'CMU', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52be', 'University of Freiburg', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52c8', 'Laboratoire Hubert Curien', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52d2', 'University of Edinburgh', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52d5', 'University of Edinburgh, University of Lille, and LINKS, INRIA NordEurope', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'Peking University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52df', 'University of California at Santa Barbara', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'Tsinghua University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'Renmin University of China', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52eb', 'IBM Research – China', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ee', 'IBM Research - Almaden', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52f8', '(IBM Research - Almaden', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'IBM Research – Almaden', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52fe', 'University of Maryland', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e536f', 'INESC-ID', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5373', 'INESC-ID/IST at University of Lisbon', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5376', 'NOVA LINCS / NOVA at University of Lisbon', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5386', 'Flipkart', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5389', 'LNCC', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5391', 'INRIA', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5394', 'Teradata Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e539d', 'IBM Research – T.J. Watson', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53a3', 'IBM', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53ae', 'Sandia National Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'Zhejiang University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53b5', 'Aalborg University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53c1', 'SAP SE', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e546b', 'Université Paris-Sud', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e546e', 'Université de Rennes 1', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e547a', 'Université ParisSud', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e547f', 'University of Tuebingen', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5483', 'Universität Tübingen', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5486', 'IIT Bombay', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5492', 'EPFL', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'Purdue University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54a9', 'Qatar University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'Qatar Computing Research Institute', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e556a', 'Microsoft', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e556f', 'University of Oxford', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5575', 'University of Wisconsin Madison', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e558d', 'WalmartLabs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5595', 'Oregon State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e559e', 'University of Texas at Arlington', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e55a4', 'Hewlett Packard Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e55a9', 'Saarland University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5691', 'Huazhong University of Science and Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5696', 'University of Southern Denmark', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e569f', 'University of Warwick', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e578d', 'Harbin Institute of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5881', 'University of Ontario Institute of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5884', 'McMaster University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5889', 'AT&T Labs Research', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a78', 'The University of New South Wales', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a7b', 'University of Technology, Sydney', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a85', 'Yale University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a8c', 'University of Helsinki', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'Nanyang Technological University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a97', 'Cornell University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a9a', 'Stanford University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5aa2', 'Qubole', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5aa5', 'Hewlett-Packard Enterprise Vertica', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5cbc', 'IBM Spark Technology Center', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ef9', 'University of Florida', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f11', 'Tel-Aviv University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f16', 'University of California at Santa Cruz', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f19', 'CWI', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e613f', 'MonetDB Solutions', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'Hong Kong Baptist University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64bb', 'TU Kaiserslautern', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64c5', 'National University of Singapore', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64ca', 'University of Michigan', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64cf', 'Tel Aviv University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64e2', 'Nayang Technological University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69ec', 'University of Tsukuba', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69f2', 'UT Arlington', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69f5', 'NJIT', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69f8', 'QCRI, HBKU', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69fb', 'CNRS LIG', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b53', 'Hasselt University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b58', 'National Taiwan University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b5b', 'Université Libre de Bruxelles', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'King Abdullah University of Science and Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'ETH Zurich', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'Oracle Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e1e', 'Tableau Software', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e24', 'University of Utah', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f8b', 'NEC Labs America, Inc', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f8e', 'NEC Labs America, Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f94', 'University of California at Riverside', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e71fd', 'George Washington University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7375', 'Emory University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e737a', 'Simon Fraser University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e737d', 'Lenovo', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7383', 'Denison University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e795d', 'Oracle', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7963', 'Couchbase Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e796c', 'Aerospike Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e797e', 'Bloomberg LP', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7997', 'IIT Kanpur', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e799a', 'Xerox Research Centre India', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e799f', 'CNRS LIRIS', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79a3', 'University of Lyon 1 & CNRS LIRIS', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79a8', 'TU Eindhoven', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79ab', 'University of Lille 3 & INRIA', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79b1', 'Roma Tre University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79b4', 'NearForm', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'University of Waterloo', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79c1', 'Bar Ilan University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d25', 'Max Planck Insitute for Informatics', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d28', 'Max Planck Institute for Informatics', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d2b', 'IIT Delhi', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d33', 'PUC Chile', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d3e', 'The Australian National University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d44', 'CCEE at KACST and MIT', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d49', 'University of California at Irvine', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d51', 'Anand Rajaraman', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d54', 'University of Mannheim', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'Worcester Polytechnic Institute', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'Technische Universität München', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d73', 'INRIA & LIX', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d76', 'University of Rennes 1 and INRIA', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8217', 'Yonsei University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e821a', 'POSTECH', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb815', 'Huawei', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8226', 'Hong Kong University of Science and Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e83f6', 'Beihang University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'Turn Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'Oracle America', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e92a9', 'LinkedIn America', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94ae', 'HERE Global B.V.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94ba', 'MemSQL Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98e6', 'Sun Yat-sen University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98ed', 'South China University of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98fd', 'UOIT', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9b2c', 'Professor, Cheriton School of Computer Science, University of Waterloo', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9d4c', 'CNRS', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f6a', 'University of Illinois (UIUC', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f6f', 'eBay', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f73', 'Microsoft Research Asia', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f76', 'Fudan University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f7b', 'Facebook', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f7e', 'The University of Tokyo', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f82', 'National Institute of Informatics', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'University of California at Berkeley', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f91', 'University of Victoria', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f9c', 'Illinois Institute of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f9f', 'Università of Basilicata', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ea991', 'Arizona State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb14f', 'Columbia University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb833', 'Bilkent University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebce3', 'University of Ioannina', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebcea', 'Swinburne University of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebcef', 'Technische Universtät Ilmenau', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf5d', 'University of Massachusetts Amherst', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf61', 'New York University Abu Dhabi', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'The Chinese University of Hong Kong', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec7b2', 'The Hong Kong University of Science and Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca2a', 'University of Southern California', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca34', 'University of Illinois', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'University of Illinois at Urbana-Champaign', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'Google', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'Samsung Electronics Co.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf51', 'University of Illinois at Urbana- Champaign', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf54', 'Delft University of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf5d', 'Universitat Politècnica de Catalunya', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf65', 'Intel Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf6e', 'Huawei Research America', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf72', 'Georgia Tech', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed317', 'Twitter Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed86d', 'Facebook Inc', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed871', 'Facebook Inc.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed874', 'Federal University of Parana', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee179', 'IBM Research, Almaden', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee17c', 'The New Casper: Query Processing for Location Services without Compromising Privacy Mohamed F. Mokbel', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee17f', 'Chi-Yin Chow', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee183', 'Walid G. Aref VLDB 2006 for inspiring research to support privacy in spatial query processing.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee186', 'Xin Luna Dong for advancing the state of the art of knowledge fusion', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee189', 'Magdalena Balazinska for her inspirational research record on scalable distributed data systems.', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee18c', 'Xin Luna Dong', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee18f', 'Mohamed Mokbel', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee44b', 'and Walid Aref', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef31', 'Monash University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef38', 'University of New South Wales', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef3b', 'University of Technology Sydney', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5b3', 'RMIT University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5ba', 'Queen’s University, Belfast', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5bd', 'Technicolor', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5c5', 'Brandeis University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb65', 'University of California at Los Angeles', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f1222', 'University of Rome “Tor Vergata”', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f14ee', 'Università di Modena e Reggio Emilia', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17d4', 'University of Athens', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17d7', 'Technion', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17dc', 'Paris Descartes University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17df', 'University of Salzburg', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17e5', 'Aarhus University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17ea', 'Aalto University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f39fb', 'University of British Columbia', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43cf', 'Utah State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43d3', 'KTH Royal Institute of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43d6', 'Telefonica Research', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43db', 'Technische Universität Berlin', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f46d7', 'FORTH', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4ccd', 'Georgia Institute of Technology', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cd7', 'IBM Research - India', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cdc', 'IBM Research – India', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56ed', 'University of Calabria', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56f9', 'Carnegie Mellon University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a1c', 'Michigan State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a1f', 'North Carolina State University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a23', 'Nanjing Uinversity', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a26', 'Boston University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a29', 'Nanjing University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a2c', 'ICT, CAS', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a36', 'University of Chicago', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f7e5d', 'Instacart', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa38f', 'IMIS, “Athena” Research Center', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa395', 'Hewlett-Packard Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa398', 'The University of Hong Kong', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa1d', 'American Express Big Data Labs', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa21', 'General Electric Global Research', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa24', 'Samsung Research America', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb18f', 'Università degli Studi Roma Tre', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb193', 'IBM Research – Brazil', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb4cd', 'AT&T Labs – Research', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fbb54', 'University of Hong Kong', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc952', 'Stony Brook University', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc955', 'University of North Carolina at Charlotte', NULL, NULL);
INSERT INTO institution (id, name, details, iconurl) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fcc9c', 'TU Berlin', NULL, NULL);


--
-- Data for Name: keyword; Type: TABLE DATA; Schema: public; Owner: eliti
--
﻿INSERT INTO public.keyword ("name") VALUES (
'Industry');
INSERT INTO public.keyword ("name") VALUES (
'-2');
INSERT INTO public.keyword ("name") VALUES (
'Scalable');
INSERT INTO public.keyword ("name") VALUES (
'Demo');
INSERT INTO public.keyword ("name") VALUES (
'2');
INSERT INTO public.keyword ("name") VALUES (
'R18:');
INSERT INTO public.keyword ("name") VALUES (
'R23:');
INSERT INTO public.keyword ("name") VALUES (
'Community');
INSERT INTO public.keyword ("name") VALUES (
'-3');
INSERT INTO public.keyword ("name") VALUES (
'R24:');
INSERT INTO public.keyword ("name") VALUES (
'4');
INSERT INTO public.keyword ("name") VALUES (
'Distributed');
INSERT INTO public.keyword ("name") VALUES (
'R19:');
INSERT INTO public.keyword ("name") VALUES (
'W6');
INSERT INTO public.keyword ("name") VALUES (
'Query');
INSERT INTO public.keyword ("name") VALUES (
'Engine');
INSERT INTO public.keyword ("name") VALUES (
'Panel');
INSERT INTO public.keyword ("name") VALUES (
'R22:');
INSERT INTO public.keyword ("name") VALUES (
'W7');
INSERT INTO public.keyword ("name") VALUES (
'Memory');
INSERT INTO public.keyword ("name") VALUES (
'Award');
INSERT INTO public.keyword ("name") VALUES (
'5');
INSERT INTO public.keyword ("name") VALUES (
'R28:');
INSERT INTO public.keyword ("name") VALUES (
'Posters');
INSERT INTO public.keyword ("name") VALUES (
'R30:');
INSERT INTO public.keyword ("name") VALUES (
'Systems');
INSERT INTO public.keyword ("name") VALUES (
'Security');
INSERT INTO public.keyword ("name") VALUES (
'Talk');
INSERT INTO public.keyword ("name") VALUES (
'Session');
INSERT INTO public.keyword ("name") VALUES (
'Search');
INSERT INTO public.keyword ("name") VALUES (
'I5:');
INSERT INTO public.keyword ("name") VALUES (
'Research');
INSERT INTO public.keyword ("name") VALUES (
'R9:');
INSERT INTO public.keyword ("name") VALUES (
'R7:');
INSERT INTO public.keyword ("name") VALUES (
'I2:');
INSERT INTO public.keyword ("name") VALUES (
'Privacy');
INSERT INTO public.keyword ("name") VALUES (
'Ranking');
INSERT INTO public.keyword ("name") VALUES (
'T1');
INSERT INTO public.keyword ("name") VALUES (
'Engines');
INSERT INTO public.keyword ("name") VALUES (
'R8:');
INSERT INTO public.keyword ("name") VALUES (
'R13:');
INSERT INTO public.keyword ("name") VALUES (
'Management');
INSERT INTO public.keyword ("name") VALUES (
'Semistructured');
INSERT INTO public.keyword ("name") VALUES (
'Interactive');
INSERT INTO public.keyword ("name") VALUES (
'Exploratory');
INSERT INTO public.keyword ("name") VALUES (
'Graph');
INSERT INTO public.keyword ("name") VALUES (
'T5');
INSERT INTO public.keyword ("name") VALUES (
'R17:');
INSERT INTO public.keyword ("name") VALUES (
'Mining');
INSERT INTO public.keyword ("name") VALUES (
'R25:');
INSERT INTO public.keyword ("name") VALUES (
'W5');
INSERT INTO public.keyword ("name") VALUES (
'Spatial');
INSERT INTO public.keyword ("name") VALUES (
'Inauguration');
INSERT INTO public.keyword ("name") VALUES (
'VLDB');
INSERT INTO public.keyword ("name") VALUES (
'T4');
INSERT INTO public.keyword ("name") VALUES (
'R12:');
INSERT INTO public.keyword ("name") VALUES (
'Conference');
INSERT INTO public.keyword ("name") VALUES (
'Data');
INSERT INTO public.keyword ("name") VALUES (
'Hardware-Software');
INSERT INTO public.keyword ("name") VALUES (
'Platforms');
INSERT INTO public.keyword ("name") VALUES (
'and');
INSERT INTO public.keyword ("name") VALUES (
'-');
INSERT INTO public.keyword ("name") VALUES (
'R2:');
INSERT INTO public.keyword ("name") VALUES (
'Cloud');
INSERT INTO public.keyword ("name") VALUES (
'R6:');
INSERT INTO public.keyword ("name") VALUES (
'Cleaning');
INSERT INTO public.keyword ("name") VALUES (
'I1:');
INSERT INTO public.keyword ("name") VALUES (
'R16:');
INSERT INTO public.keyword ("name") VALUES (
'Matching');
INSERT INTO public.keyword ("name") VALUES (
'2a:');
INSERT INTO public.keyword ("name") VALUES (
'R1:');
INSERT INTO public.keyword ("name") VALUES (
'Architectures');
INSERT INTO public.keyword ("name") VALUES (
'T3');
INSERT INTO public.keyword ("name") VALUES (
'R21:');
INSERT INTO public.keyword ("name") VALUES (
'R5:');
INSERT INTO public.keyword ("name") VALUES (
'Social');
INSERT INTO public.keyword ("name") VALUES (
'R26:');
INSERT INTO public.keyword ("name") VALUES (
'R3:');
INSERT INTO public.keyword ("name") VALUES (
'Crowdsourcing');
INSERT INTO public.keyword ("name") VALUES (
'W1');
INSERT INTO public.keyword ("name") VALUES (
'R4:');
INSERT INTO public.keyword ("name") VALUES (
'-1');
INSERT INTO public.keyword ("name") VALUES (
'3');
INSERT INTO public.keyword ("name") VALUES (
'Joint');
INSERT INTO public.keyword ("name") VALUES (
'Workshop');
INSERT INTO public.keyword ("name") VALUES (
'T6');
INSERT INTO public.keyword ("name") VALUES (
'Endowment');
INSERT INTO public.keyword ("name") VALUES (
'Execution');
INSERT INTO public.keyword ("name") VALUES (
'W8');
INSERT INTO public.keyword ("name") VALUES (
'R20:');
INSERT INTO public.keyword ("name") VALUES (
'Keynote');
INSERT INTO public.keyword ("name") VALUES (
'R15:');
INSERT INTO public.keyword ("name") VALUES (
'R29:');
INSERT INTO public.keyword ("name") VALUES (
'R14:');
INSERT INTO public.keyword ("name") VALUES (
'1a:');
INSERT INTO public.keyword ("name") VALUES (
'I4:');
INSERT INTO public.keyword ("name") VALUES (
'6');
INSERT INTO public.keyword ("name") VALUES (
'Tutorial');
INSERT INTO public.keyword ("name") VALUES (
'Awards');
INSERT INTO public.keyword ("name") VALUES (
'T2');
INSERT INTO public.keyword ("name") VALUES (
'Processing');
INSERT INTO public.keyword ("name") VALUES (
'Entity');
INSERT INTO public.keyword ("name") VALUES (
'Analytics');
INSERT INTO public.keyword ("name") VALUES (
'Codesign');
INSERT INTO public.keyword ("name") VALUES (
'W4');
INSERT INTO public.keyword ("name") VALUES (
'Optimization');
INSERT INTO public.keyword ("name") VALUES (
'Networks');
INSERT INTO public.keyword ("name") VALUES (
'R10:');
INSERT INTO public.keyword ("name") VALUES (
'W2');
INSERT INTO public.keyword ("name") VALUES (
'RDF');
INSERT INTO public.keyword ("name") VALUES (
'R11:');
INSERT INTO public.keyword ("name") VALUES (
'Queries');
INSERT INTO public.keyword ("name") VALUES (
'R27:');
INSERT INTO public.keyword ("name") VALUES (
'1');
INSERT INTO public.keyword ("name") VALUES (
'I3:');
INSERT INTO public.keyword ("name") VALUES (
'3a:');
INSERT INTO public.keyword ("name") VALUES (
'Models');
INSERT INTO public.keyword ("name") VALUES (
'Transaction');
INSERT INTO public.keyword ("name") VALUES (
'Database');
INSERT INTO public.keyword ("name") VALUES (
'W3');

--
-- Data for Name: paper; Type: TABLE DATA; Schema: public; Owner: eliti
--

﻿INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000000,'Differential Privacy in the Wild','Abstract:Differential privacy has emerged as an important standard for privacy preserving computation over databases containing sensitive information about individuals. Research on differential privacy spanning a number of research areas, including theory, security, database, networks, machine learning, and statistics, over the last decade has resulted in a variety of privacy preserving algorithms for a number of analysis tasks. Despite maturing research efforts, the adoption of differential privacy by practitioners in industry, academia, or government agencies has so far been rare. Hence, in this tutorial, we will first describe the foundations of differentially private algorithm design that cover the state of the art in private computation on tabular data. In the second half of the tutorial we will highlight real world applications on complex data types, and identify research challenges in applying differential privacy to real world applications.','http://vldb2016.persistent.com/differential_privacy_in_the_wild.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000001,'Operational Analytics Data Management','Abstract:As enterprise businesses become more agile and responsive to trends, sentiments and surges, business analytics applications can no longer rely on the classic data warehousing model of attempting to derive insights from data at rest. The data for analytics is as current as of the last ETL (Extract, Transform and Load) job that moved data from the operational system to the data warehouse, and business can no longer afford missing on real-time insights on the data that is fresh in the operational system. For example, a retail store could run analytics on transactional data to track sales and use the information to offer discounts. There is an increasing demand for database management systems to be able to perform real-time analytics on data that gets ingested and modified in live mainstream operational databases. As a response, many commercial vendors as well as academia have attempted to solve the problem by combining transactional and analytical processing capabilities in the same database system; these systems will be referred to as operational analytics systems. In this tutorial, we shall present an in-depth overview of operational analytical systems. We shall start with a discussion on the various aspects associated with the design of such a system; ranging from data storage, indexing to query optimization and processing. We shall then present a set of representative systems in detail, highlight their individual architecture and design characteristics, and discuss several key research problems they address. This tutorial is intended for both researchers and practitioners in the industry.','http://vldb2016.persistent.com/operational_analytics_data_management.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000002,'TPC Technology Conference on Performance Evaluation and Benchmarking (TPCTC)','1000000002','http://www.tpc.org/tpctc/tpctc2016/default.asp');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000003,'Business Intelligence for the Real Time Enterprise (BIRTE)','1000000003','http://db.cs.pitt.edu/birte2016/');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000004,'Quality in Databases','1000000004','http://www.dbis.rwth-aachen.de/QDB2016/');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000005,'Modern Main-Memory Database Systems','Abstract:This tutorial provides an overview of recent developments in mainmemory database systems. With growing memory sizes and memory prices dropping by a factor of 10 every 5 years, data having a “primary home” in memory is now a reality. Main-memory databases eschew many of the traditional architectural tenets of relational database systems that optimized for disk-resident data. Innovative approaches to fundamental issues such as concurrency control and query processing are required to unleash the full performance potential of main-memory databases. The tutorial is focused around design issues and architectural choices that must be made when building a high performance database system optimized for main-memory: data storage and indexing, concurrency control, durability and recovery techniques, query processing and compilation, support for high availability, and ability to support hybrid transactional and analytics workloads. This will be illustrated by example solutions drawn from four state-of-the-art systems: HStore/ VoltDB, Hekaton, HyPeR, and SAP HANA. The tutorial will also cover current and future research trends.','http://vldb2016.persistent.com/modern_main_mem_db_sys.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000006,'Machine Learning in the Real World','Abstract:Machine Learning (ML) has become a mature technology that is being applied to a wide range of business problems such as web search, online advertising, product recommendations, object recognition, and so on. As a result, it has become imperative for researchers and practitioners to have a fundamental understanding of ML concepts and practical knowledge of end-to-end modeling. This tutorial takes a hands-on approach to introducing the audience to machine learning. The first part of the tutorial gives a broad overview and discusses some of the key concepts within machine learning. The second part of the tutorial takes the audience through the end-to-end modeling pipeline for a real-world income prediction problem. The tutorial includes some hands-on exercises. If you want to follow along, you will need a laptop with at least 2 GB of RAM and Firefox/ Google Chrome browser installed. Note that your laptop must be capable of connecting to internet via Wifi or your mobile data connection. We will be using docker containers, so specific software does not need to be installed on laptops.','http://vldb2016.persistent.com/machine_learning_real_world.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000007,'1000000007','1000000007','1000000007');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000008,'Trends and Challenges in Big Data Processing','Abstract:Almost six years ago we started the Spark project at UC Berkeley. Spark is a cluster computing engine that is optimized for in- memory processing, and unifies support for a variety of workloads, including batch, interactive querying, streaming, and iterative computations. Spark is now the most active big data project in the open source community, and is already being used by over one thousand organizations. One of the reasons behind Spark’s success has been our early bet on the continuous increase in the memory capacity and the feasibility to fit many realistic workloads in the aggregate memory of typical production clusters. Today, we are witnessing new trends, such as Moore’s law slowing down, and the emergence of a variety of computation and storage technologies, such as GPUs, FPGAs, and 3D Xpoint. In this talk, I’ll discuss some of the lessons we learned in developing Spark as a unified computation platform, and the implications of today’s hardware and software trends on the development of the next generation of big data processing systems. Bio: Ion Stoica is a Professor in the EECS Department at University of California at Berkeley. He received his PhD from Carnegie Mellon University in 2000. He does research on cloud computing and networked computer systems. Past work includes the Dynamic Packet State (DPS), Chord DHT, Internet Indirection Infrastructure (i3), declarative networks, replay-debugging, and multi- layer tracing in distributed systems. His current research focuses on resource management and scheduling for data centers, cluster computing frameworks, and network architectures. He is an ACM Fellow and has received numerous awards, including the SIGCOMM Test of Time Award (2011), and the ACM doctoral dissertation award (2001). In 2006, he co-founded Conviva, a startup to commercialize technologies for large scale video distribution, and in 2013, he co-founded Databricks a startup to commercialize technologies for Big Data processing.','http://vldb2016.persistent.com/keynotes.php#k1');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000026,'JexLog: A Sonar for the Abyss','1000000026','http://www.vldb.org/pvldb/vol9/p1493-scheuer.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000027,'SI2P: A Restaurant Recommendation System Using Preference Queries over Incomplete Information','1000000027','http://www.vldb.org/pvldb/vol9/p1509-miao.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000009,'Leveraging Lock Contention to Improve OLTP Application Performance','Abstract:Locking is one of the predominant costs in transaction processing. While much work has focused on designing efficient concurrency control mechanisms, not much has been done on understanding how transaction applications issue queries and leveraging application semantics to improve application performance. This paper presents QURO, a query-aware compiler that automatically reorders queries in transaction code to improve performance. Observing that certain queries within a transaction are more contentious than others as they require locking the same tuples as other concurrently executing transactions, QURO automatically changes the application such that contentious queries are issued as late as possible. We have evaluated QURO on various transaction benchmarks, and our results show that QURO-generated implementations can increase transaction throughput by up to 6.53x, while reduce transaction latency by up to 85%.','http://www.vldb.org/pvldb/vol9/p444-yan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000010,'BCC: Reducing False Aborts in Optimistic Concurrency Control with Low Cost for In-Memory Databases','Abstract:The Optimistic Concurrency Control (OCC) method has been commonly used for in-memory databases to ensure transaction serializability — a transaction will be aborted if its read set has been changed during execution. This simple criterion to abort transactions causes a large proportion of false positives, leading to excessive transaction aborts. Transactions aborted false-positively (i.e. false aborts) waste system resources and can significantly degrade system throughput (as much as 3.68x based on our experiments) when data contention is intensive. Modern in-memory databases run on systems with increasingly parallel hardware and handle workloads with growing concurrency. They must efficiently deal with data contention in the presence of greater concurrency by minimizing false aborts. This paper presents a new concurrency control method named Balanced Concurrency Control (BCC) which aborts transactions more carefully than OCC does. BCC detects data dependency patterns which can more reliably indicate unserializable transactions than the criterion used in OCC. The paper studies the design options and implementation techniques that can effectively detect data contention by identifying dependency patterns with low overhead. To test the performance of BCC, we have implemented it in Silo and compared its performance against that of the vanilla Silo system with OCC and two-phase locking (2PL). Our extensive experiments with TPC-W- like, TPC-C-like and YCSB workloads demonstrate that when data contention is intensive, BCC can increase transaction throughput by more than 3x versus OCC and more than 2x versus 2PL; meanwhile, BCC has comparable performance with OCC for workloads with low data contention.','http://www.vldb.org/pvldb/vol9/p504-yuan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000011,'Multi-Version Range Concurrency Control in Deuteronomy','Abstract:The Deuteronomy transactional key value store executes millions of serializable transactions/second by exploiting multi-version timestamp order concurrency control. However, it has not supported range operations, only individual record operations (e.g., create, read, update, delete). In this paper, we enhance our multi-version timestamp order technique to handle range concurrency and prevent phantoms. Importantly, we maintain high performance while respecting the clean separation of duties required by Deuteronomy, where a transaction component performs purely logical concurrency control (including range support), while a data component performs data storage and management duties. Like the rest of the Deuteronomy stack, our range technique manages concurrency information in a latch-free manner. With our range enhancement, Deuteronomy can reach scan speeds of nearly 250 million records/s (more than 27 GB/s) on modern hardware, while providing serializable isolation complete with phantom prevention.','http://www.vldb.org/pvldb/vol8/p2146-levandoski.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000012,'S-Store: Streaming Meets Transaction Processing','Abstract:Stream processing addresses the needs of real-time applications. Transaction processing addresses the coordination and safety of short atomic computations. Heretofore, these two modes of operation existed in separate, stove-piped systems. In this work, we attempt to fuse the two computational paradigms in a single system called S-Store. In this way, S-Store can simultaneously accommodate OLTP and streaming applications. We present a simple transaction model for streams that integrates seamlessly with a traditional OLTP system, and provides both ACID and stream-oriented guarantees. We chose to build S-Store as an extension of H-Store - an open-source, in-memory, distributed OLTP database system. By implementing S-Store in this way, we can make use ofthe transaction processing facilities that H-Store already provides, and we can concentrate on the additional features that are neededto support streaming. Similar implementations could be done usingother main-memory OLTP platforms. We show that we can actually achieve higher throughput for streaming workloads in S-Store than an equivalent deployment in H-Store alone. We also show howthis can be achieved within H-Store with the addition of a modest amount of new functionality. Furthermore, we compare S-Store to two state-of-the-art streaming systems, Esper and Apache Storm, and show how S-Store can sometimes exceed their performance while at the same time providing stronger correctness guarantee.','http://www.vldb.org/pvldb/vol8/p2134-meehan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000013,'S2RDF: RDF Querying with SPARQL on Spark','Abstract:RDF has become very popular for semantic data publishing due to its flexible and universal graph-like data model. Thus, the ever- increasing size of RDF data collections raises the need for scalable distributed approaches. We endorse the usage of existing infrastructures for Big Data processing like Hadoop for this purpose. Yet, SPARQL query performance is a major challenge as Hadoop is not intentionally designed for RDF processing. Existing approaches often favor certain query pattern shapes while performance drops significantly for other shapes. In this paper, we introduce a novel relational partitioning schema for RDF data called ExtVP that uses a semi-join based preprocessing, akin to the concept of Join Indices in relational databases, to efficiently minimize query input size regardless of its pattern shape and diameter. Our prototype system S2RDF is built on top of Spark and uses SQL to execute SPARQL queries over ExtVP. We demonstrate its superior performance in comparison to state of the art SPARQL-on-Hadoop approaches.','http://www.vldb.org/pvldb/vol9/p804-schaetzle.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000028,'Mixed-instance querying: a lightweight integration architecture for data journalism','1000000028','http://www.vldb.org/pvldb/vol9/p1513-bonaque.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000029,'Precision Performance Surgery for PostgreSQL — LLVM-based Expression Compilation, Just in Time','1000000029','http://www.vldb.org/pvldb/vol9/p1517-butterstein.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000030,'Partial Marking for Automated Grading of SQL Queries','1000000030','http://www.vldb.org/pvldb/vol9/p1541-chandra.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000014,'Inferray: fast in-memory RDF inference','Abstract:The advent of semantic data on the Web requires efficient reasoning systems to infer RDF and OWL data. The linked nature and the huge volume of data entail efficiency and scalability challenges when designing productive inference systems. This paper presents Inferray, an implementation of RDFS, ρdf, and RDFS-Plus inference with improved performance over existing solutions. The main features of Infer- ray are 1) a storage layout based on vertical partitioning that guarantees sequential access and efficient sort-merge join inference; 2) efficient sorting of pairs of 64-bit integers using ad-hoc optimizations on MSD radix and a custom counting sort; 3) a dedicated temporary storage to perform efficient graph closure computation. Our measurements on synthetic and real-world datasets show improvements over competitors on RDFS-Plus, and up to several orders of magnitude for transitivity closure.','http://www.vldb.org/pvldb/vol9/p468-subercaze.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000015,'RDF Graph Alignment with Bisimulation','Abstract:We investigate approaches to the alignment of two RDF triple stores inspired by the classical notion of graph bisimulation and relate this to metrics that describe the accuracy of the alignment. Alignment of RDF stores is essential in the understanding of evolving, curated ontologies. One needs to align nodes in sucessive versions that are given “blank’’ names; moreover, a new version may switch terminology from one external ontology to another. This means that some further alignment of the identifiers of the two external ontologies is useful. We first describe a form of bisimulation based on node colorings, in which the colors define equivalence classes, we then go on to describe an estimate of the accuracy of a coloring based on (a) the similarity of literal nodes and (b) on the “structural’’ similarity of internal nodes (URIs and blank nodes). The effectiveness of these method is tested on two evolving data sets: an ontology described in OWL and triple store derived from an evolving relational database. Both of these are curated resources for biologists.','http://www.vldb.org/pvldb/vol9/p1149-buneman.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000016,'Semantic SPARQL Similarity Search Over RDF Knowledge Graphs','Abstract:RDF knowledge graphs have attracted increasing attentions these years. However, due to the schema-free nature of RDF data, it is very difficult for users to have full knowledge of the underlying schema. Furthermore, the same kind of information can be represented in diverse graph fragments. Hence, it is a huge challenge to formulate complex SPARQL expressions by taking the union of all the possible structures. In this paper, we propose an effective framework to access the RDF repository even if users have no full knowledge of the underlying schema. Specifically, given a SPARQL query, the system could return as more answers that match the query based on the semantic similarity as possible. Interestingly, we propose a systematic method to mine diverse semantically equivalent structure patterns. More importantly, incorporating both structural and semantic similarities we are the first to propose a novel similarity measure, semantic graph edit distance. In order to improve the efficiency performance, we utilize the semantic summary graph to summarize the knowledge graph, which supports both high-level pruning and drill-down pruning. We also devise an effective lower bound based on the TA-style access to each of the candidate sets. Extensive experiments over real datasets confirm the effectiveness and efficiency of our approach.','http://www.vldb.org/pvldb/vol9/p840-zheng.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000017,'Clash of the Titans: MapReduce vs. Spark for Large Scale Data Analytics','Abstract:MapReduce and Spark are two very popular open source clustercomputing frameworks for large scale data analytics. These frame- works hide the complexity of task parallelism and fault-tolerance, by exposing a simple programming API to users. In this paper, we evaluate the major architectural components in MapReduce and Spark frameworks including: shuffle, execution model, and caching, by using a set of important analytic workloads. To conduct a detailed analysis, we developed two profiling tools: (1) We correlate the task execution plan with the resource utilization for both MapReduce and Spark, and visually present this correlation; (2) We provide a breakdown of the task execution time for in-depth analysis. Through detailed experiments, we quantify the performance differences between MapReduce and Spark. Furthermore, we attribute these performance differences to different componentswhich are architected differently in the two frameworks. We fur-ther expose the source of these performance differences by usinga set of micro-benchmark experiments. Overall, our experiments show that Spark is about2:5x,5x, and5x faster than MapReduce, for Word Count, k-means, and PageRank, respectively. The main causes of these speedups are the efficiency of the hash-based aggregation component for combine, as well as reduced CPU and disk overheads due to RDD caching in Spark. An exception to this is the Sort workload, for which MapReduce is 2x faster than Spark.We show that MapReduce’s execution model is more efficient for shuffling data than Spark, thus making Sort run faster on MapReduce.','http://www.vldb.org/pvldb/vol8/p2110-shi.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000018,'Compressed Linear Algebra for Large-Scale Machine Learning [Best Paper Award Winner]','Abstract:Large-scale machine learning (ML) algorithms are often iterative with repeated read-only data access and I/O-bound matrix- vector multiplications to converge to an optimal model. It is crucial for performance to fit the data into single-node or distributed main memory. General-purpose, heavy- and lightweight compression techniques struggle to achieve both good compression ratios and fast decompression speed to enable blockwise uncompressed operations. Hence, we initiate work on compressed linear algebra (CLA), in which lightweight database compression techniques are applied to matrices and then linear algebra operations such as matrix-vector multiplication are executed directly on the compressed representations. We contribute effective column compression schemes, cache-conscious operations, and an efficient sampling-based compression algorithm. Our experiments show that CLA achieves in-memory operation performance close to the uncompressed case and good compression ratios that allow us to fit larger datasets into available memory. We thereby obtain significant end-to-end performance improvements up to 26x or reduced memory requirements.','http://www.vldb.org/pvldb/vol9/p960-elgohary.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000031,'Squall: Scalable Real-time Analytics','1000000031','http://www.vldb.org/pvldb/vol9/p1553-vitorovic.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000032,'LocationSpark: A Distributed In-Memory Data Management System for Big Spatial Data','1000000032','http://www.vldb.org/pvldb/vol9/p1565-tang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000033,'Amoeba: A Shape changing Storage System for Big Data','1000000033','http://www.vldb.org/pvldb/vol9/p1569-shanbhag.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000034,'F: Regression Models over Factorized Views','1000000034','http://www.vldb.org/pvldb/vol9/p1573-olteanu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000019,'PIXIDA: Optimizing Data Parallel Jobs in Wide-Area Data Analytics.','Abstract:In the era of global-scale services, big data analytical queries are often required to process datasets that span multiple data centers (DCs). In this setting, cross-DC bandwidth is often the scarcest, most volatile, and/or most expensive resource. However, current widely deployed big data analytics frameworks make no attempt to minimize the traffic traversing these links. In this paper, we present PIXIDA, a scheduler that aims to minimize data movement across resource constrained links. To achieve this, we introduce a new abstraction called SILO, which is key to modeling PIXIDA’s scheduling goals as a graph partitioning problem. Furthermore, we show that existing graph partitioning problem formulations do not map to how big data jobs work, causing their solutions to miss opportunities for avoiding data movement. To address this, we formulate a new graph partitioning problem and propose a novel algorithm to solve it. We integrated PIXIDA in Spark and our experiments show that, when compared to existing schedulers, PIXIDA achieves a significant traffic reduction of up to ~9× on the aforementioned links.','http://www.vldb.org/pvldb/vol9/p72-kloudas.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000020,'Cümülön: Matrix-Based Data Analytics in the Cloud with Spot Instances','Abstract:We describe Cumulon, a system aimed at helping users develop and deploy matrix-based data analysis programs in a public cloud. A key feature of Cumulon is its end-to-end support for the so-called spot instances—-machines whose market price fluctuates over time but is usually much lower than the regular fixed price. A user sets a bid price when acquiring spot instances, and loses them as soon as the market price exceeds the bid price. While spot instances can potentially save cost, they are difficult to use effectively, and run the risk of not finishing work while costing more. Cumulon provides a highly elastic computation and storage engine on top of spot instances, and offers automatic cost-based optimization of execution, deployment, and bidding strategies. Cumulon further quantifies how the uncertainty in the market price translates into the cost uncertainty of its recommendations, and allows users to specify their risk tolerance as an optimization constraint.','http://www.vldb.org/pvldb/vol9/p156-huang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000021,'1000000021','Abstract:Data infrastructure lies at the core of Flipkart technology stack. The e-commerce business not only deals with huge traffic but the kind of data it deals with, is widely varied too. Whether it is user behavioural or transactional data of millions of customers or catalog with millions of products that being offered by thousands of sellers, or logistics network that covers the entire nation, the challenge to effectively derive value and build data enabled products lies in all aspects of technology stack. Data infrastructure at Flipkart is a hosted central platform as a service that enables realtime systemic decision making and business intelligence across all product lines at Flipkart. In this session, I will talk about the technical challenges in building this highly scalable and self-serve data platform that manages more than petabyte of data with thousand of realtime business critical data streams. I will also talk about the key technologies and platform abstractions that enable self serve realtime ETL and querying capabilities on Hadoop as well as on traditional data warehouses in seamless fashion.','1000000021');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000022,'Database System Support of Simulation Data','Abstract:Supported by increasingly efficient HPC infra-structure, numerical simulations are rapidly expanding to fields such as oil and gas, medicine and meteorology. As simulations become more precise and cover longer periods of time, they may produce files with terabytes of data that need to be efficiently analyzed. In this paper, we investigate techniques for managing such data using an array DBMS. We take advantage of multidimensional arrays that nicely models the dimensions and variables used in numerical simulations. However, a naive approach to map simulation data files may lead to sparse arrays, impacting query response time, in particular, when the simulation uses irregular meshes to model its physical domain. We propose efficient techniques to map coordinate values in numerical simulations to evenly distributed cells in array chunks with the use of equi-depth histograms and space-filling curves. We implemented our techniques in SciDB and, through experiments over real-world data, compared them with two other approaches: row- store and column-store DBMS. The results indicate that multidimensional arrays and column-stores are much faster than a traditional row-store system for queries over a larger amount of simulation data. They also help identifying the scenarios where array DBMSs are most efficient, and those where they are outperformed by column-stores.','http://www.vldb.org/pvldb/vol9/p1329-lustosa.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000023,'Hybrid Row-Column Partitioning in Teradata','Abstract:Data partitioning is an indispensable ingredient of database systems due to the performance improvement it can bring to any given mixed workload. Data can be partitioned horizontally or vertically. While some commercial proprietary and open source database systems have one flavor or mixed flavors of these partitioning forms, Teradata Database offers a unique hybrid row-column store solution that seamlessly combines both of these partitioning schemes. The key feature of this hybrid solution is that either row, column, or combined partitions are all stored and handled in the same way internally by the underlying file system storage layer. In this paper, we present the main characteristics and explain the implementation approach of Teradata’s row-column store. We also discuss query optimization techniques applicable specifically to partitioned tables. Furthermore, we present a performance study that demonstrates how different partitioning options impact the performance of various queries.','http://www.vldb.org/pvldb/vol9/p1353-alKateb.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000024,'Consistent Regions: Guaranteed Tuple Processing in IBM Streams','Abstract:Guaranteed tuple processing has become critically important for many streaming applications. This paper describes how we enabled IBM Streams, an enterprise-grade stream processing system, to provide data processing guarantees. Our solution goes from language-level abstractions to a runtime protocol. As a result, with a couple of simple annotations at the source code level, IBM Streams developers can define consistent regions, allowing any subgraph of their streaming application to achieve guaranteed tuple processing. At runtime, a consistent region periodically executes a variation of the Chandy-Lamport snapshot algorithm to establish a consistent global state for that region. The coupling of consistent states with data replay enables guaranteed tuple processing.','http://www.vldb.org/pvldb/vol9/p1341-jacquesSilva.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000025,'Vita: A Versatile Toolkit for Generating Indoor Mobility Data for Real-World Buildings','1000000025','http://www.vldb.org/pvldb/vol9/p1453-li.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000035,'Magellan: Toward Building Entity Matching Management Systems over Data Science Stacks','1000000035','http://www.vldb.org/pvldb/vol9/p1581-konda.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000036,'Schema Independent and Scalable Relational Learning By Castor','1000000036','http://www.vldb.org/pvldb/vol9/p1589-picado.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000037,'AD-WIRE: Add-on for Web Item Reviewing System','1000000037','http://www.vldb.org/pvldb/vol9/p1593-kannapalli.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000038,'1000000038','1000000038','#WedF1115T1245R10');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000039,'RUMA has it: Rewired User-space Memory Access is Possible!','Abstract:Memory management is one of the most boring topics in database research. It plays a minor role in tasks like free-space management or efficient space usage. Here and there we also realize its impact on database performance when worrying about NUMA-aware memory allocation, data compacting, snapshotting, and defragmentation. But, overall, let’s face it: the entire topic sounds as exciting as ‘garbage collection’ or ‘debugging a program for memory leaks’. What if there were a technique that would promote memory management from a third class helper thingie to a first class citizen in algorithm and systems design? What if that technique turned the role of memory management in a database system (and any other data processing system) upside-down? What if that technique could be identified as a key for re-designing various core algorithms with the effect of outperforming existing state-of-the-art methods considerably? Then we would write this paper. We introduce RUMA: Rewired User-space Memory Access. It allows for physiological data management, i.e. we allow developers to freely rewire the mappings from virtual to physical memory (in user space) while at the same time exploiting the virtual memory support offered by hardware and operating system. We show that fundamental database building blocks such as array operations, partitioning, sorting, and snapshotting benefit strongly from RUMA.','http://www.vldb.org/pvldb/vol9/p768-schuhknecht.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000040,'Asynchronous Memory Access Chaining','Abstract:In-memory databases rely on pointer-intensive data structures to quickly locate data in memory. A single lookup operation in such data structures often exhibits long-latency memory stalls due to dependent pointer dereferences. Hiding the memory latency by launching additional memory accesses for other lookups is an effective way of improving performance of pointer- chasing codes (e.g., hash table probes, tree traversals). The ability to exploit such inter-lookup parallelism is beyond the reach of modern out-of-order cores due to the limited size of their instruction window. Instead, recent work has proposed software prefetching techniques that exploit inter-lookup parallelism by arranging a set of independent lookups into a group or a pipeline, and navigate their respective pointer chains in a synchronized fashion. While these techniques work well for highly regular access patterns, they break down in the face of irregularity across lookups. Such irregularity includes variable-length pointer chains, early exit, and read/write dependencies. This work introduces Asynchronous Memory Access Chaining (AMAC), a new approach for exploiting inter-lookup parallelism to hide the memory access latency. AMAC achieves high dynamism in dealing with irregularity across lookups by maintaining the state of each lookup separately from that of other lookups. This feature enables AMAC to initiate a new lookup as soon as any of the in-flight lookups complete. In contrast, the static arrangement of lookups into a group or pipeline in existing techniques precludes such adaptivity. Our results show that AMAC matches or outperforms state-of-the-art prefetching techniques on regular access patterns, while delivering up to 2.3x higher performance under irregular data structure lookups. AMAC fully utilizes the available micro-architectural resources, generating the maximum number of memory accesses allowed by hardware in both single- and multi-threaded execution modes.','http://www.vldb.org/pvldb/vol9/p252-kocberber.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000041,'WarpLDA: a Cache Efficient O(1) Algorithm for Latent Dirichlet Allocation','Abstract:Developing efficient and scalable algorithms for Latent Dirichlet Allocation (LDA) is of wide interest for many applications. Previous work has developed an O(1) Metropolis-Hastings (MH) sampling method for each token. However, its performance is far from being optimal due to frequent cache misses caused by random accesses to the parameter matrices. In this paper, we first carefully analyze the memory access behavior of existing algorithms for LDA by cache locality at document level. We then develop WarpLDA, which achieves O(1) time complexity per-token and fits the randomly accessed memory per-document in the L3 cache. Our empirical results in a wide range of testing conditions demonstrate that WarpLDA is consistently 5-15x faster than the state-of-the-art MH-based LightLDA, and is faster than the state-of-the-art sparsity aware F+LDA in most settings. Our WarpLDA learns a million topics from 639 millions of documents in only five hours at an unprecedented throughput of 11 billion tokens per second.','http://www.vldb.org/pvldb/vol9/p744-chen.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000042,'Lifetime-Based Memory Management for Distributed Data Processing Systems','Abstract:In-memory caching of intermediate data and eager combining of data in shuffle buffers have been shown to be very effective in minimizing the re-computation and I/O cost in distributed data processing systems like Spark and Flink. However, it has also been widely reported that these techniques would create a large amount of long-living data objects in the heap, which may quickly saturate the garbage collector, especially when handling a large dataset, and hence would limit the scalability of the system. To eliminate this problem, we propose a lifetime-based memory management framework, which, by automatically analyzing the user-defined functions and data types, obtains the expected lifetime of the data objects, and then allocates and releases memory space accordingly to minimize the garbage collection overhead. In particular, we present Deca, a concrete implementation of our proposal on top of Spark, which transparently decomposes and groups objects with similar lifetimes into byte arrays and releases their space altogether when their lifetimes come to an end. An extensive experimental study using both synthetic and real datasets shows that, in comparing to Spark, Deca is able to 1) reduce the garbage collection time by up to 99.9%, 2) to achieve up to 22.7x speed up in terms of execution time in cases without data spilling and 41.6x speedup in cases with data spilling, and 3) to consume up to 46.6% less memory.','http://www.vldb.org/pvldb/vol9/p936-lu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000048,'LEOPARD: Lightweight Edge-Oriented Partitioning and Replication for Dynamic Graphs','Abstract:This paper introduces a dynamic graph partitioning algorithm, designed for large, constantly changing graphs. We propose a partitioning framework that adjusts on the fly as the graph structure changes. We also introduce a replication algorithm that is tightly integrated with the partitioning algorithm, which further reduces the number of edges cut by the partitioning algorithm. Even though the proposed approach is handicapped by only taking into consideration local parts of the graph when reassigning vertices, extensive evaluation shows that the proposed approach maintains a quality partitioning over time, which is comparable at any point in time to performing a full partitioning from scratch using a state-the-art static graph partitioning algorithm such as METIS. Furthermore, when vertex replication is turned on, edge-cut can improve by an order of magnitude.','http://www.vldb.org/pvldb/vol9/p540-huang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000043,'Cleaning Timestamps with Temporal Constraints','Abstract:Timestamps are often found to be dirty in various scenarios, e.g., in distributed systems with clock synchronization problems or unreliable RFID readers. Without cleaning the imprecise timestamps, temporal-related applications such as provenance analysis or pattern queries are not reliable. To evaluate the correctness of timestamps, temporal constraints could be employed, which declare the distance restrictions between timestamps. Guided by such constraints on timestamps, in this paper, we study a novel problem of repairing inconsistent timestamps that do not conform to the required temporal constraints. Following the same line of data repairing, the timestamp repairing problem is to minimally modify the timestamps towards satisfaction of temporal constraints. This problem is practically challenging, given the huge space of possible timestamps. We tackle the problem by identifying a concise set of promising candidates, where an optimal repair solution can always be found. Repair algorithms with efficient pruning are then devised over the identified candidates. Experiments on real datasets demonstrate the superiority of our proposal compared to the state-of-the-art approaches.','http://www.vldb.org/pvldb/vol9/p708-song.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000044,'Repairing Data through Regular Expressions','Abstract:Since regular expressions are often used to detect errors in sequences such as strings or date, it is natural to use it for data repair. Motivated by this, we propose a data repair method based on regular expression to make the input sequence data obey the given regular expression with minimal revisions. The proposed method contains two steps, sequence repair and token value repair. For sequence repair, we propose the Regular-expression-based Structural Repair algorithm (RSR in short). RSR algorithm is a dynamic programming algorithm that utilizes Nondeterministic Finite Automata (NFA) to calculate the edit distance between the prefix of the input string and partial pattern regular expression with time complexity $O(mn^2)$ and space complexity $O(mn)$ where $m$ is the number of NFA’s edge and $n$ is the input string length. We also give an optimization to achieve high performance. For token value repair, we combine the edit-distance-based method and associate rules by a unified argument for the selection of the two methods. Experimental results on both real and synthetic data show that the proposed method could repair the data effectively and efficiently.','http://www.vldb.org/pvldb/vol9/p432-li.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000045,'Combining Quantitative and Logical Data Cleaning','Abstract:Quantitative data cleaning relies on the use of statistical methods to identify and repair data quality problems while logical data cleaning tackles the same problems using various forms of logical reasoning over declarative dependencies. Each of these approaches has its strengths: the logical approach is able to capture subtle data quality problems using sophisticated dependencies, while the quantitative approach excels at ensuring that the repaired data has desired statistical properties. We propose a novel framework within which these two approaches can be used synergistically to combine their respective strengths. We instantiate our framework using (i) metric functional dependencies, a type of dependency that generalizes functional dependencies (FDs) to identify inconsistencies in domains where only large differences in metric data are considered to be a data quality problem, and (ii) repairs that modify the inconsistent data so as to minimize statistical distortion, measured using the Earth Mover’s Distance. We show that the problem of computing a statistical distortion minimal repair is NP-hard. Given this complexity, we present an efficient algorithm for finding a minimal repair that has a small statistical distortion using EMD computation over semantically related attributes. To identify semantically related attributes, we present a sound and complete axiomatization and an efficient algorithm for testing implication of metric FDs. While the complexity of inference for some other FD extensions is co-NP complete, we show that the inference problem for metric FDs remains linear, as in traditional FDs. We prove that every instance that can be generated by our repair algorithm is set-minimal (with no unnecessary changes). Our experimental evaluation demonstrates that our techniques obtain a considerably lower statistical distortion than existing repair techniques, while achieving similar levels of efficiency.','http://www.vldb.org/pvldb/vol9/p300-prokoshyna.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000046,'Temporal Rules Discovery for Web Data Cleaning','Abstract:Declarative rules, such as functional dependencies, are widely used for cleaning data. Several systems take them as input for detecting errors and computing a “clean” version of the data. To support domain experts, in specifying these rules, several tools have been proposed to profile the data and mine rules. However, existing discovery techniques have traditionally ignored the time dimension. Recurrent events, such as persons reported in locations, have a duration in which they are valid, and this duration should be part of the rules or the cleaning process would simply fail. In this work, we study the rule discovery problem for temporal web data. Such a discovery process is challenging because of the nature of web data; extracted facts are (i) sparse over time, (ii) reported with delays, and (iii) often reported with errors over the values because of inaccurate sources or non robust extractors. We handle these challenges with a new discovery approach that is more robust to noise. Our solution uses machine learning methods, such as association measures and outlier detection, for the discovery of the rules, together with an aggressive repair of the data in the mining step itself. Our experimental evaluation over real-world data from Recorded Future, an intelligence company that monitors over 700K Web sources, shows that temporal rules improve the quality of the data with an increase of the average precision in the cleaning process from 0.37 to 0.84, and a 40% relative increase in the average F-measure.','http://www.vldb.org/pvldb/vol9/p336-abedjan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000047,'I/O Efficient ECC Graph Decomposition via Graph Reduction','Abstract:The problem of computing k-edge connected components (k- ECCs) of a graph G for a specific k is a fundamental graph problem and has been investigated recently. In this paper, we study the problem of ECC decomposition, which computes the k-ECCs of a graph G for all k values. ECC decomposition can be widely applied in a variety of applications such as graph-topology analysis, community detection, Steiner component search, and graph visualization. A straightforward solution for ECC decomposition is to apply the existing k-ECC computation algorithm to compute the k-ECCs for all k values. However, this solution is not applicable to large graphs for two challenging reasons. First, all existing k-ECC computation algorithms are highly memory intensive due to the complex data structures used in the algorithms. Second, the number of possible k values can be very large, resulting in a high computational cost when each k value is independently considered. In this paper, we address the above challenges, and study I/O efficient ECC decomposition via graph reduction. We introduce two elegant graph reduction operators which aim to reduce the size of the graph loaded in memory while preserving the connectivity information of a certain set of edges to be computed for a specific k. We also propose three novel I/O efficient algorithms, Bottom-Up, Top-Down, and Hybrid, that explore the k values in different orders to reduce the redundant computations between different k values. We analyze the I/O and memory costs for all proposed algorithms. In our experiments, we evaluate our algorithms using seven real large datasets with various graph properties, one of which contains 1.95 billion edges. The experimental results show that our proposed algorithms are scalable and efficient.','http://www.vldb.org/pvldb/vol9/p516-yuan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000049,'Towards Maximum Independent Sets on Massive Graphs','Abstract:Maximum independent set (MIS) is a fundamental problem in graph theory and it has important applications in many areas such as social network analysis, graphical information systems and coding theory. The problem is NP-hard, and there has been numerous studies on its approximate solutions. While successful to a certain degree, the existing methods require memory space at least linear in the size of the input graph. This has become a serious concern in view of the massive volume of today’s fast-growing graphs. In this paper, we study the MIS problem under the semi-external setting, which assumes that the main memory can accommodate all vertices of the graph but not all edges. We present a greedy algorithm and a general vertex-swap framework, which swaps vertices to incrementally increase the size of independent sets. Our solutions require only few sequential scans of graphs on the diskfile, thus enabling in-memory computation without costly random disk accesses. Experiments on large-scale datasets show that our solutions are able to compute a large independent set for a massive graph with 59 million vertices and 151 million edges using a commodity machine, with a memory cost of 469MB and a time cost of three minutes, while yielding an approximation ratio that is around99% of the theoretical optimum.','http://www.vldb.org/pvldb/vol8/p2122-lu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000050,'Weaver: A High-Performance, Transactional Graph Database Based on Refinable Timestamps','Abstract:Graph databases have become an increasingly common infrastructure component. Yet existing systems either operate on offline snapshots, provide weak consistency guarantees, or use expensive concurrency control techniques that limit performance. In this paper, we introduce a new distributed graph database, called Weaver, which enables efficient, transactional graph analyses as well as strictly serializable ACID transactions on dynamic graphs. The key insight that allows Weaver to combine strict serializability with horizontal scalability and high performance is a novel request ordering mechanism called refinable timestamps. This technique couples coarse-grained vector timestamps with a fine-grained timeline oracle to pay the overhead of strong consistency only when needed. Experiments show that Weaver enables a Bitcoin blockchain explorer that is 8x faster than Blockchain.info, and achieves 12x higher throughput than the Titan graph database on social network workloads and 4x lower latency than GraphLab on offline graph traversal workloads.','http://www.vldb.org/pvldb/vol9/p852-dubey.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000051,'1000000051','Abstract:Public clouds pose challenges (reliability, IO latency etc) as well as provide opportunities (elasticity, pricing models) for large volume data processing. In this talk, I will present the lessons learnt and features (auto-scaling, hybrid clusters with spot nodes, caching etc) implemented in Qubole’s data service to provide an efficient (cost & performance) and a reliable data processing service in the top public clouds. QDS allows users to run batch or ETL, interactive and streaming workloads. The technologies used for each of these workloads are different. Apache Hive, Apache Hadoop M/R and Apache Pig are popular for batch workloads. Presto & SparkSQL are used for interactive analytic queries. Apache Spark is used for machine learning. Spark Streaming is used for streaming workloads. Apache HBase is the K-V store. As such the design and architecture of each of these technologies is very different. We’ve focussed on each of these technologies separately and augmentedthem to run better on the cloud as well as a service. This talk will iterate through each of these technologies, list areas where the open source distribution has gaps and how QDS has closed these gaps. Since these technologies are representative in their class, the features implemented in QDS is broadly applicable. I will also provide real-world metrics for performance gains and cost benefits where applicable.','1000000051');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000052,'dmapply: A functional primitive to express distributed machine learning algorithms in R','Abstract:Due to R’s popularity as a data-mining tool, many distributed systems expose an R-based API to users who need to build a distributed application in R. As a result, data scientists have to learn to use different interfaces such as RHadoop, SparkR, Revolution R’s ScaleR, and HPE’s Distributed R. Unfortunately, these interfaces are custom, non-standard, and difficult to learn. Not surprisingly, R applications written in one framework do not work in another, and each backend infrastructure has spent redundant effort in implementing distributed machine learning algorithms. Working with the members of R-core, we have created ddR (Distributed Data structures in R), a unified system that works across different distributed frameworks. In ddR, we introduce a novel programming primitive called dmapply that executes functions on distributed data structures. The dmapply primitive encapsulates different computation patterns: from function and data broadcast to pair-wise communication. We show that dmapply is powerful enough to express algorithms that fit the statistical query model, which includes many popular machine learning algorithms, as well as applications written in MapReduce. We have integrated ddR with many backends, such as R’s single-node parallel framework, multi-node SNOW framework, Spark, and HPE Distributed R, with few or no modifications to any of these systems. We have also implemented multiple machine learning algorithms which are not only portable across different distributed systems, but also have performance comparable to the “native” implementations on the backends. We believe that ddR will standardize distributed computing in R, just like the SQL interface has standardized how relational data is manipulated.','http://www.vldb.org/pvldb/vol9/p1293-ma.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000053,'SystemML: Declarative Machine Learning on Spark','Abstract:The rising need for custom machine learning (ML) algorithms and the growing data sizes that require the exploitation of distributed, data-parallel frameworks such as MapReduce or Spark, pose significant productivity challenges to data scientists. Apache SystemML addresses these challenges through declarative ML by (1) increasing the productivity of data scientists as they are able to express custom algorithms in a familiar domain-specific language covering linear algebra primitives and statistical functions, and (2) transparently running these ML algorithms on distributed, data-parallel frameworks by applying cost-based compilation techniques to generate efficient, low-level execution plans with in-memory single-node and large-scale distributed operations. This paper describes SystemML on Apache Spark, end to end, including insights into various optimizer and runtime techniques as well as performance characteristics. We also share lessons learned from porting SystemML to Spark and declarative ML in general. Finally, SystemML is open-source, which allows the database community to leverage it as a testbed for further research.','http://www.vldb.org/pvldb/vol9/p1425-boehm.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000054,'Not for the Timid: On the Impact of Aggressive Over-booking in the Cloud','Abstract:To lower hosting costs and service prices, database-as-a-service (DBaaS) providers strive to maximize cluster utilization without negatively affecting their users’ service experience. Some of the most effective approaches for increasing service efficiency result in the over-booking of the cluster with user databases. For instance, one approach is to reclaim cluster capacity from a database when it is idle, temporarily re-using the capacity for some other purpose, and over-booking the cluster’s resources. Such approaches are largely driven by policies that determine when it is prudent to temporarily reclaim capacity from an idle database. In this paper, we examine policies that inherently tune the system’s idle sensitivity. Increased sensitivity to idleness leads to aggressive over-booking while the converse leads to conservative reclamation and lower utilization levels. Aggressive over-booking also incurs a “reserve” capacity cost (for when we suddenly “owe” capacity to previously idle databases.) We answer these key questions in this paper: (1) how to find a “good” resource reclamation policy for a given DBaaS cluster of users; and (2) how to forecast the needed near-term reserve capacity. To help us answer these questions, we used production user activity traces from Azure SQL DB and built models of an over-booking mechanism. We show that choosing the right policy can substantially boost the efficiency of the service, facilitating lower service prices via lower amortized infrastructure costs.','http://www.vldb.org/pvldb/vol9/p1245-lang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000055,'ArchimedesOne: Query Processing over Probabilistic Knowledge Bases','1000000055','http://www.vldb.org/pvldb/vol9/p1461-zhou.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000056,'Rudolf: Interactive Rule Refinement System for Fraud Detection','1000000056','http://www.vldb.org/pvldb/vol9/p1465-milo.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000057,'Ziggy: Characterizing Query Results for Data Explorers','1000000057','http://www.vldb.org/pvldb/vol9/p1473-sellam.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000058,'Blaeu: Mapping and Navigating Large Tables with Cluster Analysis','1000000058','http://www.vldb.org/pvldb/vol9/p1477-sellam.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000059,'A Demonstration of VisDPT: Visual Exploration of Differentially Private Trajectories','1000000059','http://www.vldb.org/pvldb/vol9/p1489-he.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000060,'YASK: A Why-Not Question Answering Engine for Spatial Keyword Query Services','1000000060','http://www.vldb.org/pvldb/vol9/p1501-chen.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000061,'Exploring Databases via Reverse Engineering Ranking Queries with PALEO','1000000061','http://www.vldb.org/pvldb/vol9/p1525-panev.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000062,'ExRank: An Exploratory Ranking Interface','1000000062','http://www.vldb.org/pvldb/vol9/p1529-bespinyowong.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000063,'NLProv: Natural Language Provenance','1000000063','http://www.vldb.org/pvldb/vol9/p1537-deutch.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000064,'Towards Personalized Maps: Mining User Preferences from Geo-textual Data','1000000064','http://www.vldb.org/pvldb/vol9/p1545-zhao.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000065,'A System for Region Search and Exploration','1000000065','http://www.vldb.org/pvldb/vol9/p1549-feng.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000066,'SigmaKB: Multiple Probabilistic Knowledge Base Fusion','1000000066','http://www.vldb.org/pvldb/vol9/p1577-rodriguez.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000067,'Collaborative Crowdsourcing with Crowd4U','1000000067','http://www.vldb.org/pvldb/vol9/p1497-ikeda.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000068,'1000000068','1000000068','#WedF200T330R15');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000069,'Parallel Evaluation of Multi-Semi-Joins','Abstract:While services such as Amazon AWS make computing power abundantly available, adding more computing nodes can incur high costs in, for instance, pay-as-you-go plans while not always significantly improving the net running time (aka wall-clock time) of queries. In this work, we provide algorithms for parallel evaluation of SGF queries in MapReduce that optimize total time, while retaining low net time. Not only can SGF queries specify all semi-join reducers, but also more expressive queries involving disjunction and negation. Since SGF queries can be seen as Boolean combinations of (potentially nested) semi-joins, we introduce a novel multi-semi-join (MSJ) MapReduce operator that enables the evaluation of a set of semi-joins in one job. We use this operator to obtain parallel query plans for SGF queries that outvalue sequential plans w.r.t. net time and provide additional optimizations aimed at minimizing total time without severely affecting net time. Even though the latter optimizations are NP-hard, we present effective greedy algorithms. Our experiments, conducted using our own implementation Gumbo on top of Hadoop, confirm the usefulness of parallel query plans, and the effectiveness and scalability of our optimizations, all with a significant improvement over Pig and Hive.','http://www.vldb.org/pvldb/vol9/p732-daenen.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000070,'Lightning Fast and Space Efficient Inequality Joins','Abstract:Inequality joins, which join relational tables on inequality conditions, are used in various applications. While there have been a wide range of optimization methods for joins in database systems, from algorithms such as sort-merge join and band join, to various indices such as B+-tree, R –tree and Bitmap, inequality joins have received little attention and queries containing such joins are usually very slow. In this paper, we introduce fast inequality join algorithms. We put columns to be joined in sorted arrays and we use permutation arrays to encode positions of tuples in one sorted array w.r.t. the other sorted array. In contrast to sort-merge join, we use space efficient bit-arrays that enable optimizations, such as Bloom filter indices, for fast computation of the join results. We have implemented a centralized version of these algorithms on top of PostgreSQL, and a distributed version on top of Spark SQL. We have compared against well known optimization techniques for inequality joins and show that our solution is more scalable and several orders of magnitude faster.','http://www.vldb.org/pvldb/vol8/p2074-khayyat.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000071,'MQJoin: Efficient Shared Execution of Main-Memory Joins','Abstract:Database architectures typically process queries one-at-a-time, executing concurrent queries in independent execution contexts. Often, such a design leads to unpredictable performance and poor scalability. One approach to circumvent the problem is to take advantage of sharing opportunities across concurrently running queries. In this paper we propose Many-Query Join (MQJoin), a novel method for sharing the execution of a join that can efficiently deal with hundreds of concurrent queries. This is achieved by minimizing redundant work and making efficient use of main-memory bandwidth and multi-core architectures. Compared to existing proposals, MQJoin is able to efficiently handle larger workloads regardless of the schema by exploiting more sharing opportunities. We also compared MQJoin to two commercial main-memory column-store databases. For a TPC-H based workload, we show that MQJoin provides 2-5x higher throughput with significantly more stable response times.','http://www.vldb.org/pvldb/vol9/p480-makreshanski.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000072,'Incremental Computation of Common Windowed Holistic Aggregates','Abstract:Windowed aggregates are a SQL 2003 feature for computing aggregates in moving windows. Common examples include cumulative sums, local maxima and moving quantiles. With the advent over the last few years of easy-to-use data analytics tools, these functions are becoming widely used by more and more analysts, but some aggregates (such as local maxima) are much easier to compute than others (such as moving quantiles). Nevertheless, aggregates that are more difficult to compute, like quantile and mode (or “most frequent”) provide more appropriate statistical summaries in the common situation when a distribution is not Gaussian and are an essential part of a data analysis toolkit. Recent work has described highly efficient windowed implementations of the most common aggregate function categories, including distributive aggregates such as cumulative sums and algebraic aggregates such as moving averages. But little has been published on either the implementation or the performance of the more complex holistic windowed aggregates such as moving quantiles. This paper provides the first in-depth study of how to efficiently implement the three most common holistic windowed aggregates (count distinct, mode and quantile) by reusing the aggregate state between consecutive frames. Our measurements show that these incremental algorithms generally achieve improvements of about 10× over naive implementations, and that they can effectively detect when to reset the internal state during extreme frame variation.','http://www.vldb.org/pvldb/vol9/p1221-wesley.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000073,'Oblivious RAM: A Dissection and Experimental Evaluation [Experiments and Analyses]','Abstract:Many companies choose the cloud as their data and IT infrastructure platform. The remote access of the data brings the issue of trust. Despite the use of strong encryption schemes, adversaries can still learn valuable information regarding encrypted data by observing the data access patterns. To that end, one can hide the access patterns, which may leak sensitive information, using Oblivious RAMs (ORAMs). Numerous works have proposed different ORAM constructions, but they have never been thoroughly compared against and tested on large databases. There are also no open source implementation of these schemes. These limitations make it difficult for researchers and practitioners to choose and adopt a suitable ORAM for their applications. To address this issue, we provide a thorough study over several practical ORAM constructions, and implement them under the same library. We perform extensive experiments to provide insights into their performance characteristics with respect to efficiency, scalability, and communication cost.','http://www.vldb.org/pvldb/vol9/p1113-chang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000074,'Design of Policy-Aware Differentially Private Algorithms','Abstract:The problem of designing error optimal differentially private algorithms is well studied. Recent work applying differential privacy to real world settings have used variants of differential privacy that appropriately modify the notion of neighboring databases. The problem of designing error optimal algorithms for such variants of differential privacy is open. In this paper, we show a novel transformational equivalence result that can turn the problem of query answering under differential privacy with a modified notion of neighbors to one of query answering under standard differential privacy, for a large class of neighbor definitions. We utilize the Blowfish privacy framework that generalizes differential privacy. Blowfish uses a policy graph to instantiate different notions of neighboring databases. We show that the error incurred when answering a workload W on a database x under a Blowfish policy graph G is identical to the error required to answer a transformed workload f_G(W) on database g_G(x) under standard differential privacy, where f_G and g_G are linear transformations based on G. Using this result, we develop error efficient algorithms for releasing histograms and multidimensional range queries under different Blowfish policies. We believe the tools we develop will be useful for finding mechanisms to answer many other classes of queries with low error under other policy graphs.','http://www.vldb.org/pvldb/vol9/p264-haney.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000075,'Behavior Query Discovery in System-Generated Temporal Graphs','Abstract:Computer system monitoring generates huge amounts of logs that record the interaction of system entities. How to query such data to better understand system behaviors and identify potential system risks and malicious behaviors becomes a challenging task for system administrators due to the dynamics and heterogeneity of the data. System monitoring data are essentially heterogeneous temporal graphs with nodes being system entities and edges being their interactions over time. Given the complexity of such graphs, it becomes time-consuming for system administrators to manually formulate useful queries in order to examine abnormal activities, attacks, and vulnerabilities in computer systems. In this work, we investigate how to query temporal graphs and treat query formulation as a discriminative temporal graph pattern mining problem. We introduce TGMiner to mine discriminative patterns from system logs, and these patterns can be taken as templates for building more complex queries. TGMiner leverages temporal information in graphs to prune graph patterns that share similar growth trend without compromising pattern quality. Experimental results on real system data show that TGMiner is 6-32 times faster than baseline methods. The discovered patterns were verified by system experts; they achieved high precision (97%) and recall (91%).','http://www.vldb.org/pvldb/vol9/p240-zong.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000076,'Query Reranking As A Service','Abstract:The ranked retrieval model has rapidly become the de facto way for search query processing in client-server databases, especially those on the web. Despite of the extensive efforts in the database community on designing better ranking functions/mechanisms, many such databases in practice still fail to address the diverse and sometimes contradicting preferences of users on tuple ranking, perhaps (at least partially) due to the lack of expertise and/or motivation for the database owner to design truly effective ranking functions. This paper takes a different route on addressing the issue by defining a novel {\em query reranking problem}, i.e., we aim to design a third-party service that uses nothing but the public search interface of a client-server database to enable the on-the-fly processing of queries with any user-specified ranking functions (with or without selection conditions), no matter if the ranking function is supported by the database or not. We analyze the worst-case complexity of the problem and introduce a number of ideas, e.g., on- the-fly indexing, domination detection and virtual tuple pruning, to reduce the average-case cost of the query reranking algorithm. We also present extensive experimental results on real-world datasets, in both offline and live online systems, that demonstrate the effectiveness of our proposed techniques.','http://www.vldb.org/pvldb/vol9/p888-asudeh.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000077,'Finding Pareto Optimal Groups: Group-based Skyline','Abstract:Skyline computation, aiming at identifying a set of skyline points that are not dominated by any other point, is particularly useful for multi-criteria data analysis and decision making. Traditional skyline computation, however, is inadequate to answer queries that need to analyze not only individual points but also groups of points. To address this gap, we generalize the original skyline definition to the novel group-based skyline (G-Skyline), which represents Paretooptimal groups that are not dominated by other groups. Inorder to compute G-Skyline groups consisting of k points efficiently, we present a novel structure that represents the points in a directed skyline graph and captures the dominance relationships among the points based on the first k skyline layers. We propose efficient algorithms to compute the first k skyline layers. We then present two heuristic algorithms to efficiently compute the G-Skyline groups: the point-wise algorithm and the unit group-wise algorithm, using various pruning strategies. The experimental results on the real NBA dataset and the synthetic datasets show that G-Skyline is interesting and useful, and our algorithms are efficient and scalable.','http://www.vldb.org/pvldb/vol8/p2086-liu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000078,'k-Regret Queries with Nonlinear Utilities','Abstract:In exploring representative databases, a primary issue has been finding accurate models of user preferences. Given this, our work generalizes the method of regret minimization as proposed by Nanongkaiet al. to include nonlinear utility functions. Regret minimization is an approach for selecting k representative points from a database such that every user’s ideal point in the entire database is similar to one of the kpoints. This approach combines benefits of the methods top-k and skyline; it controls the size of the output but does not require knowledge of users’ preferences. Prior work with k-regret queries assumes users’ preferences to be modeled by linear utility functions. In this paper, we derive upper and lower bounds for non-linear utility functions, as these functions can better fit occurrences such as diminishing marginal returns, propensity for risk, and substitutability of preferences. To model these phenomena, we analyze a broad subset of convex, concave, and constant elasticity of substitution functions. We also run simulations on real and synthetic data to prove the efficacy of our bounds in practice.','http://www.vldb.org/pvldb/vol8/p2098-kesslerfaulkner.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000079,'Discovering the Skyline of Web Databases','Abstract:Many web databases are “hidden” behind proprietary search interfaces that enforce the top-k output constraint, i.e., each query returns at most k of all matching tuples, preferentially selected and returned according to a proprietary ranking function. In this paper, we initiate research into the novel problem of skyline discovery over top-k hidden web databases. Since skyline tuples provide critical insights into the database and include the top-ranked tuple for every possible ranking function following the monotonic order of attribute values, skyline discovery from a hidden web database can enable a wide variety of innovative third-party applications over one or multiple web databases. Our research in the paper shows that the critical factor affecting the cost of skyline discovery is the type of search interface controls provided by the website. As such, we develop efficient algorithms for three most popular types, i.e., one-ended range, free range and point predicates, and then combine them to support web databases that feature a mixture of these types. Rigorous theoretical analysis and extensive real-world online and offline experiments demonstrate the effectiveness of our proposed techniques and their superiority over baseline solutions.','http://www.vldb.org/pvldb/vol9/p600-asudeh.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000080,'1000000080','Abstract:Big is better: Large scale computing systems give access to huge amounts of data without the costs of moving data between systems. This allows for larger tables, bigger sorts, fatter graphs, and more cloud tenants sharing the the same resource pool on SPARC systems that scale linearly in cost and performance from 8 to 512 cores, 64 to 4096 threads. Secure is better: Cache- line level memory access checking allows our instrumented memory allocators to manage memory at production speed while detecting bugs and reporting attacks in real time. Information Density is better: With hardware designed for scanning n-gram compressed, bit packed, dictionary and run-length encoded columnar data at full memory bandwidth, we make maximal use of every bit stored and every cache line transferred over the memory channels with no impact on performance. Fast is better: With hardware support for running database operators on specialized streaming processors, we drive the memory channels at maximum rate, freeing up power and cores for running user computations on the result of these operators. Connected is better: Integrating EDR InfiniBand on-chip and on-board with low-latency, high-throughput, one-sided networking. Portable is better: By supporting platform independent acceleration APIs inside the database we support a wide variety of acceleration techniques and give applications and query planners the information to make the best use of the available hardware. Integrated is better: By supporting and accelerating multiple storage types (In-memory, NVMe, Exadata, NFS, HDFS, Fibre Channel), data formats (row major, column major, graph, JSON, spatial, MIME, Hive), algorithms, query languages, network protocols, and hardware platforms in a single product, we optimize, share resources, increase usability and reduce the cost and the cognitive load in acquiring, storing, securing and understanding data. In this talk, I will describe the experience that drives our microprocessor acceleration priorities, the constraints and joys of the hardware-software co-design process, the HW features that resulted, and how software engineers have exploiting these features in ways we expected and ways we didn’t. The industry has accelerated linear algebra and computer graphics, and in this talk we’ll see how we apply it to data processing but with changes to match the lower compute density of the problem space.','1000000080');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000081,'Nitro: A Fast, Scalable In-Memory Storage Engine for NoSQL Global Secondary Index','Abstract:We present Nitro, a high-performance in-memory key-value storage engine used in Couchbase 4.5 Global Secondary Indexes. The Nitro storage engine is well suited for the recent hardware trends like large amounts of memory and many CPU cores. The storage engine leverages latch-free data structures and tries to achieve linear scalability for the index read-write operations. The Nitro storage engine offers concurrent readers and writers, lightweight database snapshots, stable scan, backup and recovery operations. We integrated Nitro into the Couchbase Global Secondary Indexes (GSI) and observed significant improvement in performance compared to our disk oriented storage engine configured with the same amount of memory for buffer cache. On a 32 core machine, we observed an end-to- end GSI server insertion throughput of 1,650,000 entries/sec and index update throughput of 822,000 entries/sec. A single instance of Nitro data structure running on a 40 core machine achieved a peak insertion throughput of 4 million index entries/sec and entry lookup throughput of 10 million lookups/sec.','http://www.vldb.org/pvldb/vol9/p1413-lakshman.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000082,'Aerospike: Architecture of a Real-Time Operational DBMS','Abstract:In this paper, we describe the solutions developed to address key technical challenges encountered while building a distributed database system that can smoothly handle demanding real-time workloads and provide a high level of fault tolerance. Specifically, we describe schemes for the efficient clustering and data partitioning for the automatic scale out of processing across multiple nodes and for optimizing the usage of CPUs, DRAM, SSDs and networks to efficiently scale up performance on one node. The techniques described here were used to develop Aerospike (formerly Citrusleaf), a high performance distributed database system built to handle the needs of today’s interactive online services. Most real-time decision systems that use Aerospike require very high scale and need to make decisions within a strict SLA by reading from, and writing to, a database containing billions of data items at a rate of millions of operations per second with sub-millisecond latency. For over five years, Aerospike has been continuously used in over a hundred successful production deployments, as many enterprises have discovered that it can substantially enhance their user experience.','http://www.vldb.org/pvldb/vol9/p1389-srinivasan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000083,'Comdb2 - Bloomberg''s Higly Available Relational Database System','Abstract:Comdb2 is a distributed database designed for geographical replication and high availability. In contrast with the latest trends in this field Comdb2 offers full transactional support, a standard relational model, and the expressivity of SQL. Moreover, the system allows for rich stored procedures using a dialect of Lua. Comdb2 implements a serializable system in which reads from any node always return current values. Comdb2 provides transparent High Avail- ability through built in service discovery and sophisticated retry logic embedded in the standard API. In addition to the relational data model, Comdb2 implements queues for publisher-to- subscriber message delivery. Queues can be combined with table triggers for time- consistent log distribution, two functionalities that are commonly needed in modern OLTP. In this paper we give an overview of our last twelve years of work. We focus on the design choices that have made Comdb2 the primary database solution within our company, Bloomberg LP (BLP).','http://www.vldb.org/pvldb/vol9/p1377-scotti.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000084,'GARUDA: A System for Large-Scale Mining of Statistically Significant Connected Subgraphs','1000000084','http://www.vldb.org/pvldb/vol9/p1449-bhadange.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000085,'Generating Flexible Workloads for Graph Databases','1000000085','http://www.vldb.org/pvldb/vol9/p1457-bagan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000086,'Graph databases in the browser: using LevelGraph to explore New Delhi','1000000086','http://www.vldb.org/pvldb/vol9/p1469-maccioni.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000087,'Sapphire: Querying RDF Data Made Simple','1000000087','http://www.vldb.org/pvldb/vol9/p1481-el-roby.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000088,'December: A Declarative Tool for Crowd Member Selection','1000000088','http://www.vldb.org/pvldb/vol9/p1485-amsterdamer.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000089,'AutoG: A Visual Query Autocompletion Framework for Graph Databases','1000000089','http://www.vldb.org/pvldb/vol9/p1505-yi.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000090,'Exploratory Querying of Extended Knowledge Graphs','1000000090','http://www.vldb.org/pvldb/vol9/p1521-yahya.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000091,'SPARQLByE: Querying RDF data by example','1000000091','http://www.vldb.org/pvldb/vol9/p1533-diaz.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000092,'Graph-based Exploration of Non-graph Datasets','1000000092','http://www.vldb.org/pvldb/vol9/p1557-khurana.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000093,'Rogas: A Declarative Framework for Network Analytics','1000000093','http://www.vldb.org/pvldb/vol9/p1561-liu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000094,'Large-scale Complex Analytics on Semi-structured Datasets using AsterixDB and Spark','1000000094','http://www.vldb.org/pvldb/vol9/p1585-alkowaileet.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000095,'1000000095','1000000095','#ThuF1115T1245R21');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000107,'Tempo: Robust and Self-Tuning Resource Management in Multi-tenant Parallel Databases','Abstract:Multi-tenant database systems have a component called the Resource Manager, or RM that is responsible for allocating resources to tenants. RMs today do not provide direct support for performance objectives such as: “Average job response time of tenant A must be less than two minutes”, or “No more than 5% of tenant B’s jobs can miss the deadline of 1 hour.” Thus, DBAs have to tinker with the RM’s low-level configuration settings to meet such objectives. We propose a framework called Tempo that brings simplicity, self-tuning, and robustness to existing RMs. Tempo provides a simple interface for DBAs to specify performance objectives declaratively, and optimizes the RM configuration settings to meet these objectives. Tempo has a solid theoretical foundation which gives key robustness guarantees. We report experiments done on Tempo using production traces of data-processing workloads from companies such as Facebook and Cloudera. These experiments demonstrate significant improvements in meeting desired performance objectives over RM configuration settings specified by human experts.','http://www.vldb.org/pvldb/vol9/p720-tan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000096,'Data-Driven Disruption: The View from Silicon Valley','Abstract:We live in an era where software is transforming industries, the sciences, and society as a whole. This exciting phenomenon has been described by the phrase “software is eating the world.” It is becoming increasingly apparent that data is the fuel powering software’s conquests. Data is the new disruptor. It’s hard to believe that the first decade of the Big Data era is already behind us. Silicon Valley has been at the forefront of developing and applying data-driven approaches to create disruption at many levels: infrastructure (e.g., Hadoop and Spark), capabilities (e.g., image recognition and machine translation), and killer apps (e.g., self-driving cars and messaging bots). In this talk, we first look back on the past decade and share learnings from the frontlines of data-driven disruption. Looking ahead, we then describe challenges and opportunities for the next decade. Since this has also been a personal journey, we will use examples drawn from personal experience to illustrate each point. Bio:Anand is a Founding Partner of two Silicon Valley venture capital funds focused on early- stage technology companies: Milliways Ventures and RocketshipVC. He was the co-founder of two successful startups: Junglee (acquired by Amazon.com) and Kosmix (acquired by Walmart). At Walmart, he created and led WalMartLabs (as its Senior Vice President). As an academic, Anand’s research has focused at the intersection of database systems, the World-Wide Web, and social media. His research publications have won several awards at prestigious academic conferences, including three retrospective 10-year Best Paper awards at ACM SIGMOD and VLDB, and ICDT. His textbook “Mining of Massive Datasets”, co-authored with Jeff Ullman and Jure Leskovec, has been published.','http://www.vldb.org/pvldb/vol9/p1620-rajaraman.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000097,'Faster Plan Generation through Consideration of Functional Dependencies and Keys','Abstract:It has been a recognized fact for many years that query execution can benefit from pushing group-by operators down in the operator tree and applying them before a join. This so-called eager aggregation reduces the size(s) of the join argument(s), making join evaluation faster. Lately, the idea enjoyed a revival when it was applied to outer joins for the first time and incorporated in a state-of- the-art plan generator. However, this recent approach is highly dependent on the use of heuristics because of the exponential growth of the search space that goes along with eager aggregation. Finding an optimal solution for larger queries calls for effective optimality preserving pruning mechanisms to reduce the search space size as far as possible. By a more thorough investigation of functional dependencies and keys, we provide a set of new pruning criteria and evaluate their effectiveness with respect to the runtime and memory consumption of the resulting plan generator.','http://www.vldb.org/pvldb/vol9/p756-eich.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000098,'Exploiting Soft and Hard Correlations in Big Data Query Optimization','Exploiting Soft and Hard Correlations in Big Data Query Optimization','http://www.vldb.org/pvldb/vol9/p1005-liu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000099,'How Good Are Query Optimizers, Really?','Abstract:Finding a good join order is crucial for query performance. In this paper, we introduce the Join Order Benchmark (JOB) and experimentally revisit the main components in the classic query optimizer architecture using a complex, real-world data set and realistic multi-join queries. We investigate the quality of industrial-strength cardinality estimators and find that all estimators routinely produce large errors. We further show that while estimates are essential for finding a good join order, query performance is unsatisfactory if the query engine relies too heavily on these estimates. Using another set of experiments that measure the impact of the cost model, we find that it has much less influence on query performance than the cardinality estimates. Finally, we investigate plan enumeration techniques comparing exhaustive dynamic programming with heuristic algorithms and find that exhaustive enumeration improves performance despite the sub-optimal cardinality estimates.','http://www.vldb.org/pvldb/vol9/p204-leis.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000100,'Teaching an RDBMS about ontological constraints','Abstract:In the presence of an ontology, query answers must reflect not only data explicitly present in the database, but also implicit data, which holds due to the ontology, even though it is not present in the database. A large and useful set of ontologies enjoys FOL reducibility of query answering, that is: answering a query q can be reduced to evaluating a certain first-order logic (FOL) formula (obtained from the query and ontology) against only the explicit facts. We present a novel query optimization framework for ontology-based data access settings enjoying FOL reducibility. Our framework is based on searching within a set of alternative equivalent FOL queries, i.e., FOL reformulations, one with minimal evaluation cost when evaluated through a relational database system. We apply this framework to the DL-LiteR Description Logic underpinning the W3C’s OWL2 QL ontology language, and demonstrate through experiments its performance benefits when two leading SQL systems, one open-source and one commercial, are used for evaluating the FOL query reformulations.','http://www.vldb.org/pvldb/vol9/p1161-bursztyn.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000101,'Processing and Optimizing Main Memory Spatial-Keyword Queries','Abstract:Important cloud services rely on spatial-keyword queries, containing a spatial predicate and arbitrary boolean keyword queries. In particular, we study the processing of such queries in main memory to support short response times. In contrast, current state-of-the-art spatial-keyword indexes and relational engines are designed for different assumptions. Rather than building a new spatial-keyword index, we employ a cost-based optimizer to process these queries using a spatial index and a keyword index. We address several technical challenges to achieve this goal. We introduce three operators as the building blocks to construct plans for main memory query processing. We then develop a cost model for the operators and query plans. We introduce five optimization techniques that efficiently reduce the search space and produce a query plan with low cost. The optimization techniques are computationally efficient, and they identify a query plan with a formal approximation guarantee under the common independence assumption. Furthermore, we extend the framework to exploit interesting orders. We implement the query optimizer to empirically validate our proposed approach using real-life datasets. The evaluation shows that the optimizations provide significant reduction in the average and tail latency of query processing: 7- to 11-fold reduction over using a single index in terms of 99th percentile response time. In addition, this approach outperforms existing spatial- keyword indexes, and DBMS query optimizers for both average and high-percentile response times.','http://www.vldb.org/pvldb/vol9/p132-lee.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000102,'Spatial Online Sampling and Aggregation','Abstract:The massive adoption of smart phones and other mobile devices has generated humongous amount of spatial and spatio- temporal data. The importance of spatial analytics and aggregation is ever-increasing. An important challenge is to support interactive exploration over such data. However, spatial analytics and aggregation using all data points that satisfy a query condition is expensive, especially over large data sets, and could not meet the needs of interactive exploration. To that end, we present novel indexing structures that support spatial online sampling and aggregation on large spatial and spatio- temporal data sets. In spatial online sampling, random samples from the set of spatial (or spatio-temporal) points that satisfy a query condition are generated incrementally in an online fashion. With more and more samples, various spatial analytics and aggregations can be performed in an online, interactive fashion, with estimators that have better accuracy over time. Our design works well for both memory-based and disk-resident data sets, and scales well towards different query and sample sizes. More importantly, our structures are dynamic, hence, they are able to deal with insertions and deletions efficiently. Extensive experiments on large real data sets demonstrate the improvements achieved by our indexing structures compared to other baseline methods.','http://www.vldb.org/pvldb/vol9/p84-wang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000103,'Online Minimum Matching in Real-Time Spatial Data: Experiments and Analysis [Experiments and Analyses]','Abstract:Recently, with the development of mobile Internet and smartphones, the \underline{o}nline \underline{m}inimum \underline{b} ipartite \underline{m}atching in real time spatial data (OMBM) problem becomes popular. Specifically, given a set of service providers with specific locations and a set of users who dynamically appear one by one, the OMBM problem is to find a maximum- cardinality matching with minimum total distance following that once a user appears, s/he must be immediately matched to an unmatched service provider, which cannot be revoked, before subsequent users arrive. To address this problem, existing studies mainly focus on analyzing the worst-case competitive ratios of the proposed online algorithms, but study on the performance of the algorithms in practice is absent. In this paper, we present a comprehensive experimental comparison of the representative algorithms of the OMBM problem. Particularly, we observe a surprising result that the simple and efficient greedy algorithm, which has been considered as the worst due to its exponential worst-case competitive ratio, is significantly more effective than other algorithms. We investigate the results and further show that the competitive ratio of the worst case of the greedy algorithm is actually just a constant, 3.195, in the average-case analysis. We try to clarify a 24-year misunderstanding towards the greedy algorithm and justify that the greedy algorithm is not bad at all. Finally, we provide a uniform implementation for all the algorithms of the OMBM problem and clarify their strengths and weaknesses, which can guide practitioners to select appropriate algorithms for various scenarios.','http://www.vldb.org/pvldb/vol9/p1053-tong.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000104,'AQWA: Adaptive Query-Workload-Aware Partitioning of Big Spatial Data','Abstract:The unprecedented spread of location-aware devices has resulted ina plethora of location-based services in which huge amounts of spatial data need to be efficiently processed by large-scale computing clusters. Existing cluster-based systems for processing spatial data employ static data-partitioning structures that cannot adapt to data changes, and that are insensitive to the query workload. Hence, these systems are incapable of consistently providing good performance. To close this gap, we present AQWA, an adaptive and query-workload-aware mechanism for partitioning large-scale spatial data. AQWA does not assume prior knowledge of the data distribution or the query workload. Instead, as data is consumed and queries are processed, the data partitions are incrementally updated. With extensive experiments using real spatial data from Twitter, and various workloads of range and k-nearest-neighbor queries, we demonstrate that AQWA can achieve an order of magnitude enhancement in query performance compared to the state- of-the-art systems.','http://www.vldb.org/pvldb/vol8/p2062-Aly.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000105,'High-Speed Query Processing over High-Speed Networks','Abstract:Modern database clusters entail two levels of networks: connecting CPUs and NUMA regions inside a single server in the small and multiple servers in the large. The huge performance gap between these two types of networks used to slow down distributed query processing to such an extent that a cluster of machines actually performed worse than a single many-core server. The increased main-memory capacity of the cluster remained the sole benefit of such a scale-out. The economic viability of high-speed interconnects such as InfiniBand has narrowed this performance gap considerably. However, InfiniBand’s higher network bandwidth alone does not improve query performance as expected when the distributed query engine is left unchanged. The scalability of distributed query processing is impaired by TCP overheads, switch contention due to uncoordinated communication, and load imbalances resulting from the inflexibility of the classic exchange operator model. This paper presents the blueprint for a distributed query engine that addresses these problems by considering both levels of networks holistically. It consists of two parts: First, hybrid parallelism that distinguishes local and distributed parallelism for better scalability in both the number of cores as well as servers. Second, a novel communication multiplexer tailored for analytical database workloads using remote direct memory access (RDMA) and low-latency network scheduling for high-speed communication with almost no CPU overhead. An extensive evaluation within the HyPer database system using the TPC-H benchmark shows that our holistic approach indeed enables high-speed query processing over high-speed networks.','http://www.vldb.org/pvldb/vol9/p228-roediger.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000106,'The End of Slow Networks: It’s Time for a Redesign','Abstract:The next generation of high-performance networks with remote direct memory access (RDMA) capabilities requires a fundamental rethinking of the design of distributed in-memory DBMSs. These systems are commonly built under the assumption that the network is the primary bottleneck and should be avoided at all costs, but this assumption no longer holds. For instance, with InfiniBand FDR 4x, the bandwidth available to transfer data across the network is in the same ballpark as the bandwidth of one memory channel. Moreover, RDMA transfer latencies continue to rapidly improve as well. In this paper, we first argue that traditional distributed DBMS architectures cannot take full advantage of high-performance networks and suggest a new architecture to address this problem. Then, we discuss initial results from a prototype implementation of our proposed architecture for OLTP and OLAP, showing remarkable performance improvements over existing designs.','http://www.vldb.org/pvldb/vol9/p528-binnig.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000108,'Measuring and Optimizing Distributed Array Programs','Abstract:Nowadays, there is a rising trend of building array-based distributed computing frameworks. By taking advantage of highly optimized array/matrix operations, these frameworks have achieved significant improvement on performance for many important algorithms. However, due to the absence of a comprehensive optimizer, most of these frameworks execute each primitive in an isolated manner and in the exact order defined by programmers, which implies a huge space for optimization. In this paper, we propose a novel array- based programming model, named as KASEN, which distinguishes itself from models in the existing literature by defining a strict computation and communication model. This model makes it easy to analyze programs’ behavior and measure their performance, with which we design a corresponding optimizer that can automatically apply many high-level optimizations to the original programs written by programmers. According to our evaluation, KASEN is sufficient for implementing many important machine learning and graph algorithms, and it can be extended very easily. More importantly, the optimizer of KASEN can achieve significant reduction on memory read/write, buffer allocation and network traffic. The speedup achieved by our optimizer is up to 5.82X for real-world and synthetic datasets.','http://www.vldb.org/pvldb/vol9/p912-zhang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000109,'Kodiak: Leveraging Materialized Views For Very Low-Latency Analytics Over High-Dimensional Web-Scale Data','Abstract:Turn’s online advertising campaigns produce petabytes of data. This data is composed of trillions of events, e.g. impressions, clicks, etc., spanning multiple years. In addition to a timestamp, each event includes hundreds of fields describing the user’s attributes, campaign’s attributes, attributes of where the ad was served, etc. Advertisers need advanced analytics to monitor their running campaigns’ performance, as well as to optimize future campaigns. This involves slicing and dicing the data over tens of dimensions over arbitrary time ranges. Many of these queries need to power the web portal to provide reports and dashboards. For an interactive response time, they have to have tens of milliseconds latency. At Turn’s scale of operations, no existing system was able to deliver this performance in a cost effective manner. Kodiak, a distributed analytical data platform for web-scale high-dimensional data, was built to serve this need. It relies on precomputations to materialize thousands of views to serve these advanced queries. These views are partitioned and replicated across Kodiak’s storage nodes for scalability and reliability. They are system maintained as new events arrive. At query time, the system auto-selects the most suitable view to serve each query. Kodiak has been used in production for over a year. It hosts 2490 views for over three petabytes of raw data serving over 200K queries daily. It has median and 99% query latencies of 8 ms and 252 ms respectively. Our experiments show that its query latency is 3 orders of magnitude faster than leading big data platforms on head-to-head comparisons using Turn’s query workload. Moreover, Kodiak uses 4 orders of magnitude less resources to run the same workload.','http://www.vldb.org/pvldb/vol9/p1269-liu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000110,'Accelerating Analytics with Dynamic In-Memory Expressions','Abstract:Oracle Database In-Memory (DBIM) accelerates analytic workload performance by orders of magnitude through an in-memory columnar format utilizing techniques such as SIMD vector processing, in-memory storage indexes, and optimized predicate evaluation and aggregation. With Oracle Database 12.2, Database In-Memory is further enhanced to accelerate analytic processing through a novel lightweight mechanism known as Dynamic In-Memory Expressions (DIMEs). The DIME mechanism automatically detects frequently occurring expressions in a query workload, and then creates highly optimized, transactionally consistent, in-memory columnar representations of these expression results. At runtime, queries can directly access these DIMEs, thus avoiding costly expression evaluations. Furthermore, all the optimizations introduced in DBIM can apply directly to DIMEs. Since DIMEs are purely in-memory structures, no changes are required to the underlying tables. We show that DIMEs can reduce query elapsed times by several orders of magnitude without the need for costly pre-computed structures such as computed columns or materialized views or cubes.','http://www.vldb.org/pvldb/vol9/p1437-mishra.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000111,'TrafficDB: HERE''s High Performance Shared-Memory Data Store','Abstract:HERE’s traffic-aware services enable route planning and traffic visualisation on web, mobile and connected car applications. These services process thousands of requests per second and require efficient ways to access the information needed to provide a timely response to end-users. The characteristics of road traffic information and these traffic-aware services require storage solutions with specific performance features. A route planning application utilising traffic congestion information to calculate the optimal route from an origin to a destination might hit a database with millions of queries per second. However, existing storage solutions are not prepared to handle such volumes of concurrent read operations, as well as to provide the desired vertical scalability. This paper presents TrafficDB, a shared-memory data store, designed to provide high rates of read operations, enabling applications to directly access the data from memory. Our evaluation demonstrates that TrafficDB handles millions of read operations and provides near-linear scalability on multi-core machines, where additional processes can be spawned to increase the systems’ throughput without a noticeable impact on the latency of querying the data store. The paper concludes with a description of how TrafficDB improved the performance of our traffic-aware services running in production.','http://www.vldb.org/pvldb/vol9/p1365-fernandes.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000112,'The MemSQL Query Optimizer: A modern optimizer for real-time analytics in a distributed database','Abstract:Real-time analytics on massive datasets has become a very common need in many enterprises. These applications require not only rapid data ingest, but also quick answers to analytical queries operating on the latest data. MemSQL is a distributed SQL database designed to exploit memory-optimized, scale-out architecture to enable real-time transactional and analytical workloads which are fast, highly concurrent, and extremely scalable. Many analytical queries in MemSQL’s customer workloads are complex queries involving joins, aggregations, sub- queries, etc. over star and snowflake schemas, often ad-hoc or produced interactively by business intelligence tools. These queries often require latencies of seconds or less, and therefore require the optimizer to not only produce a high quality distributed execution plan, but also produce it fast enough so that optimization time does not become a bottleneck. In this paper, we describe the architecture of the MemSQL Query Optimizer and the design choices and innovations which enable it quickly produce highly efficient execution plans for complex distributed queries. We discuss how query rewrite decisions oblivious of distribution cost can lead to poor distributed execution plans, and argue that to choose high-quality plans in a distributed database, the optimizer needs to be distribution-aware in choosing join plans, applying query rewrites, and costing plans. We discuss methods to make join enumeration faster and more effective, such as a rewrite-based approach to exploit bushy joins in queries involving multiple star schemas without sacrificing optimization time. We demonstrate the effectiveness of the MemSQL optimizer over queries from the TPC-H benchmark and a real customer workload.','http://www.vldb.org/pvldb/vol9/p1401-chen.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000113,'1000000113','1000000113','#TueF1115T1245R1');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000114,'A Seven-Dimensional Analysis of Hashing Methods and its Implications on Query Processing','Abstract:Hashing is a solved problem. It allows us to get constant time access for lookups. Hashing is also simple. It is safe to use an arbitrary method as a black box and expect good performance, and optimizations to hashing can only improve it by a negligible delta. Why are all of the previous statements plain wrong? That is what this paper is about. In this paper we thoroughly study hashing for integer keys and carefully analyze the most common hashing methods in a five-dimensional requirements space: (1) data-distribution, (2) load factor, (3) dataset size, (4) read/write-ratio, and (5) un/successful-ratio. Each point in that design space may potentially suggest a different hashing scheme, and additionally also a different hash function. We show that a right or wrong decision in picking the right hashing scheme and hash function combination may lead to significant difference in performance. To substantiate this claim, we carefully analyze two additional dimensions: (6) five representative hashing schemes (which includes an improved variant of Robin Hood hashing), (7) four important classes of hash functions widely used today. That is, we consider 20 different combinations in total. Finally, we also provide a glimpse about the effect of table memory layout and the use of SIMD instructions. Our study clearly indicates that picking the right combination may have considerable impact on insert and lookup performance, as well as memory footprint. A major conclusion of our work is that hashing should be considered a white box before blindly using it in applications, such as query processing. Finally, we also provide a strong guideline about when to use which hashing method.','http://www.vldb.org/pvldb/vol9/p96-richter.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000115,'Query-Aware Locality-Sensitive Hashing for Approximate Nearest Neighbor Search','Abstract:Locality-Sensitive Hashing (LSH) and its variants are the well-known indexing schemes for the problem of c-Approximate Nearest Neighbor (c-ANN) search in high-dimensional Euclidean space. Traditionally, LSH functions are constructed in a query-oblivious manner in the sense that buckets are partitioned before any query arrives. However, objects closer to a query may be partitioned into different buckets, which is undesirable. Due to the use of query-oblivious bucket partition, the state-of-the-art LSH schemes for external memory, namely C2LSH and LSB-Forest, only work with approximation ratio of integer c >= 2. In this paper, we introduce a novel concept of query-aware bucket partition which uses a given query as the ``anchor” for bucket partition. Accordingly, a query-aware LSH function is a random projection coupled with query-aware bucket partition, which removes random shift required by traditional query-oblivious LSH functions. Notably, query-aware bucket partition can be easily implemented so that query performance is guaranteed. We propose a novel query-aware LSH scheme named QALSH for c-ANN search over external memory. Our theoretical studies show that QALSH enjoys guarantee on query quality. The use of query-aware LSH function enables QALSH to work with any approximation ratio c > 1. Extensive experiments on four real datasets show that QALSH outperforms C2LSH and LSB-Forest. Specifically, by using a ratio c < 2, QALSH can achieve much better query quality.','http://www.vldb.org/pvldb/vol9/p1-huang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000116,'Neighbor-Sensitive Hashing','Abstract:Approximate kNN (k-nearest neighbor) techniques using binary hash functions are among the most commonly used approaches for overcoming the prohibitive cost of performing exact kNN queries. However, the success of these techniques largely depends on their hash functions’ ability to distinguish kNN items; that is, the kNN items retrieved based on data items’ hashcodes, should include as many true kNN items as possible. A widely-adopted principle for this process is to ensure that similar items are assigned to the same hashcode so that the items with the hashcodes similar to a query’s hashcode are likely to be true neighbors. In this work, we abandon this heavily-utilized principle and pursue the opposite direction for generating more effective hash functions for kNN tasks. That is, we aim to increase the distance between similar items in the hashcode space, instead of reducing it. Our contribution begins by providing theoretical analysis on why this revolutionary and seemingly counter-intuitive approach leads to a more accurate identification of kNN items. Our analysis is followed by a proposal for a hashing algorithm that embeds this novel principle. Our empirical studies confirm that a hashing algorithm based on this counter-intuitive idea significantly improves the efficiency and accuracy of state-of-the-art techniques.','http://www.vldb.org/pvldb/vol9/p144-park.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000117,'LSH Ensemble: Internet Scale Domain Search','Abstract:We study {\it the problem of domain search} where a domain is a set of distinct values from an unspecified universe. We use Jaccard set containment score, defined as $|Q \cap X|/|Q|$, as the measure of relevance of a domain $X$ to a query domain $Q$. Our choice of Jaccard set containment over Jaccard similarity as a measure of relevance makes our work particularly suitable for searching Open Data and data on the web, as Jaccard similarity is known to have poor performance over sets with large differences in their domain sizes. We demonstrate that the domains found in several real-life Open Data and web data repositories show a power-law distribution over their domain sizes. We present a new index structure, Locality Sensitive Hashing (LSH) Ensemble, that solves the domain search problem using set containment at Internet scale. Our index structure and search algorithm cope with the data volume and skew by means of data sketches using Minwise Hashing and domain partitioning. Our index structure does not assume a prescribed set of data values. We construct a cost model that describes the accuracy of LSH Ensemble with any given partitioning. This allows us to formulate the data partitioning for LSH Ensemble as an optimization problem. We prove that there exists an {\it optimal} partitioning for any data distribution. Furthermore, for datasets following a power-law distribution, as observed in Open Data and Web data corpora, we show that the optimal partitioning can be approximated using equi-depth, making it particularly efficient to use in practice. We evaluate our algorithm using real data (Canadian Open Data and WDC Web Tables) containing up over 262 million domains. The experiments demonstrate that our index consistently outperforms other leading alternatives in accuracy and performance. The improvements are most dramatic for data with large skew in the domain sizes. Even at 262 million domains, our index sustains query performance with under 3 seconds response time.','http://www.vldb.org/pvldb/vol9/p1185-zhu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000118,'Will AI Eat Us All?','1000000118','http://vldb2016.persistent.com/will_ai_eat.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000165,'Titian: Data Provenance Support in Spark','Abstract:Debugging data processing logic in Data-Intensive Scalable Computing (DISC) systems is a difficult and time consuming effort. Today’s DISC systems offer very little tooling for debugging programs, and as a result programmers spend countless hours collecting evidence (e.g., from log files) and performing trial and error debugging. To aid this effort, we built Titian, a library that enables data provenance— tracking data through transformations—in Apache Spark. Data scientists using the Titian Spark extension will be able to quickly identify the input data at the root cause of a potential bug or outlier result. Titian is built directly into the Spark platform and offers data provenance support at interactive speeds—orders-of-magnitude faster than alternative solutions—while minimally impacting Spark job performance; observed overheads for capturing data lineage rarely exceed 30% above the baseline job execution time.','http://www.vldb.org/pvldb/vol9/p216-interlandi.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000119,'G-SQL: Fast Query Processing via Graph Exploration','Abstract:A lot of real-life data is of graph nature. However, it is not until recently that business begins to exploit data’s connectedness for business insights. On the other hand, RDBMSs are a mature technology for data management, but they are not for graph processing. Take graph traversal, a common graph operation for example, it heavily relies on a graph primitive that accesses a given node’s neighborhood. We need to join tables following foreign keys to access the nodes in the neighborhood if an RDBMS is used to manage graph data. Graph exploration is a fundamental building block of many graph algorithms. But this simple operation is costly due to large volumes of I/O caused by the massive amount of table joins. In this paper, we present G-SQL, our first effort towards the integration of a RDBMS and a native graph processing engine (Trinity). G-SQL leverages fast graph exploration provided by Trinity’s memory cloud to answer multi-way join queries, and it uses RDBMSs to provide mature data management functionalities, including reliable data storage, additional data access methods, etc. Specifically, G-SQL is a SQL dialect augmented with graph exploration functionalities and it dispatches query tasks to its underlying RDMBS and the Trinity graph engine. The G-SQL runtime coordinates the two query processors, and uses a unified cost model to ensure that the entire query is processed efficiently. Experimental results show that our approach greatly expands capabilities of RDBMs and delivers exceptional performance for SQL-graph hybrid queries.','http://www.vldb.org/pvldb/vol9/p900-ma.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000120,'Fully Dynamic Betweenness Centrality Maintenance on Massive Networks','Abstract:Measuring the relative importance of each vertex in a network is one of the most fundamental building blocks in network analysis. Among several importance measures, betweenness centrality, in particular, plays key roles in many real applications. Considerable effort has been made for developing algorithms for static settings. However, real networks today are highly dynamic and are evolving rapidly, and scalable dynamic methods that can instantly reflect graph changes into centrality values are required. In this paper, we present the first fully dynamic method for managing betweenness centrality of all vertices in a large dynamic network. Its main data structure is the weighted hyperedge representation of shortest paths called hypergraph sketch. We carefully design dynamic update procedure with theoretical accuracy guarantee. To accelerate updates, we further propose two auxiliary data structures called two-ball index and special-purpose reachability index. Experimental results using real networks demonstrate its high scalability and efficiency. In particular, it can reflect a graph change in less than a millisecond on average for a large-scale web graph with 106M vertices and 3.7B edges, which is several orders of magnitude larger than the limits of previous dynamic methods.','http://www.vldb.org/pvldb/vol9/p48-hayashi.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000121,'Parallel Local Graph Clustering','Abstract:Graph clustering has many important applications in computing, but due to growing sizes of graph, even traditionally fast clustering methods such as spectral partitioning can be computationally expensive for real-world graphs of interest. Motivated partly by this, so-called local algorithms for graph clustering have received significant interest due to the fact that they can find good clusters in a graph with work proportional to the size of the cluster rather than that of the entire graph. This feature has proven to be crucial in making such graph clustering and many of its downstream applications efficient in practice. While local clustering algorithms are already faster than traditional algorithms that touch the entire graph, there is an opportunity to make them even more efficient via parallelization. Existing local clustering algorithms are sequential. In this paper, we show how to parallelize many of these algorithms in the shared-memory multicore setting, and we analyze the parallel complexity of these algorithms. We present comprehensive experiments on large-scale graphs showing that the parallel algorithms achieve good parallel speedups on a modern multicore machine, thus significantly speeding up the analysis of local graph clusters in the very large-scale setting.','http://www.vldb.org/pvldb/vol9/p1041-shun.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000122,'KCore Decomposition for Large Networks on a Single PC','Abstract:Studying the topology of a network is critical to inferring underlying dynamics such as tolerance to failure, group behavior and spreading patterns. k-core decomposition is a well-established metric which partitions a graph into layers from external to more central vertices. In this paper we aim to explore whether k-core decomposition of large networks can be computed using a consumer- grade PC. We feature implementations of the “vertex-centric” distributed protocol introduced by Montresor, De Pellegrini and Miorandi on GraphChi and Webgraph. Also, we present an accurate implementation of the Batagelj and Zaversnik algorithm for k-core decomposition in Webgraph. With our implementations, we show that we can efficiently handle networks of billions of edges using a single consumer-level machine within reasonable time and can produce excellent approximations in only a fraction of the execution time. To the best of our knowledge, our biggest graphs are considerably larger than the graphs considered in the literature. Next, we present an optimized implementation of an external-memory algorithm (EMcore) by Cheng, Ke, Chu, and Ozsu. We show that this algorithm also performs well for large datasets, however, it cannot predict whether a given memory budget is sufficient for a new dataset. We present a thorough analysis of all algorithms concluding that it is viable to compute k-core decomposition for large networks in a consumer-grade PC.','http://www.vldb.org/pvldb/vol9/p13-khaouid.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000123,'Messing Up with BART: Error Generation for Evaluating Data-Cleaning Algorithms','Abstract:We study the problem of introducing errors into clean databases for the purpose of benchmarking data-cleaning algorithms. Our goal is to provide users with the highest possible level of control over the error-generation process, and at the same time develop solutions that scale to large databases. We show in the paper that the error-generation problem is surprisingly challenging, and in fact, NP-complete. To provide a scalable solution, we develop a correct and efficient greedy algorithm that sacrifices completeness, but succeeds under very reasonable assumptions. To scale to millions of tuples, the algorithm relies on several non-trivial optimizations, including a new symmetry property of data quality constraints. The trade-off between control and scalability is the main technical contribution of the paper.','http://www.vldb.org/pvldb/vol9/p36-arocena.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000124,'Error Detection: Where are we and what needs to be done? [Experiments and Analyses]','Abstract:Data cleaning has played a critical role in ensuring data quality for enterprise applications. Naturally, there has been extensive research in this area, and many data cleaning algorithms have been translated into tools to detect and to possibly repair certain classes of errors such as outliers, duplicates, missing values, and violations of integrity constraints. Since different types of errors may coexist in the same dataset, we often need to run more than one kind of tool. In this paper, we investigate two pragmatic questions: (1) are these tools robust enough to capture most errors in real-world data sets? and (2) what is the best strategy to holistically run multiple tools to optimize the detection effort? To answer these two questions, we obtained multiple data cleaning tools that utilize a variety of error detection techniques. We also collected five real-world data sets, for which we could obtain both the raw data and the ground truth on existing errors. In this paper, we report our experimental findings on the errors detected by the tools we tested. First, we show that the coverage of each tool is well below 100%. Second, we show that the order in which multiple tools are run makes a big difference. Hence, we propose a holistic multi-tool strategy that orders the invocations of the available tools to maximize their benefit, while minimizing human effort in verifying results. Third, since this holistic approach still does not lead to acceptable error coverage, we discuss two simple strategies that have the potential to improve the situation, namely domain specific tools and data enrichment. We close this paper by reasoning about the errors that are not detectable by any of the tools we tested.','http://www.vldb.org/pvldb/vol9/p993-abedjan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000125,'ActiveClean: Interactive Data Cleaning For Statistical Modeling','Abstract:Analysts often clean dirty data iteratively–cleaning some data, executing the analysis, and then, cleaning more data based on the results. We explore the iterative cleaning process in the context of statistical model training, which is an increasingly popular form of data analytics. The challenge is that training high-dimensional statistical models on partially clean data lacks guarantees, and the iterative cleaning process may actually diverge. We propose ActiveClean which allows for progressive and iterative cleaning in statistical modeling problems while preserving convergence guarantees. ActiveClean supports a popular class of models called convex loss models (e.g., linear regression and SVMs), and also prioritizes cleaning those records likely to affect the results. We evaluate ActiveClean on four real-world datasets UCI Adult, UCI EEG, MNIST, and Dollars for Docs with both real and synthetic errors. Our results suggest that our proposed optimizations can improve model accuracy by up-to 2.5x for the same amount of data cleaned. Furthermore, for a fixed cleaning budget and on all real dirty datasets, ActiveClean returns more accurate models than uniform sampling and Active Learning.','http://www.vldb.org/pvldb/vol9/p948-krishnan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000126,'META: An Efficient Matching-Based Method for Error-Tolerant Autocompletion','Abstract:Autocompletion has been widely adopted in many computing systems because it can instantly provide users with results as users type in queries. Since the typing task is tedious and prone to error, especially on mobile devices, a recent trend is to tolerate errors in autocompletion. Existing error-tolerant autocompletion methods build a trie to index the data, utilize the trie index to compute the trie nodes that are similar to the query, called active nodes, and identify the leaf descendants of active nodes as the results. However these methods have two limitations. First, they involve many redundant computations to identify the active nodes. Second, they do not support top-k queries. To address these problems, we propose a matching-based framework, which computes the answers based on matching characters between queries and data. We design a compact tree index to maintain active nodes in order to avoid the redundant computations. We devise an incremental method to efficiently answer top-k queries. Experimental results on real datasets show that our method outperforms state-of-the-art approaches by 1-2 orders of magnitude.','http://www.vldb.org/pvldb/vol9/p828-deng.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000127,'1000000127','1000000127','#TueF200T330R6');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000128,'Decorating the Cloud: Enabling Annotation Management in MapReduce Infrastructure','1000000128','http://dx.doi.org/10.1007/s00778-016-0422-9');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000129,'S3-TM: scalable streaming short text matching','1000000129','http://dx.doi.org/10.1007/s00778-015-0404-3');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000130,'Elite: an Elastic Infrastructure for Big Spatiotemporal Trajectories','1000000130','http://dx.doi.org/10.1007/s00778-016-0425-6');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000131,'Accelerating SPARQL Queries by Exploiting Hash-based Locality and Adaptive Partitioning','1000000131','http://dx.doi.org/10.1007/s00778-016-0420-y');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000132,'Know Your Customer: Computing k-Most Promising Products for Targeted Marketing','1000000132','http://dx.doi.org/10.1007/s00778-016-0428-3');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000133,'Bitwise Dimensional Co-Clustering for Analytical Workloads','1000000133','http://dx.doi.org/10.1007/s00778-015-0417-y');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000134,'SlimShot: In-Database Probabilistic Inference for Knowledge Bases','Abstract:Increasingly large Knowledge Bases are being created, by crawling the Web or other corpora of documents, and by extracting facts and relations using machine learning techniques. To manage the uncertainty in the data, these KBs rely on probabilistic engines based on Markov Logic Networks (MLN), for which probabilistic inference remains a major challenge. Today’s state of the art systems use variants of MCMC, which have no theoretical error guarantees, and, as we show, suffer from poor performance in practice. In this paper we describe SlimShot (Scalable Lifted Inference and Monte Carlo Sampling Hybrid Optimization Technique), a probabilistic inference engine for knowledge bases. SlimShot converts the MLN to a tuple- independent probabilistic database, then uses a simple Monte Carlo-based inference, with three key enhancements: (1) it combines sampling with safe query evaluation, (2) it estimates a conditional probability by jointly computing the numerator and denominator, and (3) it adjusts the proposal distribution based on the sample cardinality. In combination, these three techniques allow us to give formal error guarantees, and we demonstrate empirically that SlimShot outperforms today’s state of the art probabilistic inference engines used in knowledge bases.','http://www.vldb.org/pvldb/vol9/p552-gribkoff.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000135,'Scalable Package Queries in Relational Database Systems','Abstract:Traditional database queries follow a simple model: they define constraints that each tuple in the result must satisfy. This model is computationally efficient, as the database system can evaluate the query conditions on each tuple individually. However, many practical, real-world problems require a collection of result tuples to satisfy constraints collectively, rather than individually. In this paper, we present package queries, a new query model that extends traditional database queries to handle complex constraints and preferences over answer sets. We develop a full-fledged package query system, implemented on top of a traditional database engine. Our work makes several contributions. First, we design PaQL, a SQL-based query language that supports the declarative specification of package queries. We prove that PaQL is as least as expressive as integer linear programming, and therefore, evaluation of package queries is in general NP-hard. Second, we present a fundamental evaluation strategy that combines the capabilities of databases and constraint optimization solvers to derive solutions to package queries. The core of our approach is a set of translation rules that transform a package query to an integer linear program. Third, we introduce an offline data partitioning strategy allowing query evaluation to scale to large data sizes. Fourth, we introduce SketchRefine, a scalable algorithm for package evaluation, with strong approximation guarantees ((1 +/- e)^6- factor approximation). Finally, we present extensive experiments over real-world and benchmark data. The results demonstrate that SketchRefine is effective at deriving high-quality package results, and achieves runtime performance that is an order of magnitude faster than directly using ILP solvers over large datasets.','http://www.vldb.org/pvldb/vol9/p576-brucato.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000136,'Explaining Query Answers with Explanation-Ready Databases','Abstract:With the increased generation and availability of big data in different domains, there is an imminent requirement for data analysis tools that are able to `explain’ the trends and anomalies obtained from this data to a range of users with different backgrounds. Wu- Madden (PVLDB 2013) and Roy-Suciu (SIGMOD 2014) recently proposed solutions that can explain interesting or unexpected answers to simple aggregate queries in terms of predicates on attributes. In this paper, we propose a generic framework that can support much richer, insightful explanations by preparing the database offline, so that top explanations can be found interactively at query time. The main idea in such `explanation-ready databases’ is to pre-compute the effects of potential explanations (called `interventions’), and efficiently re-evaluate the original query taking into accounts these effects. We formalize this notion and define an `explanation- query’ that can evaluate all possible explanations simultaneously without having to run an iterative process, develop algorithms and optimizations, and evaluate our approach with experiments on real data.','http://www.vldb.org/pvldb/vol9/p348-roy.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000137,'A framework for annotating CSV-like data','Abstract:In this paper, we propose a simple and expressive framework for adding metadata to CSV documents and their noisy variants. The framework is based on annotating parts of the document that can be later used to read, query, or exchange the data. The core of our framework is a language based on extended regular expressions that are used for selecting data. These expressions are then combined using a set of rules in order to annotate the data. We study the computational complexity of implementing our framework and present an efficient evaluation algorithm that runs in time proportional to its output and linear in its input. As a proof of concept, we test an implementation of our framework against a large number of real world datasets and show that it can be efficiently used in practice.','http://www.vldb.org/pvldb/vol9/p876-arenas.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000138,'A General-Purpose Query-Centric Framework for Querying Big Graphs [Innovative Systems and Applications]','Abstract:Pioneered by Google’s Pregel, many distributed systems have been developed for large-scale graph analytics. These systems expose the user-friendly “think like a vertex” programming interface to users, and exhibit good horizontal scalability. However, these systems are designed for tasks where the majority of graph vertices participate in computation, but are not suitable for processing light- workload graph queries where only a small fraction of vertices need to be accessed. The programming paradigm adopted by these systems can seriously under-utilize the resources in a cluster for graph query processing. In this work, we develop a new open-source system, called Quegel, for querying big graphs, which treats queries as first-class citizens in the design of its computing model. Users only need to specify the Pregel-like algorithm for a generic query, and Quegel processes light-workload graph queries on demand using a novel superstep-sharing execution model to effectively utilize the cluster resources. Quegel further provides a convenient interface for constructing graph indexes, which significantly improve query performance but are not supported by existing graph- parallel systems. Our experiments verified that Quegel is highly efficient in answering various types of graph queries and is up to orders of magnitude faster than existing systems.','http://www.vldb.org/pvldb/vol9/p564-yan.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000139,'Distance-based Outlier Detection in Data Streams [Experiments and Analyses]','Abstract:Continuous outlier detection in data streams has important applications in fraud detection, network security, and public health. The arrival and departure of data objects in a streaming manner impose new challenges for outlier detection algorithms, especially in time and space efficiency. In the past decade, several studies have been performed to address the problem of distance-based outlier detection in data streams (DODDS), which adapts an unsupervised definition and does not have any distributional assumption on data values. Our work is motivated by the lack of comparative evaluation among the state-of-the-art algorithms using the same dataset selections and on the same platform. We systematically evaluate five most recent exact algorithms for DODDS under various stream settings and outlier rates. Our extensive results show that in most settings, the MCOD algorithm provides superior performance among all algorithms, including the most recent algorithm Thresh_LEAP.','http://www.vldb.org/pvldb/vol9/p1089-tran.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000140,'SEEDB: Efficient Data-Driven Visualization Recommendations to Support Visual Analytics','Abstract:Data analysts often build visualizations as the first step in their an-alytical workflow. However, when working with high-dimensional datasets, identifying visualizations that show relevant or desiredtrends in data can be laborious. We propose SEEDB, a visual-ization recommendation engine to facilitate fast visual analysis:given a subset of data to be studied, SEEDB intelligently exploresthe space of visualizations, evaluates promising visualizations fortrends, and recommends those it deems most “useful” or “inter-esting”. The two major obstacles in recommending interesting vi-sualizations are (a)scale: evaluating a large number of candidatevisualizations while responding within interactive time scales, and(b)utility: identifying an appropriate metric for assessing interest-ingness of visualizations. For the former, SEEDB introducesprun-ing optimizationsto quickly identify high-utility visualizations andsharing optimizationsto maximize sharing of computation acrossvisualizations. For the latter, as a first step, we adopt a deviation- based metric for visualization utility, while indicating how we maybe able to generalize it to other factors influencing utility. We im-plement SEEDB as a middleware layer that can run on top of anyDBMS. Our experiments show that our framework can identify in-teresting visualizations with high accuracy. Our optimizations leadtomultiple orders of magnitude speedupon relational row and col-umn stores and provide recommendations at interactive time scales.Finally, we demonstrate via a user study the effectiveness of ourdeviation-based utility metric and the value of recommendations in supporting visual analytics.','http://www.vldb.org/pvldb/vol8/p2182-vartak.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000141,'Explaining Outputs in Modern Data Analytics','Abstract:We report on the design and implementation of a general framework for interactively explaining the outputs of modern data-parallel computations, including iterative data analytics. To produce explanations, existing works adopt a naive backward tracing approach which runs into known issues; naive backward tracing may identify: (i) too much information that is difficult to process, and (ii) not enough information to reproduce the output, which hinders the logical debugging of the program. The contribution of this work is twofold. First, we provide methods to effectively reduce the size of explanations based on the first occurrence of a record in an iterative computation. Second, we provide a general method for identifying explanations that are sufficient to reproduce the target output in arbitrary computations – a problem for which no viable solution existed until now. We implement our approach on differential dataflow, a modern high-throughput, low-latency dataflow platform. We add a small (but extensible) set of rules to explain each of its data-parallel operators, and we implement these rules as differential dataflow operators themselves. This choice allows our implementation to inherit the performance characteristics of differential dataflow, and results in a system that efficiently computes and updates explanatory inputs even as the inputs of the reference computation change. We evaluate our system with various analytic tasks on real datasets, and we show that it produces concise explanations in tens of milliseconds, while remaining faster – up to two orders of magnitude – than even the best implementations that do not support explanations.','http://www.vldb.org/pvldb/vol9/p1137-chothia.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000142,'YourSQL: A High-Performance Database System Leveraging In-Storage Computing [Innovative Systems and Applications]','Abstract:This paper presents YourSQL, a database system that ac- celerates data-intensive queries with the help of additional in-storage computing capabilities. YourSQL realizes very early filtering of data by offloading data scanning of a query to user-programmable solid-state drives. We implement our system on a recent branch of MariaDB (a variant of MySQL). In order to quantify the performance gains of YourSQL, we evaluate SQL queries with varying complexities. Our result shows that YourSQL reduces the execution time of the whole TPC-H queries by 3.6x, compared to a vanilla system. Moreover, the average speed-up of the five TPC-H queries with the largest performance gains reaches over 15x. Thanks to this significant reduction of execution time, we observe sizable energy savings. Our study demonstrates that the YourSQL approach, combining the power of early filtering with end-to-end datapath optimization, can accelerate large-scale analytic queries with lower energy consumption.','http://www.vldb.org/pvldb/vol9/p924-jo.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000143,'Cheap Data Analytics using Cold Storage Devices','Abstract:Enterprise databases use storage tiering to lower capital and operational expenses. In such a setting, data waterfalls from an SSD based high-performance tier when it is “hot” (frequently accessed) to a disk-based capacity tier and finally to a tape-based archival tier when “cold” (rarely accessed). To address the unprecedented growth in the amount of cold data, hardware vendors introduced new devices named Cold Storage Devices (CSD) explicitly targeted at cold data workloads. With access latencies in tens of seconds and cost/GB as low as 0.01$/GB/month, CSD provide a middle ground between the low-latency (ms), high-cost, HDD-based capacity tier, and high-latency (min to h), low-cost, tape-based, archival tier. Driven by the price/performance aspects of CSD, this paper makes a case for using CSD as a replacement for both capacity and archival tiers of enterprise databases. Although CSD offer major cost savings, we show that current database systems can suffer from severe performance drop when CSD are used as a replacement for HDD due to the mismatch between design assumptions made by the query execution engine and actual storage characteristics of the CSD. We then build a CSD-driven query execution framework, called Skipper, that modifies both the database execution engine and CSD scheduling algorithms to be aware of each other. Using results from our implementation of the architecture based on PostgreSQL and OpenStack Swift, we show that Skipper is capable of completely masking the high latency overheads of CSD, thereby opening up CSD for wider adoption as a storage tier for cheap data analytics over cold data.','http://www.vldb.org/pvldb/vol9/p1029-borovica.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000144,'An Experimental Evaluation of Datacenter Workloads On Low-Power Embedded Micro Servers','Abstract:This paper presents a comprehensive evaluation of an ultra-low power cluster, built upon the Intel Edison based micro servers. The improved performance and high energy efficiency of micro servers have driven both academia and industry to explore the possibility of replacing conventional brawny servers with a larger swarm of embedded micro servers. Existing attempts mostly focus on mobile-class micro servers, whose capacities are similar to mobile phones. We, on the other hand, target on sensor-class micro servers, which are originally intended for uses in wearable technologies, sensor networks, and Internet-of- Things. Although sensor-class micro servers have much less capacity, they are touted for minimal power consumption (< 1 Watt), which opens new possibilities of achieving higher energy efficiency in datacenter workloads. Our systematic evaluation of the Edison cluster and comparisons to conventional brawny clusters involve careful workload choosing and laborious parameter tuning, which ensures maximum server utilization and thus fair comparisons. Results show that the Edison cluster achieves up to 3.5 times improvement on work-done-per-joule for web service applications and data-intensive MapReduce jobs. In terms of scalability, the Edison cluster scales linearly on the throughput of web service workloads, and also shows satisfactory scalability for MapReduce workloads despite coordination overhead.','http://www.vldb.org/pvldb/vol9/p696-zhao.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000145,'LDBC Graphalytics: A Benchmark for Large-Scale Graph Analysis on Parallel and Distributed Platforms','Abstract:In this paper we introduce LDBC Graphalytics, a new industrial-grade benchmark for graph analysis platforms. It consists of six deterministic algorithms, standard datasets, synthetic dataset generators, and reference output, that enable the objective comparison of graph analysis platforms. Its test harness produces deep metrics that quantify multiple kinds of system scalability, such as horizontal/vertical and weak/strong, and of robustness, such as failures and performance variability. The benchmark comes with opensource software for generating data and monitoring performance. We describe and analyze six implementations of the benchmark (three from the community, three from industry), providing insights into the strengths and weaknesses of the platforms. Key to our contribution, vendors perform the tuning and benchmarking of their platforms.','http://www.vldb.org/pvldb/vol9/p1317-iosup.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000146,'GraphJet: Real-Time Content Recommendations at Twitter','Abstract:This paper presents GraphJet, a new graph-based system for generating content recommendations at Twitter. As motivation, we trace the evolution of our formulation and approach to the graph recommendation problem, embodied in successive generations of systems. Two trends can be identified: supplementing batch with real-time processing and a broadening of the scope of recommendations from users to content. Both of these trends come together in GraphJet, an in-memory graph processing engine that maintains a real- time bipartite interaction graph between users and tweets. The storage engine implements a simple API, but one that is sufficiently expressive to support a range of recommendation algorithms based on random walks that we have refined over the years. Similar to Cassovary, a previous graph recommendation engine developed at Twitter, GraphJet assumes that the entire graph can be held in memory on a single server. The system organizes the interaction graph into temporally-partitioned index segments that hold adjacency lists. GraphJet is able to support rapid ingestion of edges while concurrently serving lookup queries through a combination of compact edge encoding and a dynamic memory allocation scheme that exploits power-law characteristics of the graph. Each GraphJet server ingests up to one million graph edges per second, and in steady state, computes up to 500 recommendations per second, which translates into several million edge read operations per second.','http://www.vldb.org/pvldb/vol9/p1281-sharma.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000147,'Using Domain-Specific Languages For Analytic Graph Databases','Abstract:Recently graph has been drawing a lot of attention both as a natural data model that captures fine-grained relationships between data entities and as a tool for powerful data analysis that considers such relationships. In this paper, we present a new graph database system that integrates a robust graph storage with an efficient graph analytics engine. Primarily, our system adopts two domain-specific languages (DSLs), one for describing graph analysis algorithms and the other for graph pattern matching queries. Compared to the API-based approaches in conventional graph processing systems, the DSL-based approach provides users with more flexible and intuitive ways of expressing algorithms and queries. Moreover, the DSL-based approach has significant performance benefits as well, (1) by skipping (remote) API invocation overhead and (2) by applying high-level optimization from the compiler.','http://www.vldb.org/pvldb/vol9/p1257-sevenich.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000148,'Cubrick: Indexing Millions of Records per Second for Interactive Analytics','Abstract:This paper describes the architecture and design of Cubrick, a distributed multidimensional in-memory database suited for interactive analytics over highly dynamic datasets. Cubrick has a strictly multidimensional data model composed of cubes, dimensions and metrics, supporting sub-second OLAP operations such as slice and dice, roll-up and drill-down over terabytes of data. All data stored in Cubrick is range partitioned by every dimension and stored within containers called bricks in an unordered and sparse fashion, providing high data ingestion rates and indexed access through any combination of dimensions. In this paper, we describe details about Cubrick’s internal data structures, distributed model, query execution engine and a few details about the current implementation. Finally, we present results from a thorough experimental evaluation that leveraged datasets and queries collected from a few internal Cubrick deployments at Facebook.','http://www.vldb.org/pvldb/vol9/p1305-pedreira.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000149,'1000000149','1000000149','#ThuF200T330R26');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000150,'Best Paper Award','1000000150','1000000150');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000151,'VLDB 10-year Best Paper Award','1000000151','1000000151');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000152,'VLDB Early Career Research Contribution Award','1000000152','1000000152');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000153,'VLDB Women in Database Research Award','1000000153','1000000153');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000154,'Leave No Valuable Data Behind: The Crazy Ideas and the Business','Abstract:With the mission “leave no valuable data behind”, we developed techniques for knowledge fusion to guarantee the correctness of the knowledge. This talk starts with describing a few crazy ideas we have tested. The first, known as “Knowledge Vault”, used 15 extractors to automatically extract knowledge from 1B+ Webpages, obtaining 3B+ distinct (subject, predicate, object) knowledge triples and predicting well-calibrated probabilities for extracted triples. The second, known as “Knowledge-Based Trust”, estimated the trustworthiness of 119M webpages and 5.6M websites based on the correctness of their factual information. We then present how we bring the ideas to business in filling the gap between the knowledge at Google Knowledge Graph and the knowledge in the world. Bio:Xin Luna Dong is a Principal Scientist at Amazon, leading the efforts of constructing Amazon Product Graph. She was one of the major contributors to the Knowledge Vault project, and has led the Knowledge-based Trust project, which is called the “Google Truth Machine” by Washington’s Post. She has co-authored book “Big Data Integration”, published 65+ papers in top conferences and journals, given 20+ keynotes/invited-talks/tutorials, and got the Best Demo award in Sigmod 2005. She is the PC co-chair for Sigmod 2018 and WAIM 2015, and serves as an area chair for Sigmod 2017, Sigmod 2015, ICDE 2013, and CIKM 2011.','1000000154');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000155,'Location Data Management: A Tale of Two Systems and the “Next Destination”!','Abstract:In early 2000, we had the vision of ubiquitous location services, where each object is aware of its location, and continuously sends its location to a designated database server. This flood of location data opened the door for a myriad of location-based services that were considered visionary at that time, yet today they are a reality and have become ubiquitous. To realize our early vision, we identified two main challenges that needed to be addressed, namely, scalability and privacy. We have addressed these challenges through two main systems, PLACE and Casper. PLACE, developed at Purdue University from 2000 to 2005, set up the environment for built-in database support of scalable and continuous location-based services. The Casper system, developed at University of Minnesota from 2005 to 2010, was built inside the PLACE server allowing it to provide its high quality scalable service, while maintaining the privacy of its users’ locations. This talk will take you through a time journey of location services from 2000 until today, and beyond, highlighting the development efforts of the PLACE and Casper systems, along with their impact on current and future research initiatives in both academia and industry. Bio 1:Mohamed F. Mokbel (Ph.D., Purdue University, MS, B.Sc., Alexandria University) is an Associate Professor in the Department of Computer Science and Engineering, University of Minnesota. His research interests include the interaction of GIS and location-based services with database systems and cloud computing. His research work has been recognized by five Best Paper Awards and by the NSF CAREER award. Mohamed is/was the program co-chair of SIGMOD 2018, ACM SIGSPATIAL from 2008 to 2010, and IEEE MDM 2011 and 2014. He is an Associate Editor for ACM TODS, ACM TSAS, VLDB journal, and GeoInformatica. Mohamed is currently serving as the elected Chair of ACM SIGSPATIAL 2014-2017. For more information, please visit: www.cs.umn.edu/~mokbel. Bio 2:Chi-Yin Chow received the B.A. and M.Phil. degrees from The Hong Kong Polytechnic University, Hong Kong in 2002 and 2005, respectively. He also received the M.S. and Ph.D. degrees from the University of Minnesota-Twin Cities, USA in 2008 and 2010, respectively. He is currently an assistant professor in Department of Computer Science, City University of Hong Kong. His research interests include big data analytics, data management, GIS, mobile computing, location-based services, and data privacy. He is the co-founder and co-chair of the ACM SIGSPATIAL MobiGIS 2012 to 2016, and the editor of the ACM SIGSPATIAL Newsletter. Dr. Chow received the best paper awards in ICA3PP 2015 and IEEE MDM 2009. Bio 3:Walid G. Aref is a professor of computer science at Purdue. His research interests are in extending the functionality of database systems in support of emerging applications, e.g., spatial, spatio-temporal, multimedia, biological, and sensor databases. He is also interested in query processing, indexing, data mining, and geographic information systems (GIS). Professor Aref’s research has been supported by the National Science Foundation, the National Institute of Health, Purdue Research Foundation, Qatar National Research Foundation, CERIAS, Panasonic, and Microsoft Corp. In 2001, he received the CAREER Award from the National Science Foundation and in 2004, he received a Purdue University Faculty Scholar award. Professor Aref is a member of Purdue’s CERIAS. He is an associate editor of the ACM Transactions of Database Systems (ACM TODS) and the ACM Transactions of Spatial Algorithms and Systems (TSAS), and has been an editor of the VLDB Journal. He is a senior member of the IEEE, and a member of the ACM. Professor Aref is an executive committee member, co-founder, and the past chair of the ACM Special Interest Group on Spatial Information (SIGSPATIAL).','1000000155');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000156,'Optimization of Conjunctive Predicates for Main Memory Column Stores','Abstract:Optimization of queries with conjunctive predicates for main memory databases remains a challenging task. The traditional way of optimizing this class of queries relies on predicate ordering based on selectivities or ranks. However, the optimization of queries with conjunctive predicates is a much more challenging task, requiring a holistic approach in view of (1) an accurate cost model that is aware of CPU architectural characteristics such as branch (mis)prediction, (2) a storage layer, allowing for a streamlined query execution, (3) a common subexpression elimination technique, minimizing column access costs, and (4) an optimization algorithm able to pick the optimal plan even in presence of a small (bounded) estimation error. In this work, we embrace the holistic approach, and show its superiority experimentally. Current approaches typically base their optimization algorithms on at least one of two assumptions: (1) the predicate selectivities are assumed to be independent, (2) the predicate costs are assumed to be constant. Our approach is not based on these assumptions, as they in general do not hold.','http://www.vldb.org/pvldb/vol9/p1125-kastrati.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000157,'Parallelizing Query Optimization on Shared-Nothing Architectures','Abstract:Data processing systems offer an ever increasing degree of parallelism on the levels of cores, CPUs, and processing nodes. Query optimization must exploit high degrees of parallelism in order not to gradually become the bottleneck of query evaluation. We show how to parallelize query optimization at a massive scale. We present algorithms for parallel query optimization in left-deep and bushy plan spaces. At optimization start, we divide the plan space for a given query into partitions of equal size that are explored in parallel by worker nodes. At the end of optimization, each worker returns the optimal plan in its partition to the master which determines the globally optimal plan from the partition-optimal plans. No synchronization or data exchange is required during the actual optimization phase. The amount of data sent over the network, at the start and at the end of optimization, as well as the complexity of serial steps within our algorithms increase only linearly in the number of workers and in the query size. The time and space complexity of optimization within one partition decreases uniformly in the number of workers. We parallelize single- and multi-objective query optimization over a cluster with 100 nodes in our experiments, using more than 250 concurrent worker threads (Spark executors). Despite high network latency and task assignment overheads, parallelization yields speedups of up to one order of magnitude for large queries whose optimization takes minutes on a single node.','http://www.vldb.org/pvldb/vol9/p660-trummer.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000158,'Multiple Query Optimization on the D-Wave 2X Adiabatic Quantum Computer','Abstract:The D-Wave adiabatic quantum annealer solves hard combinatorial optimization problems leveraging quantum physics. The newest version features over 1000 qubits and was released in August 2015. We were given access to one of the first exemplars, currently hosted at NASA Ames research center in California, to explore the potential for hard optimization problems that arise in the context of databases. In this paper, we tackle the problem of multiple query optimization (MQO). We show how a MQO problem instance can be transformed into a mathematical formula that complies with the restrictive input format accepted by the quantum annealer. This formula is translated into ferromagnetic weights on and between qubits such that the configuration minimizing the input formula can be found via a process called adiabatic quantum annealing. We analyze the asymptotic growth rate of the number of required qubits in the MQO problem dimensions as the number of qubits is currently the main factor restricting applicability. We experimentally compare the performance of the quantum annealer against other MQO algorithms executed on a traditional computer. While the problem sizes that can be treated with 1000 qubits are still limited, we already find a narrow class of problem instances where the quantum annealer is three orders of magnitude faster than other approaches.','http://www.vldb.org/pvldb/vol9/p648-trummer.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000159,'k-Nearest Neighbors on Road Networks: A Journey in Experimentation and In-Memory Implementation [Experiments and Analysis Track]','Abstract:A k nearest neighbor (kNN) query on road networks retrieves the k closest points of interest (POIs) by their network distances from a given location. Today, in the era of ubiquitous mobile computing, this is a highly pertinent query. While Euclidean distance has been used as a heuristic to search for the closest POIs by their road network distance, its efficacy has not been thoroughly investigated. The most recent methods have shown significant improvement in query performance. Earlier studies, which proposed disk-based indexes, were compared to the current state-of-the-art in main memory. However, recent studies have shown that main memory comparisons can be challenging and require careful adaptation. This paper presents an extensive experimental investigation in main memory to settle these and several other issues. We use efficient and fair memory-resident implementations of each method to reproduce past experiments and conduct additional comparisons for several overlooked evaluations. Notably we revisit a previously discarded technique (IER) showing that, through a simple improvement, it is often the best performing technique.','http://www.vldb.org/pvldb/vol9/p492-abeywickrama.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000160,'SKYPE: Top-k Spatial-keyword Publish/Subscribe Over Sliding Window','Abstract:As the prevalence of social media and GPS-enabled devices, a massive amount of geo-textual data has been generated in a stream fashion, leading to a variety of applications such as location-based recommendation and information dissemination. In this paper, we investigate a novel real-time top-k monitoring problem over sliding window of streaming data; that is, we continuously maintain the top-k most relevant geo-textual messages (e.g., geo-tagged tweets) for a large number of spatial-keyword subscriptions (e.g., registered users interested in local events) simultaneously. To provide the most recent information under controllable memory cost, sliding window model is employed on the streaming geo-textual data. To the best of our knowledge, this is the first work to study top-k spatial-keyword publish/subscribe over sliding window. A novel system, called Skype (Top-k Spatial-keyword Publish/Subscribe), is proposed in this paper. In Skype, to continuously maintain top-k results for massive subscriptions, we devise a novel indexing structure upon subscriptions such that each incoming message can be immediately delivered on its arrival. Moreover, to reduce the expensive top-k re-evaluation cost triggered by message expiration, we develop a novel cost-based k-skyband technique to reduce the number of re-evaluations in a cost-effective way. Extensive experiments verify the great efficiency and effectiveness of our proposed techniques.','http://www.vldb.org/pvldb/vol9/p588-wang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000161,'Maximizing Bichromatic Reverse Spatial and Textual k Nearest Neighbor Queries','Abstract:The problem of maximizing bichromatic reverse k nearest neighbor queries (BRkNN) has been extensively studied in spatial databases. In this work, we present a related query for spatial-textual databases that finds an optimal location, and a set of keywords that maximizes the size of bichromatic reverse spatial textual k nearest neighbors (MaxBRSTkNN). Such a query has many practical applications including social media advertisements where a limited number of relevant advertisements are displayed to each user. The problem is to find the location and the text contents to include in an advertisement so that it will be displayed to the maximum number of users. The increasing availability of spatial-textual collections allows us to answer these queries for both spatial proximity and textual similarity. This paper is the first to consider the MaxBRSTkNN query. We show that the problem is NP-hard and present both approximate and exact solutions.','http://www.vldb.org/pvldb/vol9/p456-choudhury.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000162,'Cache locality is not enough: High-Performance Nearest Neighbor Search with Product Quantization Fast Scan','Abstract:Nearest Neighbor (NN) search in high dimension is an important feature in many applications (e.g., image retrieval, multimedia databases). Product Quantization (PQ) is a widely used solution which offers high performance, i.e. low response time, while preserving a high accuracy. PQ represents high-dimensional vectors (e.g., images descriptors) by compact codes. Hence, very large databases can be stored in memory, allowing NN queries without resorting to slow I/O operations. PQ computes distances to neighbors using cache-resident lookup tables, thus its performance remains limited by (i) the many cache accesses that the algorithm requires, and (ii) the inability to leverage SIMD instructions available on modern CPUs. In this paper, we advocate that cache locality is not sufficient for efficiency. To address these issues, we design a novel algorithm, PQ Fast Scan, that transforms the cache-resident lookup tables into small tables, sized to fit SIMD registers. This transformation allows (i) in-register lookups in place of cache accesses and (ii) an efficient SIMD implementation. PQ Fast Scan has the exact same accuracy as PQ, while having 4 to 5 times lower response time (e.g., for 25 million vectors, scan time is reduced from 74ms to 13ms).','http://www.vldb.org/pvldb/vol9/p288-andre.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000163,'WiSeDB: A Learning-based Workload Management Advisor for Cloud Databases','Abstract:Workload management for cloud databases deals with the tasks of resource provisioning, query placement, and query scheduling in a manner that meets the application’s performance goals while minimizing the cost of using cloud resources. Existing solutions have approached these three challenges in isolation while aiming to optimize a single performance metric. In this paper, we introduce WiSeDB, a learning-based framework for generating holistic workload management solutions customized to application-defined performance goals and workload characteristics. Our approach relies on supervised learning to train cost-effective decision tree models for guiding query placement, scheduling, and resource provisioning decisions. Applications can use these models for both batch and online scheduling of incoming workloads. A unique feature of our system is that it can adapt its offline model to stricter/looser performance goals with minimal re-training. This allows us to present to the application alternative workload management strategies that address the typical performance vs. cost trade-off of cloud services. Experimental results show that our approach has very low training overhead while offering low cost strategies for a variety of performance metrics and workload characteristics.','http://www.vldb.org/pvldb/vol9/p780-marcus.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000164,'Husky: Towards a More Efficient and Expressive Distributed Computing Framework','Abstract:Finding efficient, expressive and yet intuitive programming models for data-parallel computing system is an important and open problem. Systems like Hadoop and Spark have been widely adopted for massive data processing, as coarse-grained primitives like map and reduce are succinct and easy to master. However, sometimes over-simplified API hinders programmers from more fine-grained control and designing more efficient algorithms. Developers may have to resort to sophisticated domain-specific languages (DSLs), or even low-level layers like MPI, but this raises development cost---learning many mutually exclusive systems prolongs the development schedule, and the use of low-level tools may result in bug-prone programming. This motivated us to start the Husky open-source project, which is an attempt to strike a better balance between high performance and low development cost. Husky is developed mainly for in-memory large scale data mining, and also serves as a general research platform for designing efficient distributed algorithms. We show that many existing frameworks can be easily implemented and bridged together inside Husky, and Husky is able to achieve similar or even better performance compared with domain-specific systems.','http://www.vldb.org/pvldb/vol9/p420-yang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000166,'Human Factors in Crowdsourcing','Abstract:Today, crowdsourcing is used to “taskify” any job ranging from simple receipt transcription to collaborative editing, fan-subbing, citizen science, and citizen journalism. The crowd is typically volatile, its arrival and departure asynchronous, and its levels of attention and accuracy diverse. Tasks vary in complexity and may necessitate the participation of workers with varying degrees of expertise. Sometimes, workers need to collaborate explicitly and build on each other’s contributions to complete a single task. For example, in disaster reporting, CrowdMap allows geographically closed people with diverse and complementary skills, to work together to report details about the course of a typhoon or the aftermath of an earthquake. This uber-ization of human labor requires the understanding of workers’ motivation in completing a task, their ability to work together in collaborative tasks, as well as, helping workers find relevant tasks. For over 40 years, organization studies have thoroughly examined human factors that affect workers in physical workplaces. More recently, computer scientists have developed algorithms that verify and lever- age those findings in a virtual marketplace, in this case, a crowdsourcing platform. The goal of this tutorial is to review those two areas and discuss how their combination may improve workers’ experience, task throughput and outcome quality for both microtasks and collaborative tasks. We will start with a coverage of motivation theory, team formation, and learning worker profiles. We will then address open research questions that result from this review.','http://vldb2016.persistent.com/human_factors_in_crowdsourcing.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000167,'Online Entity Resolution Using an Oracle','Abstract:Entity resolution (ER) is the task of identifying all records in a database that refer to the same underlying entity. This is an expensive task, and can take a significant amount of money and time; the end-user may want to take decisions during the process, rather than waiting for the task to be completed. We formalize an online version of the entity resolution task, and use an oracle which correctly labels matching and non-matching pairs through queries. In this setting, we design algorithms that seek to maximize progressive recall, and develop a novel analysis framework for prior proposals on entity resolution with an oracle, beyond their worst case guarantees. Finally, we provide both theoretical and experimental analysis of the proposed algorithms.','http://www.vldb.org/pvldb/vol9/p384-firmani.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000168,'BLAST: a Loosely Schema-aware Meta-blocking Approach for Entity Resolution','Abstract:To identify records that refer to the same entity is a fundamental step for data integration. Blocking techniques are typically employed to reduce the complexity of this task by partitioning records into blocks and limiting the comparison to those records co-occurring in them. Generally, to deal with highly heterogeneous and noisy data (e.g. semi- structured data of the Web), these techniques rely on redundancy to reduce the chance of missing matches. Meta- blocking is the task of restructuring blocks generated by redundancy-based blocking techniques, removing superfluous comparisons. Existing meta-blocking approaches rely exclusively on schema-agnostic features. In this paper, we demonstrate how “loose” schema in- formation (i.e., statistics collected directly from the data) can be exploited to enhance the quality of the blocks in a holistic loosely schema-aware (meta-)blocking approach. We call it Blast (Blocking with Loosely-Aware Schema Techniques). We show how Blast can automatically extract this loose information by adopting a LSH-based step for efficiently scaling to large datasets. We experimentally demonstrate, on five real world datasets, how Blast outperforms the state-of-the-art unsupervised meta- blocking approaches, and, in many cases, also the supervised one.','http://www.vldb.org/pvldb/vol9/p1173-simonini.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000169,'QuERy: A Framework for Integrating Entity Resolution with Query Processing','Abstract:This paper explores an analysis-aware data cleaning architecture for a large class of SPJ SQL queries. In particular, we propose QuERy, a novel framework for integrating entity resolution (ER) with query processing. The aim of QuERy is to correctly and efficiently answer complex queries issued on top of dirty data. The comprehensive empirical evaluation of the proposed solution demonstrates its significant advantage in terms of efficiency over the traditional techniques for the given problem settings.','http://www.vldb.org/pvldb/vol9/p120-altwaijry.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000170,'Comparative Analysis of Approximate Blocking Techniques for Entity Resolution [Experiments and Analyses Track]','Abstract:Entity Resolution is a core task for merging data collections. Due to its quadratic complexity, it typically scales to large volumes of data through blocking: similar entities are clustered into blocks and pair-wise comparisons are executed only between co-occurring entities, at the cost of some missed matches. There are numerous blocking methods, and the aim of this work is to offer a comprehensive empirical survey, extending the dimensions of comparison beyond what is commonly available in the literature. We consider 17 state-of-the-art blocking methods and use 6 popular real datasets to examine the robustness of their internal configurations and their relative balance between effectiveness and time efficiency. We also investigate their scalability over a corpus of 7 established synthetic datasets that range from 10,000 to 2 million entities.','http://www.vldb.org/pvldb/vol9/p684-papadakis.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000171,'An Empirical Evaluation of Set Similarity Join Techniques','Abstract:Set similarity joins compute all pairs of similar sets from two collections of sets. We conduct extensive experiments on seven state-of- the-art algorithms for set similarity joins. These algorithms adopt a filter-verification approach. Our analysis shows that verification has not received enough attention in previous works. In practice, efficient verification inspects only a small, constant number of set elements and is faster than some of the more sophisticated filter techniques. Although we can identify three winners, we find that most algorithms show very similar performance. The key technique is the prefix filter, and AllPairs, the first algorithm adopting this technique is still a relevant competitor. We repeat experiments from previous work and discuss diverging results. All our claims are supported by a detailed analysis of the factors that determine the overall runtime.','http://www.vldb.org/pvldb/vol9/p636-mann.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000172,'Streaming Similarity Self-Join','Abstract:We introduce and study the problem of computing the similarity self-join in a streaming context (SSSJ), where the input is an unbounded stream of items arriving continuously. The goal is to find all pairs of items in the stream whose similarity is greater than a given threshold. The simplest formulation of the problem requires unbounded memory, and thus, it is intractable. To make the problem feasible, we introduce the notion of time-dependent similarity: the similarity of two items decreases with the difference in their arrival time. By leveraging the properties of this time-dependent similarity function, we design two algorithmic frameworks to solve the SSSJ problem. The first one, MiniBatch (MB), uses existing index-based filtering techniques for the static version of the problem, and combines them in a pipeline. The second framework, Streaming (STR), adds time filtering to the existing indexes, and integrates new time-based bounds deeply in the working of the algorithms. We also introduce a new indexing technique (L2), which is based on an existing state-of-the-art indexing technique (L2AP), but is optimized for the streaming case. Extensive experiments show that the STR algorithm, when instantiated with the L2 index, is the most scalable option across a wide array of datasets and parameters.','http://www.vldb.org/pvldb/vol9/p792-defranciscimorales.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000173,'An Efficient Partition Based Method for Exact Set Similarity Joins','Abstract:We study the exact set similarity join problem, which, given two collections of sets, finds out all the similar set pairs from the collections. Existing methods generally utilize the prefix filter based framework. They generate a prefix for each set and prune all the pairs whose prefixes are disjoint. However the pruning power is limited, because if two dissimilar sets share a common element in their prefixes, they cannot be pruned. To address this problem, we propose a partition-based framework. We design a partition scheme to partition the sets into several subsets and guarantee that two sets are similar only if they share a common subset. To improve the pruning power, we propose a mixture of the subsets and their 1-deletion neighborhoods (the subset of a set by eliminating one element). As there are multiple allocation strategies to generate the mixture, we evaluate different allocations and design a dynamic-programming algorithm to select the optimal one. However the time complexity of generating the optimal one is O(s^3) for a set with size s. To speed up the allocation selection, we develop a greedy algorithm with an approximation ratio of 2. To further reduce the complexity, we design an adaptive grouping mechanism, and the two techniques can reduce the complexity to O(s log s). Experimental results on three real-world datasets show our method achieves high performance and outperforms state-of-the-art methods by 2-5 times.','http://www.vldb.org/pvldb/vol9/p360-deng.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000174,'Fast Queries Over Heterogeneous Data Formats Through Engine Customization','Abstract:Industry and academia are continuously becoming more data-driven and data-intensive, relying on the analysis of a wide variety of heterogeneous datasets to gain insights. The different data models and formats pose a significant challenge on performing analysis over a combination of diverse datasets. Serving all queries using a single, general-purpose query engine is slow. On the other hand, using a specialized engine for each heterogeneous dataset increases complexity: queries touching a combination of datasets require an integration layer over the different engines. This paper presents a system design that natively supports heterogeneous data formats and also minimizes query execution times. For multi-format support, the design uses an expressive query algebra which enables operations over various data models. For minimal execution times, it uses a code generation mechanism to mimic the system and storage most appropriate to answer a query fast. We validate our design by building Proteus, a query engine which natively supports queries over CSV, JSON, and relational binary data, and which specializes itself to each query, dataset, and workload via code generation. Proteus outperforms state-of-the-art open-source and commercial systems on both synthetic and real-world workloads without being tied to a single data model or format, all while exposing users to a single query interface.','http://www.vldb.org/pvldb/vol9/p972-karpathiotakis.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000175,'Crowdsourced Top-k Algorithms: An Experimental Evaluation','Abstract:Crowdsourced top-k computation has attracted significant attention recently, thanks to emerging crowdsourcing platforms, e.g., Amazon Mechanical Turk and CrowdFlower. Crowdsourced top-k algorithms ask the crowd to compare the objects and infer the top-k objects based on the crowdsourced comparison results. The crowd may return incorrect answers, but traditional top-k algorithms cannot tolerate the errors from the crowd. To address this problem, the database and machine-learning communities have independently studied the crowdsourced top-k problem. The database community proposes the heuristic-based solutions while the machine-learning community proposes the learning-based methods (e.g., maximum likelihood estimation). However, these two types of techniques have not been compared systematically under the same experimental framework. Thus it is rather difficult for a practitioner to decide which algorithm should be adopted. Furthermore, the experimental evaluation of existing studies has several weaknesses. Some methods assume the crowd returns high-quality results and some algorithms are only tested on simulated experiments. To alleviate these limitations, in this paper we present a comprehensive comparison of crowdsourced top-k algorithms. Using various synthetic and real datasets, we evaluate each algorithm in terms of result quality and efficiency on real crowdsourcing platforms. We reveal the characteristics of different techniques and provide guidelines on selecting appropriate algorithms for various scenarios.','http://www.vldb.org/pvldb/vol9/p612-zhang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000176,'CLAMShell: Speeding up Crowds for Low-latency Data Labeling','Abstract:Data labeling is a necessary but often slow process that impedes the development of interactive systems for modern data analysis. Despite rising demand for manual data labeling, there is a surprising lack of work addressing its high and unpredictable latency. In this paper, we introduce \sys, a system that speeds up crowds in order to achieve consistently low-latency data labeling. We offer a taxonomy of the sources of labeling latency and study several large crowd-sourced labeling deployments to understand their empirical latency profiles. Driven by these insights, we comprehensively tackle each source of latency, both by developing novel techniques such as straggler mitigation and pool maintenance and by optimizing existing methods such as crowd retainer pools and active learning. We evaluate \sys{} in simulation and on live workers on Amazon’s Mechanical Turk, demonstrating that our techniques can provide an order of magnitude speedup and variance reduction over existing crowdsourced labeling strategies.','http://www.vldb.org/pvldb/vol9/p372-haas.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000177,'Dynamic Influence Analysis in Evolving Networks','Abstract:We propose the first real-time fully-dynamic index data structure designed for influence analysis on evolving networks. With this aim, we carefully redesign the data structure of the state-of-the-art sketching method introduced by Borgs et al., and construct corresponding update algorithms. Using this index, we present algorithms for two kinds of queries, influence estimation and influence maximization, which are strongly motivated by practical applications, such as viral marketing. We provide a thorough theoretical analysis, which guarantees the non-degeneracy of the solution accuracy after an arbitrary number of updates. Furthermore, we introduce a reachability-tree-based technique and a skipping method, which greatly reduce the time consumption required for edge/vertex deletions and vertex additions, respectively, and counter-based random number generators, which improve the space efficiency. Experimental evaluations using real dynamic networks with tens of millions of edges demonstrate the efficiency, scalability, and accuracy of our proposed indexing scheme. Specifically, it can reflect a graph modification within a time of several orders of magnitude smaller than that required to reconstruct an index from scratch, estimate the influence spread of a vertex set accurately within a millisecond, and select highly influential vertices at least ten times faster than state-of-the-art static algorithms.','http://www.vldb.org/pvldb/vol9/p1077-ohsaka.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000178,'From Competition to Complementarity: Comparative Influence Diffusion and Maximization','Abstract:Influence maximization is a well-studied problem that asks for a small set of influential users from a social network, such that by targeting them as early adopters, the expected total adoption through influence cascades over the network is maximized. However, almost all prior work focuses on cascades of a single propagating entity or purely-competitive entities. In this work, we propose the Comparative Independent Cascade (Com-IC) model that covers the full spectrum of entity interactions from competition to complementarity. In Com-IC, users’ adoption decisions depend not only on edge-level information propagation, but also on a node- level automaton whose behavior is governed by a set of model parameters, enabling our model to capture not only competition, but also complementarity, to any possible degree. We study two natural optimization problems, Self Influence Maximization and Complementary Influence Maximization, in a novel setting with complementary entities. Both problems are NP-hard, and we devise efficient and effective approximation algorithms via non-trivial techniques based on reverse-reachable sets and a novel ``sandwich approximation’’ strategy. The applicability of both techniques extends beyond our model and problems. Our experiments show that the proposed algorithms consistently outperform intuitive baselines in four real-world social networks, often by a significant margin. In addition, we learn model parameters from real user action logs.','http://www.vldb.org/pvldb/vol9/p60-lu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000179,'Data-driven Visual Graph Query Interface Construction and Maintenance: Challenges and Opportunities [Vision]','Abstract:Visual query interfaces make it easy for scientists and other non-expert users to query a data collection. Heretofore, visual query interfaces have been statically-constructed, independent of the data. In this paper we outline a vision of a different kind of interface, one that is built (in part) from the data. In our data-driven approach, the visual interface is dynamically constructed and maintained. A data-driven approach has many benefits such as reducing the cost in constructing and maintaining an interface, superior support for query formulation, and increased portability of the interface. We focus on graph databases, but our approach is applicable to several other kinds of databases such as JSON and XML.','http://www.vldb.org/pvldb/vol9/p984-bhowmick.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000180,'The shortest path is not always a straight line','Abstract:In this paper, we leverage the concept of the metric backbone to improve the efficiency of large-scale graph analytics. The metric backbone is the minimum subgraph that preserves the shortest paths of a weighted graph. We use the metric backbone in place of the original graph to compute various graph metrics exactly or with good approximation. By computing on a smaller graph, we improve the performance of graph analytics applications on two different systems, a batch graph processing system and a graph database. Further, we provide an algorithm for the computation of the metric backbone on large graphs. While one can compute the metric backbone by solving the all-pairs-shortest- paths problem, this approach incurs prohibitive time and space complexity for big graphs. Instead, we propose a heuristic that makes computing the metric backbone practical even for large graphs. Additionally, we analyze several real datasets of different sizes and domains and we show that we can approximate the metric backbone by removing only first-order semi-metric edges; edges for which a shorter two-hop path exists. We provide a distributed implementation of our algorithm and apply it in large scale scenarios. We evaluate our algorithm using a variety of real graphs, including a Facebook social network subgraph of 50 billion edges. We measure the impact of using the metric backbone on runtime performance in two graph management systems. We achieve query speedups of up to 6.7x in the Neo4j commercial graph database and job speedups of up to 6x in the Giraph graph processing system.','http://www.vldb.org/pvldb/vol9/p672-kalavri.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000181,'New Lower and Upper Bounds for Shortest Distance Queries on Terrains','Abstract:The increasing availability of massive and accurate laser data enables the processing of spatial queries on terrains. As shortest- path computation, an integral element of query processing, is inherently expensive on terrains, a key approach to enabling efficient query processing is to reduce the need for exact shortest-path computation in query processing. We develop new lower and upper bounds on terrain shortest distances that are provably tighter than any existing bounds. Unlike existing bounds, the new bounds do not rely on the quality of the triangulation. We show how use of the new bounds speeds up query processing by reducing the need for exact distance computations. Speedups of of nearly an order of magnitude are demonstrated empirically for well-known spatial queries.','http://www.vldb.org/pvldb/vol9/p168-kaul.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000182,'On Measuring the Lattice of Commonalities Among Several Linked Datasets','Abstract:A big number of datasets has been published according to the principles of Linked Data and this number keeps increasing. Although the ultimate objective is linking and integration, it is not currently evident how connected the current LOD cloud is. The classical measurements and visualizations of the LOD cloud count and show only the number of links that exist between pairs of datasets. Measurements (and indexes) that involve more than two datasets are not available although they would be useful in several tasks,e.g. (a) for obtaining complete information about one particular URI (or set of URIs) enriched (b) for aiding dataset discovery and dataset selection,(c) for assessing the connectivity between any set of datasets for quality checking and for monitoring their evolution over time, (d) for constructing visualizations that provide more informative overviews. Since it would be prohibitively expensive to perform all these measurements in a naive way, in this paper we introduce various indexes (and their construction algorithms) that can speedup such tasks. In brief, we introduce (i) a namespace-based prefix index, (ii) a sameAs catalog for computing the symmetric and transitive closure of the owl:sameAs relationships encountered in the datasets, (iii) a semantics-aware element index (that exploits the aforementioned indexes), and (iv) finally two lattice- based incremental algorithms for speeding up the computation of the intersection URIs of any set of datasets. We discuss the speedup obtained by the introduced indexes and algorithms through comparative results andfinally we report measurements about connectivity of the LOD cloud that have never been carried out in the past.','http://www.vldb.org/pvldb/vol9/p1101-mountantonakis.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000183,'Qualitative Data Cleaning','Abstract:Data quality is one of the most important problems in data management, since dirty data often leads to inaccurate data analytics results and wrong business decisions. Data cleaning exercise often consist of two phases: error detection and error repairing. Error detection techniques can either be quantitative or qualitative; and error repairing is performed by applying data transformation scripts or by involving human experts, and sometimes both. In this tutorial, we discuss the main facets and directions in designing qualitative data cleaning techniques. We present a taxonomy of current qualitative error detection techniques, as well as a taxonomy of current data repairing techniques. We will also discuss proposals for tackling the challenges for cleaning “big data” in terms of scale and distribution.','http://vldb2016.persistent.com/qualitative_data_cleaning.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000184,'Interactive Browsing and Navigation in Relational Databases','Abstract:Although database researchers have devoted considerable effort to helping database users formulate queries, many users still find it challenging to specify queries that involve joining tables. To help users construct join queries for exploring relational databases, we propose Etable, a novel presentation data model that provides users with a presentation-level interactive view. This view compactly presents one-to-many and many-to-many relationships within a single enriched table by allowing a cell to contain a set of entity references. Users can directly interact with the table and the entity references to incrementally construct complex queries. To enable users to explore data on a conceptual entity-relationship level, we also introduce a graph-based model, called typed graph model that provides an abstraction of relational databases. In a user study, participants performed a range of database querying tasks faster with Etable than with a commercial graphical query builder. Subjective feedback about Etable was also positive. All participants found that Etable was easier to learn and helpful for exploring databases.','http://www.vldb.org/pvldb/vol9/p1017-kahng.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000185,'ATHENA: An Ontology-Driven System for Natural Language Querying over Relational Data Stores','Abstract:In this paper, we present ATHENA, an ontology-driven system for natural language querying of complex relational databases. Natural language interfaces to databases enable users easy access to data, without the need to learn a complex query language, such as SQL. ATHENA uses domain specific ontologies, which describe the semantic entities, and their relationships in a domain. We propose a unique two-stage approach, where the input natural language query (NLQ) is first translated into an intermediate query language over the ontology, called OQL, and subsequently translated into SQL. Our two-stage approach allows us to decouple the physical layout of the data in the relational store from the semantics of the query, providing physical independence. Moreover, ontologies provide richer semantic information, such as inheritance and membership relations, that are lost in a relational schema. By reasoning over the ontologies, our NLQ engine is able to accurately capture the user intent. We study the effectiveness of our approach using three different workloads on top of geographical (GEO), academic (MAS) and financial (FIN) data. ATHENA achieves 100% precision on the GEO and MAS workloads, and 99% precision over the FIN workload which operates on a complex financial ontology. Moreover, ATHENA attains 87.2%, 88.3%, and 88.9% recall on the GEO, MAS, and FIN workloads, respectively.','http://www.vldb.org/pvldb/vol9/p1209-saha.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000186,'BlinkFill: Semi-supervised Programming By Example for Syntactic String Transformations','Abstract:The recent Programming By Example (PBE) techniques such as FlashFill have shown great promise for enabling end-users to perform data transformation tasks using input-output examples. Since examples are inherently an under-specification, there are typically a large number of hypotheses conforming to the examples, and the PBE techniques suffer from scalability issues for finding the intended program amongst the large space. We present a semi-supervised learning technique to significantly reduce this ambiguity by using the logical information present in the input data to guide the synthesis algorithm. We develop a data structure InputDataGraph to succinctly represent a large set of logical patterns that are shared across the input data, and use this graph to efficiently learn substring expressions in a new PBE system BlinkFill. We evaluate BlinkFill on 207 real-world benchmarks and show that BlinkFill is significantly faster (on average 41x) and requires fewer input-output examples (1.27 vs 1.53) to learn the desired transformations in comparison to FlashFill.','http://www.vldb.org/pvldb/vol9/p816-singh.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000187,'Query From Examples: An Iterative, Data-Driven Approach to Query Construction','Abstract:In this paper, we propose a new approach, called Query from Examples (QFE), to help non-expert database users construct SQL queries. Our approach, which is designed for users who might be unfamiliar with SQL, only requires that the user is able to determine whether a given output table is the result of his or her intended query on a given input database. To kick-start the construction of a target query Q, the user first provides a pair of inputs: a sample database D and an output table R which is the result of Q on D. As there will be many candidate queries that transform D to R, QFE winnows this collection by presenting the user with new database-result pairs that distinguish these candidates. Unlike previous approaches that use synthetic data for such pairs, QFE strives to make these distinguishing pairs as close to the original (D, R) pair as possible. By doing so, it seeks to minimize the effort needed by a user to determine if a new database-result pair is consistent with his or her desired query. We demonstrate the effectiveness and efficiency of our approach using real datasets from SQLShare, a cloud-based platform designed to help scientists utilize RDBMS technology for data analysis.','http://www.vldb.org/pvldb/vol8/p2158-li.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000188,'Exploiting Equality Generating Dependencies in Checking Chase Termination','Abstract:The chase is a well-known algorithm with a wide range of applications in data exchange, data cleaning, data integration, query optimization, and ontological reasoning. Since the chase evaluation might not terminate and it is undecidable whether it terminates, the problem of defining (decidable) sufficient conditions ensuring termination has received a great deal of interest in recent years. In this regard, several termination criteria have been proposed. One of the main weaknesses of current approaches is the limited analysis they perform on equality generating dependencies (EGDs). In this paper, we propose sufficient conditions ensuring that a set of dependencies has at least one terminating chase sequence. We propose novel criteria which are able to perform a more accurate analysis of EGDs. Specifically, we propose a new stratification criterion and an adornment algorithm. The latter can both be used as a termination criterion and be combined with current techniques to make them more effective, in that strictly more sets of dependencies are identified. Our techniques identify sets of dependencies that are not recognized by any of the current criteria.','http://www.vldb.org/pvldb/vol9/p396-calautti.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000189,'The Complexity of Resilience and Responsibility for Self-Join-Free Conjunctive Queries','Abstract:Several research thrusts in the area of data management have focused on understanding how changes in the data affect the output of a view or standing query. Example applications are explaining query results, propagating updates through views, and anonymizing datasets. An important aspect of this analysis is the problem of deleting a minimum number of tuples from the input tables to make a given Boolean query false, which we refer to as “the resilience of a query”. In this paper, we study the complexity of resilience for self-join-free conjunctive queries with arbitrary functional dependencies. The cornerstone of our work is the novel concept of triads, a simple structural property of a query that leads to the several dichotomy results we show in this paper. The concepts of triads and resilience bridge the connections between the problems of deletion propagation and causal responsibility, and allow us to substantially advance the known complexity results in these topics. Specifically, we show a dichotomy for the complexity of resilience, which identifies previously unknown tractable families for deletion propagation with source side-effects, and we extend this result to account for functional dependencies. Further, we identify a mistake in a previous dichotomy for causal responsibility, and offer a revised characterization based purely on the structural form of the query (presence or absence of triads). Finally, we extend the dichotomy for causal responsibility in two ways: (a) we account for functional dependencies in the input tables, and (b) we compute responsibility for sets of tuples specified via wildcards.','http://www.vldb.org/pvldb/vol9/p180-freire.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000190,'A Shifting Bloom Filter Framework for Set Queries','Abstract:Set queries are fundamental operations in computer systems and applications. This paper addresses the fundamental problem of designing a probabilistic data structure that can quickly process set queries using a small amount of memory. We propose a Shifting Bloom Filter (ShBF) framework for representing and querying sets. We demonstrate the effectiveness of ShBF using three types of popular set queries: membership, association, and multiplicity queries. The key novelty of ShBF is on encoding the auxiliary information of a set element in a location offset. In contrast, prior BF based set data structures allocate additional memory to store auxiliary information. To evaluate ShBF in comparison with prior art, we conducted experiments using real-world network traces. Results show that ShBF significantly advances the state-of-the-art on all three types of set queries.','http://www.vldb.org/pvldb/vol9/p408-yang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000191,'Decibel: The Relational Dataset Branching System','Abstract:As scientific endeavors and data analysis becomes increasingly collaborative, there is a need for data management systems that natively support the versioning or branching of datasets to enable concurrent analysis, cleaning, integration, manipulation, or curation of data across teams of individuals. Common practice for sharing and collaborating on datasets involves creating or storing multiple copies of the dataset, one for each stage of analysis, with no provenance information tracking the relationships between these datasets. This results not only in wasted storage, but also makes it challenging to track and integrate modifications made by different users to the same dataset. In this paper, we introduce the Relational Dataset Branching System, Decibel, a new relational storage system with built-in version control designed to address these shortcomings. We present our initial design for Decibel and provide a thorough evaluation of three versioned storage engine designs that focus on efficient query processing with minimal storage overhead. We also develop an exhaustive benchmark to enable the rigorous testing of these and future versioned storage engine designs.','http://www.vldb.org/pvldb/vol9/p624-maddox.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000192,'Magellan: Toward Building Entity Matching Management Systems [Innovative Systems and Applications]','Abstract:Entity matching (EM) has been an important data integration problem and will become even more important in the age of Big Data. However, most EM works have focused only on developing matching algorithms. Going forward we argue that significantly more attention should be devoted to building EM systems. We discuss four major limitations of current EM systems, then describe Magellan, a new kind of EM system. Compared to current EM systems, Magellan is novel in several important aspects. (1) It provides a how-to guide that tells users what to do in each EM scenario, step by step. (2) It provides tools to help users do these steps. The tools seek to cover the entire EM pipeline, not just matching and blocking as current EM systems do. (3) Magellan is built on top of the data analysis and Big Data stacks in Python, allowing it to borrow a rich set of capabilities in data cleaning, IE, visualization, learning, etc. (4) In contrast to current ``closed world’’ EM systems, Magellan is a new kind of system that we call ``open world’’ systems, but building such systems raises significant challenges. We present extensive experiments with 44 students and many real users at various organizations that show the promise of Magellan.','http://www.vldb.org/pvldb/vol9/p1197-pkonda.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000193,'Distributed Data Deduplication','Abstract:Data deduplication refers to the process of identifying tuples in a relation that refer to the same real world entity. The complexity of the problem is inherently quadratic with respect to the number of tuples, since a similarity value must be computed for every pair of tuples. In order to avoid comparing tuple pairs that are obviously non-duplicates, matching algorithms use blocking techniques that divide the tuples into blocks and compare only tuples within the same block. However, even with the use of blocking, data deduplication remains a costly problem for large datasets. In this paper, we show how to further speed up data deduplication by leveraging parallelism in a shared-nothing computing environment. Our main contribution is a distribution strategy, called \disdedup, that minimizes the maximum workload across all worker nodes and provides strong theoretical guarantees. We demonstrate the effectiveness of our proposed strategy by performing extensive experiments on both synthetic datasets with varying block size distributions, as well as real world datasets.','http://www.vldb.org/pvldb/vol9/p864-chu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000194,'The iBench Integration Metadata Generator','Abstract:Given the maturity of the data integration field it is surprising that rigorous empirical evaluations of research ideas are so scarce. We identify a major roadblock for empirical work the lack of comprehensive metadata generators that can be used to create benchmarks for different integration tasks. This makes it difficult to compare integration solutions, understand their generality, and understand their performance. We present iBench, the first metadata generator that can be used to evaluate a wide-range of integration tasks (data exchange, mapping creation, mapping composition, schema evolution, among many others). iBench permits control over the size and characteristics of the metadata it generates (schemas, constraints, and mappings). Our evaluation demonstrates that iBench can efficiently generate very large, complex, yet realistic scenarios with different characteristics. We also present an evaluation of three mapping creation systems using iBench and show that the intricate control that iBench provides over metadata scenarios can reveal new and important empirical insights. iBench is an open-source, extensible tool that we are providing to the community. We believe it will raise the bar for empirical evaluation and comparison of data integration systems.','http://www.vldb.org/pvldb/vol9/p108-arocena.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000195,'Schema-agnostic vs Schema-based Configurations for Blocking Methods on Homogeneous Data','Abstract:Entity Resolution constitutes a core task for data integration that, due to its quadratic complexity, typically scales to large datasets through blocking methods. These can be configured in two ways. The schema-based configuration relies on schema information in order to select signatures of high distinctiveness and low noise, while the schema-agnostic one treats every token from all attribute values as a signature. The latter approach has significant potential, as it requires no fine-tuning by human experts and it applies to heterogeneous data. Yet, there is no systematic study on its relative performance with respect to the schema-based configuration. This work covers this gap by comparing analytically the two configurations in terms of effectiveness, time efficiency and scalability. We apply them to 9 established blocking methods and to 11 benchmarks of structured data. We provide valuable insights into the internal functionality of the blocking methods with the help of a novel taxonomy. Our studies reveal that the schema-agnostic configuration offers unsupervised and robust definition of blocking keys under versatile settings, trading a higher computational cost for a consistently higher recall than the schema-based one. It also enables the use of state-of-the-art blocking methods without schema knowledge.','http://www.vldb.org/pvldb/vol9/p312-papadakis.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000196,'Effective Community Search for Large Attributed Graphs','Abstract:Given a graph $G$ and a vertex $q \in G$, the {\it community search} query returns a subgraph of $G$ that contains vertices related to $q$. Communities, which are prevalent in {\it attributed graphs} such as social networks and knowledge bases, can be used in emerging applications such as product advertisement and setting up of social events. In this paper, we investigate the {\it attributed community query} (or ACQ), which returns an {\it attributed community} (AC) for an {\it attributed graph}. The AC is a subgraph of $G$, which satisfies both {\it structure cohesiveness} (i.e., its vertices are tightly connected) and {\it keyword cohesiveness} (i.e., its vertices share common keywords). The AC enables a better understanding of how and why a community is formed (e.g., members of an AC have a common interest in music, because they all have the same keyword ``music’’). An AC can be ``personalized’’; for example, an ACQ user may specify that an AC returned should be related to the keywords like ``sports’’. To enable efficient AC search, we develop the CL-tree structure and three algorithms based on it. We evaluate our solutions on four large graphs, namely Flickr, DBLP, Tencent, and DBpedia. Our results show that ACs are more effective and efficient than existing community retrieval approaches. Moreover, an AC contains more precise and personalized information than existing community search and detection methods.','http://www.vldb.org/pvldb/vol9/p1233-fang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000197,'Approximate Closest Community Search in Networks','Abstract:Recently, there has been significant interest in the study of the community search problem in social and information networks: given one or more query nodes, find densely connected communities containing the query nodes. However, most existing studies do not address the ``free rider” issue, that is, nodes far away from query nodes and irrelevant to them are included in the detected community. Some state-of-the-art models have attempted to address this issue, but not only are their formulated problems NP-hard, they do not admit any approximations without restrictive assumptions, which may not always hold in practice. In this paper, given an undirected graph $G$ and a set of query nodes $Q$, we study community search using the $k$-truss based community model. We formulate our problem of finding a closest truss community (CTC), as finding a connected $k$-truss subgraph with the largest $k$ that contains $Q$, and has the minimum diameter among such subgraphs. We prove this problem is NP-hard. Furthermore, it is NP-hard to approximate the problem within a factor $(2-\varepsilon)$, for any $\ varepsilon >0 $. However, we develop a greedy algorithmic framework, which first finds a CTC %connected $k$-truss graph with the largest $k$ containing $Q$, and then iteratively removes the furthest nodes from $Q$, from the graph. The method achieves 2-approximation to the optimal solution. To further improve the efficiency, we make use of a compact truss index and develop efficient algorithms for $k$-truss identification and maintenance as nodes get eliminated. In addition, using bulk deletion optimization and local exploration strategies, we propose two more efficient algorithms. One of them trades some approximation quality for efficiency while the other is a very efficient heuristic. Extensive experiments on 6 real-world networks show the effectiveness and efficiency of our community model and search algorithms.','http://www.vldb.org/pvldb/vol9/p276-huang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000198,'Ego-net Community Mining Applied to Friend Suggestion','Abstract:In this paper, we present a study of the community structure of ego-networks --- the graphs representing the connections among the neighbors of a node --- for several online social networks. Toward this goal, we design a new technique to efficiently build and cluster all the ego-nets of a graph in parallel (note that even just building the ego-nets efficiently is challenging on large networks). Our experimental findings are quite compelling: at a microscopic level it is easy to detect high quality communities. Leveraging on this fact we, then, develop new features for friend suggestion based on co-occurrences of two nodes in different ego-nets’ communities. Our new features can be computed efficiently on very large scale graphs by just analyzing the neighborhood of each node. Furthermore, we prove formally on a stylized model, and by experimental analysis that this new similarity measure outperforms the classic local features employed for friend suggestions.','http://www.vldb.org/pvldb/vol9/p324-epasto.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000199,'Tracking the Conductance of Rapidly Evolving Topic-Subgraphs','Abstract:Monitoring the formation and evolution of communities in large online social networks such as Twitter is an important problem that has generated considerable interest in both industry and academia. Fundamentally, the problem can be cast as studying evolving sub-graphs (each subgraph corresponding to a topical community) on an underlying social graph – with users as nodes and the connectionbetween them as edges. A key metric of interest in this setting istracking the changes to the conductance of subgraphs induced byedge activations. This metric quantifies how well or poorly connected a subgraph is to the rest of the graph relative to its internal connections. Conductance has been demonstrated to be of greatuse in many applications, such as identifying bursty topics, tracking the spread of rumors, and so on. However, tracking this simpl emetric presents a considerable scalability challenge – the underlying social network is large, the number of communities that are activeat any moment is large, the rate at which these communities evolveis high, and moreover, we need to track conductance in real-time. We address these challenges in this paper. We propose an in-memory approximation called BloomGraphs to store and update these (possibly overlapping) evolving subgraphs. As the name suggests, we use Bloom filters to represent an approximation of the underlying graph. This representation is compact and computationally efficient to maintain in the presence of updates. This is especially important when we need to simultaneously maintain thousands of evolving subgraphs. BloomGraphs are used in computing and tracking conductance of these subgraphs as edge-activations arrive. BloomGraphs have several desirable properties in the context of this application, including a small memory footprint and efficient updateability. We also demonstrate mathematically that the error incurred in computing conductance is one-sided and that in the case of evolving subgraphs the change in approximate conductance has the same sign as the change in exact conductance inmost cases. We validate the effectiveness of BloomGraphs through extensive experimentation on large Twitter graphs and other social networks.','http://www.vldb.org/pvldb/vol8/p2170-galhotra.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000200,'Streaming Anomaly Detection Using Randomized Matrix Sketching','Abstract:Data is continuously being generated from sources such as machines, network traffic, application logs, etc. Timely and accurate detection of anomalies in massive data streams has important applications such as in preventing machine failures, intrusion detection, and dynamic load balancing. In this paper, we introduce a novel (unsupervised) anomaly detection framework which can be used to detect anomalies in a streaming fashion by making only one pass over the data while utilizing limited storage. We adapt ideas from matrix sketching to maintain, in a streaming model, a set of few orthogonal vectors that form a good approximate basis for all the observed data. Using this constructed orthogonal basis, anomalies in new incoming data are detected based on a simple reconstruction error test. We theoretically prove that our algorithm compares favorably with an offline approach based on expensive global singular value decomposition (SVD) updates. Additionally, we apply ideas from randomized low-rank matrix approximations to further speedup the algorithm. The experimental results show the effectiveness and efficiency of our approach over other popular scalable anomaly detection approaches.','http://www.vldb.org/pvldb/vol9/p192-huang.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000201,'Index-Assisted Hierarchical Computations in Main-Memory RDBMS','Abstract:We address the problem of expressing and evaluating computations on hierarchies represented as database tables. Engine support for such computations is very limited today, and so they are usually outsourced into stored procedures or client code. Recently, data model and SQL language extensions were proposed to conveniently represent and work with hierarchies. On that basis we introduce a concept of structural grouping to relational algebra, provide concise syntax to express a class of useful computations, and discuss algorithms to evaluate them efficiently by exploiting available indexing schemes. This extends the versatility of RDBMS towards a great many use cases dealing with hierarchical data.','http://www.vldb.org/pvldb/vol9/p1065-brunel.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000202,'DEXTER: Large-Scale Discovery and Extraction of Product Specifications on the Web','Abstract:The web is a rich resource of structured data. There has been an increasing interest in using web structured data for many applications such as data integration, web search and question answering. In this paper, we present DEXTER, a system to find product sites on the web, and detect and extract product specifications from them. Since product specifications exist in multiple product sites, our focused crawler relies on search queries and backlinks to discover product sites. To perform the detection, and handle the high diversity of specifications in terms of content, size and format, our system uses supervised learning to classify HTML fragments (e.g.,tables and lists) present in web pages as specifications or not. To perform large- scale extraction of the attribute-value pairs from the HTML fragments identified by the specification detector, DEXTER adopts two lightweight strategies: a domain-independent and unsu-pervised wrapper method, which relies on the observation that these HTML fragments have very similar structure; and a combination of this strategy with a previous approach, which infers extraction patterns by annotations generated by automatic but noisy annotators.The results show that our crawler strategy to locate product specification pages is effective: (1) it discovered 146M product specification pages from 3,005 sites and 9 different categories; (2) the specification detector obtains high values of F-measure (close to 0.9) over a heterogeneous set of product specifications; and (3) our efficient wrapper methods for attribute-value extraction get very high values of precision (0.92) and recall (0.95) and obtain better results than a state-of-the-art, supervised rule-based wrapper.','http://www.vldb.org/pvldb/vol8/p2194-qiu.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000203,'Walking in the Cloud: Parallel SimRank at Scale','Abstract:Despite its popularity, SimRank is computationally costly, in both time and space. In particular, its recursive nature poses a great challenge in using modern distributed computing power, and also prevents querying similarities individually. Existing solutions suffer greatly from these practical issues. In this paper, we break such dependency for maximum efficiency possible. Our method consists of offline and online phases. In offline phase, a length-$n$ indexing vector is derived by solving a linear system in parallel. At online query time, the similarities are computed instantly from the index vector. Throughout, the Monte Carlo method is used to maximally reduce time and space. Our algorithm, called CloudWalker, is highly parallelizable, with only linear time and space. Remarkably, it responses to both single-pair and single-source queries in constant time. CloudWalker is orders of magnitude more efficient and scalable than existing solutions for large-scale problems. Implemented on Spark with 10 machines and tested on the web-scale clue-web graph with 1 billion nodes and 43 billion edges, it takes 110 hours for offline indexing, 64 seconds for a single-pair query, and 188 seconds for a single-source query. To the best of our knowledge, our work is the first to report results on clue-web, which is 10x larger than the largest graph ever reported for SimRank computation.','http://www.vldb.org/pvldb/vol9/p24-li.pdf');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000204,'Ph.D. Workshop','1000000204','http://vldb2016.persistent.com/accepted_papers_phd.php');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000205,'Accelerating Data Management Systems (ADMS) and In-memory Data Management & Analytics (IMDM)','1000000205','http://www.adms-conf.org/');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000206,'Data Management and Analytics for Medicine and Healthcare (DMAH)','1000000206','http://dmah.info/');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000207,'Social Data Analytics and Management (SoDAM)','1000000207','http://dbxlab.uta.edu/SoDAM16.html');
INSERT INTO public.paper (id,title,abstract,url) VALUES (
1000000208,'Big Data Open-Source Systems (BOSS) / Polyglot','1000000208','http://boss.dima.tu-berlin.de/');

﻿INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000000,'Tutorial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000000,'T1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000001,'Tutorial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000001,'T2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000002,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000002,'W1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000003,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000003,'W2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000004,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000004,'W3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000005,'Tutorial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000005,'T3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000006,'Tutorial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000006,'T4');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000007,'Conference');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000007,'Inauguration');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000008,'Keynote');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000008,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000026,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000026,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000026,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000026,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000026,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000026,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000027,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000027,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000027,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000027,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000027,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000027,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000009,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000009,'R1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000009,'Transaction');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000009,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000010,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000010,'R1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000010,'Transaction');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000010,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000011,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000011,'R1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000011,'Transaction');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000011,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000012,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000012,'R1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000012,'Transaction');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000012,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000013,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000013,'R2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000013,'RDF');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000013,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000013,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000028,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000028,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000028,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000028,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000028,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000028,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000029,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000029,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000029,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000029,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000029,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000029,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000030,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000030,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000030,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000030,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000030,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000030,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000014,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000014,'R2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000014,'RDF');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000014,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000014,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000015,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000015,'R2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000015,'RDF');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000015,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000015,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000016,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000016,'R2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000016,'RDF');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000016,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000016,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'R3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000017,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'R3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000018,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000031,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000031,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000031,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000031,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000031,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000031,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000032,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000032,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000032,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000032,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000032,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000032,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000033,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000033,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000033,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000033,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000033,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000033,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000034,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000034,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000034,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000034,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000034,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000034,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'R3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000019,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'R3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000020,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'I1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'I1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'I1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'I1:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000025,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000025,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000025,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000025,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000025,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000025,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000035,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000035,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000035,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000035,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000035,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000035,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000036,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000036,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000036,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000036,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000036,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000036,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000037,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000037,'1a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000037,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000037,'Engines');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000037,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000037,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000038,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000038,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000038,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000039,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000039,'R4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000039,'Memory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000039,'Management');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000040,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000040,'R4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000040,'Memory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000040,'Management');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000041,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000041,'R4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000041,'Memory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000041,'Management');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000042,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000042,'R4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000042,'Memory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000042,'Management');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000048,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000048,'R6:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000048,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000048,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000048,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000048,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000043,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000043,'R5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000043,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000043,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000043,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000043,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000044,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000044,'R5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000044,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000044,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000044,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000044,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000045,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000045,'R5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000045,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000045,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000045,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000045,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000046,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000046,'R5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000046,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000046,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000046,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000046,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000047,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000047,'R6:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000047,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000047,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000047,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000047,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000049,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000049,'R6:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000049,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000049,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000049,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000049,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000050,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000050,'R6:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000050,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000050,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000050,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000050,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'I2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'I2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'I2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'I2:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'Platforms');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000055,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000055,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000055,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000055,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000055,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000055,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000056,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000056,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000056,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000056,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000056,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000056,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000057,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000057,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000057,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000057,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000057,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000057,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000058,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000058,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000058,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000058,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000058,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000058,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000059,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000059,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000059,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000059,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000059,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000059,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000060,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000060,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000060,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000060,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000060,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000060,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000061,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000061,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000061,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000061,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000061,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000061,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000062,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000062,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000062,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000062,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000062,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000062,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000063,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000063,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000063,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000063,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000063,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000063,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000064,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000064,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000064,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000064,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000064,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000064,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000065,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000065,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000065,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000065,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000065,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000065,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000066,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000066,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000066,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000066,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000066,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000066,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000067,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000067,'2a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000067,'Interactive');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000067,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000067,'Exploratory');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000067,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000068,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000068,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000068,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000069,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000069,'R7:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000069,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000069,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000069,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000070,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000070,'R7:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000070,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000070,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000070,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000071,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000071,'R7:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000071,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000071,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000071,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000072,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000072,'R7:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000072,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000072,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000072,'-1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000073,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000073,'R8:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000073,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000073,'Security');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000073,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000073,'Privacy');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000074,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000074,'R8:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000074,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000074,'Security');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000074,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000074,'Privacy');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000075,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000075,'R8:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000075,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000075,'Security');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000075,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000075,'Privacy');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000076,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000076,'R9:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000076,'Ranking');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000076,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000077,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000077,'R9:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000077,'Ranking');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000077,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000078,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000078,'R9:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000078,'Ranking');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000078,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000079,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000079,'R9:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000079,'Ranking');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000079,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'I3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'I3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'I3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'I3:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000084,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000084,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000084,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000084,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000084,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000084,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000085,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000085,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000085,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000085,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000085,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000085,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000086,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000086,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000086,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000086,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000086,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000086,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000087,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000087,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000087,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000087,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000087,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000087,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000088,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000088,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000088,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000088,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000088,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000088,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000089,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000089,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000089,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000089,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000089,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000089,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000090,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000090,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000090,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000090,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000090,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000090,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000091,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000091,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000091,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000091,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000091,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000091,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000092,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000092,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000092,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000092,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000092,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000092,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000093,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000093,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000093,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000093,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000093,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000093,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000094,'Demo');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000094,'3a:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000094,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000094,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000094,'Semistructured');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000094,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000095,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000095,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000095,'3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'R12:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000107,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000096,'Keynote');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000096,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000097,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000097,'R10:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000097,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000097,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000097,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000097,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000098,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000098,'R10:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000098,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000098,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000098,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000098,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000099,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000099,'R10:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000099,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000099,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000099,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000099,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000100,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000100,'R10:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000100,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000100,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000100,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000100,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'R11:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000101,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'R11:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000102,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'R11:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000103,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'R11:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000104,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'R12:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000105,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'R12:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000106,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'R12:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000108,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'I4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'I4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'I4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'I4:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'Engine');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'Architectures');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000113,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000113,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000113,'4');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000114,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000114,'R13:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000114,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000114,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000114,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000114,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000115,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000115,'R13:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000115,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000115,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000115,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000115,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000116,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000116,'R13:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000116,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000116,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000116,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000116,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000117,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000117,'R13:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000117,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000117,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000117,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000117,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000118,'Panel');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'R21:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000165,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000119,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000119,'R14:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000119,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000119,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000119,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000119,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000120,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000120,'R14:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000120,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000120,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000120,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000120,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000121,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000121,'R14:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000121,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000121,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000121,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000121,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000122,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000122,'R14:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000122,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000122,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000122,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000122,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000123,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000123,'R15:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000123,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000123,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000123,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000123,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000124,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000124,'R15:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000124,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000124,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000124,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000124,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000125,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000125,'R15:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000125,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000125,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000125,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000125,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000126,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000126,'R15:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000126,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000126,'Cleaning');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000126,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000126,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000127,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000127,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000127,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000128,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000128,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000128,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000129,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000129,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000129,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000130,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000130,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000130,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000131,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000131,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000131,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000132,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000132,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000132,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000133,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000133,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000133,'5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'R16:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000134,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'R16:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000135,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'R16:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000136,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'R16:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000137,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000138,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000138,'R17:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000138,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000138,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000138,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000138,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000139,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000139,'R17:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000139,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000139,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000139,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000139,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000140,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000140,'R17:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000140,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000140,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000140,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000140,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000141,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000141,'R17:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000141,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000141,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000141,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000141,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000142,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000142,'R18:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000142,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000142,'Hardware-Software');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000142,'Codesign');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000143,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000143,'R18:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000143,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000143,'Hardware-Software');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000143,'Codesign');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000144,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000144,'R18:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000144,'Database');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000144,'Hardware-Software');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000144,'Codesign');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000145,'I5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000145,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000145,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000145,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000145,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000146,'I5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000146,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000146,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000146,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000146,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000147,'I5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000147,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000147,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000147,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000147,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000148,'I5:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000148,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000148,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000148,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000148,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000149,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000149,'Posters');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000149,'6');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000150,'VLDB');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000150,'Awards');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000150,'Session');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000151,'VLDB');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000151,'Awards');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000151,'Session');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000152,'VLDB');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000152,'Awards');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000152,'Session');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000153,'VLDB');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000153,'Awards');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000153,'Session');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000154,'Endowment');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000154,'Award');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000154,'Talk');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000154,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000155,'Endowment');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000155,'Award');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000155,'Talk');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000155,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000156,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000156,'R19:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000156,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000156,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000156,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000156,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000157,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000157,'R19:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000157,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000157,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000157,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000157,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000158,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000158,'R19:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000158,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000158,'Optimization');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000158,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000158,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'R20:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000159,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'R20:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000160,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'R20:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000161,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'R20:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'Spatial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'Queries');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000162,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'R21:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000163,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'R21:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'Distributed');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'Cloud');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'Systems');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000164,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000166,'Tutorial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000166,'T5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000167,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000167,'R22:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000167,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000167,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000167,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000167,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000168,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000168,'R22:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000168,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000168,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000168,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000168,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000169,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000169,'R22:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000169,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000169,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000169,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000169,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000170,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000170,'R22:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000170,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000170,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000170,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000170,'1');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000171,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000171,'R23:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000171,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000171,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000171,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000171,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000172,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000172,'R23:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000172,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000172,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000172,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000172,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000173,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000173,'R23:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000173,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000173,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000173,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000173,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000174,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000174,'R23:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000174,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000174,'Execution');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000174,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000174,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000175,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000175,'R24:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000175,'Social');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000175,'Networks');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000175,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000175,'Crowdsourcing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000176,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000176,'R24:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000176,'Social');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000176,'Networks');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000176,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000176,'Crowdsourcing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000177,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000177,'R24:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000177,'Social');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000177,'Networks');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000177,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000177,'Crowdsourcing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000178,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000178,'R24:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000178,'Social');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000178,'Networks');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000178,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000178,'Crowdsourcing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000179,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000179,'R25:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000179,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000179,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000179,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000179,'3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000180,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000180,'R25:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000180,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000180,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000180,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000180,'3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000181,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000181,'R25:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000181,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000181,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000181,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000181,'3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000182,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000182,'R25:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000182,'Graph');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000182,'Processing');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000182,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000182,'3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000183,'Tutorial');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000183,'T6');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'R26:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000184,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'R26:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000185,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'R26:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000186,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'R26:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000187,'-2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'R27:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000188,'-3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'R27:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000189,'-3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'R27:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000190,'-3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'R27:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'Data');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'Query');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'Models');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000191,'-3');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000192,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000192,'R28:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000192,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000192,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000192,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000192,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000193,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000193,'R28:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000193,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000193,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000193,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000193,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000194,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000194,'R28:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000194,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000194,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000194,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000194,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000195,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000195,'R28:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000195,'Entity');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000195,'Matching');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000195,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000195,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000196,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000196,'R29:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000196,'Community');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000196,'Search');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000196,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000196,'Mining');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000197,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000197,'R29:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000197,'Community');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000197,'Search');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000197,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000197,'Mining');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000198,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000198,'R29:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000198,'Community');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000198,'Search');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000198,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000198,'Mining');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000199,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000199,'R29:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000199,'Community');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000199,'Search');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000199,'and');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000199,'Mining');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000200,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000200,'R30:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000200,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000200,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000200,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000200,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000201,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000201,'R30:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000201,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000201,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000201,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000201,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000202,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000202,'R30:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000202,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000202,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000202,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000202,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000203,'Research');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000203,'R30:');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000203,'Scalable');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000203,'Analytics');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000203,'-');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000203,'2');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000204,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000204,'W4');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000205,'Joint');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000205,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000205,'W5');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000206,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000206,'W6');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000207,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000207,'W7');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000208,'Workshop');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000208,'W8');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000021,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000022,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000023,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000024,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000051,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000052,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000053,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000054,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000080,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000081,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000082,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000083,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000109,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000110,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000111,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000112,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000145,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000146,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000147,'Industry');
INSERT INTO public.paperkeyword (paperid,keyword) VALUES (
1000000148,'Industry');
--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: eliti
--

INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51ea', 'Ashwin Machanavajjhala', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'amachanavajjhala@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51ec', 'Xi He', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'xhe@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51ef', 'Michael Hay', 'a92eb70e-3e0e-497a-ab08-38aec34e51ee', 'mhay@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51f3', 'Alexander Boehm', 'a92eb70e-3e0e-497a-ab08-38aec34e51f2', 'aboehm@sap.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51f6', 'Jens Dittrich', 'a92eb70e-3e0e-497a-ab08-38aec34e51f5', 'jdittrich@saarland.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51f9', 'Niloy Mukherjee', 'a92eb70e-3e0e-497a-ab08-38aec34e51f8', 'nmukherjee@linkedin.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51fc', 'Ippokratis Pandis', 'a92eb70e-3e0e-497a-ab08-38aec34e51fb', 'ipandis@amazon.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e51ff', 'Rajkumar Sen', 'a92eb70e-3e0e-497a-ab08-38aec34e51fe', 'rsen@memsql.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5213', 'Raghunath Nambiar', 'a92eb70e-3e0e-497a-ab08-38aec34e5212', 'rnambiar@usa.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5216', 'Meikel Poess', 'a92eb70e-3e0e-497a-ab08-38aec34e5215', 'mpoess@usa.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5219', 'Meichun Hsu', 'a92eb70e-3e0e-497a-ab08-38aec34e5218', 'mhsu@hewlett-packard.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e521b', 'Malu Castellanos', 'a92eb70e-3e0e-497a-ab08-38aec34e5218', 'mcastellanos@hewlett-packard.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e521e', 'Panos K Chrysanthis', 'a92eb70e-3e0e-497a-ab08-38aec34e521d', 'pchrysanthis@pittsburgh.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5222', 'Christoph Quix', 'a92eb70e-3e0e-497a-ab08-38aec34e5221', 'cquix@germany.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5225', 'Rihan Hai', 'a92eb70e-3e0e-497a-ab08-38aec34e5224', 'rhai@germany.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5228', 'Hongzhi Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e5227', 'hwang@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e522b', 'Venkat N. Gudivada', 'a92eb70e-3e0e-497a-ab08-38aec34e522a', 'vgudivada@usa.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e522e', 'Laure Berti', 'a92eb70e-3e0e-497a-ab08-38aec34e522d', 'lberti@qatar.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5232', 'Paul Larson', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'plarson@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5234', 'Justin Levandoski', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'jlevandoski@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5237', 'Vineet Chaoji', 'a92eb70e-3e0e-497a-ab08-38aec34e5236', 'vchaoji@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5239', 'Rajeev Rastogi', 'a92eb70e-3e0e-497a-ab08-38aec34e5236', 'rrastogi@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e523b', 'Gourav Roy', 'a92eb70e-3e0e-497a-ab08-38aec34e5236', 'groy@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e523e', 'Anand Deshpande', 'a92eb70e-3e0e-497a-ab08-38aec34e523d', 'adeshpande@systems.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5241', 'T. M. Vijayaraman', 'a92eb70e-3e0e-497a-ab08-38aec34e523d', 'tvijayaraman@systems.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5243', 'Surajit Chaudhuri', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'schaudhuri@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5246', 'Jayant Haritsa', 'a92eb70e-3e0e-497a-ab08-38aec34e5245', 'jharitsa@science.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5249', 'Mukesh Mohania', 'a92eb70e-3e0e-497a-ab08-38aec34e5248', 'mmohania@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e524c', 'Prof. Ion Stoica', 'a92eb70e-3e0e-497a-ab08-38aec34e524b', 'pstoica@stoica.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e524f', 'University of California', 'a92eb70e-3e0e-497a-ab08-38aec34e524e', 'ucalifornia@california.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5253', 'Cong Yan', 'a92eb70e-3e0e-497a-ab08-38aec34e5252', 'cyan@washington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5255', 'Alvin Cheung', 'a92eb70e-3e0e-497a-ab08-38aec34e5252', 'acheung@washington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5258', 'Yuan Yuan', 'a92eb70e-3e0e-497a-ab08-38aec34e5257', 'yyuan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e525a', 'Kaibo Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e5257', 'kwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e525c', 'Rubao Lee', 'a92eb70e-3e0e-497a-ab08-38aec34e5257', 'rlee@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e525f', 'Xiaoning Ding', 'a92eb70e-3e0e-497a-ab08-38aec34e525e', 'xding@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5263', 'Jing Xing', 'a92eb70e-3e0e-497a-ab08-38aec34e5262', 'jxing@sciences.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5265', 'Spyros Blanas', 'a92eb70e-3e0e-497a-ab08-38aec34e5257', 'sblanas@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5267', 'Xiaodong Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e5257', 'xzhang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5294', 'David Lomet', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'dlomet@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5296', 'Sudipta Sengupta', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'ssengupta@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5298', 'Ryan Stutsman', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'rstutsman@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e529a', 'Rui Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'rwang@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e529d', 'John Meehan', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'jmeehan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52a1', 'Nesime Tatbul', 'a92eb70e-3e0e-497a-ab08-38aec34e529f', 'ntatbul@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52a3', 'Stan Zdonik', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'szdonik@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52a5', 'Cansu Aslantas', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'caslantas@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52a7', 'Ugur Cetintemel', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'ucetintemel@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52aa', 'Jiang Du', 'a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'jdu@toronto.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ac', 'Tim Kraska', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'tkraska@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52af', 'Samuel Madden', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'smadden@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52b3', 'David Maier', 'a92eb70e-3e0e-497a-ab08-38aec34e52b2', 'dmaier@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52b6', 'Andrew Pavlo', 'a92eb70e-3e0e-497a-ab08-38aec34e52b5', 'apavlo@cmu.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52b8', 'Michael Stonebraker', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'mstonebraker@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ba', 'Kristin Tufte', 'a92eb70e-3e0e-497a-ab08-38aec34e52b2', 'ktufte@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52bc', 'Hao Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'hwang@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52bf', 'Alexander Schätzle', 'a92eb70e-3e0e-497a-ab08-38aec34e52be', 'aschätzle@freiburg.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52c2', 'Martin Przyjaciel-Zablocki', 'a92eb70e-3e0e-497a-ab08-38aec34e52be', 'mprzyjaciel-zablocki@freiburg.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52c4', 'Simon Skilevic', 'a92eb70e-3e0e-497a-ab08-38aec34e52be', 'sskilevic@freiburg.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52c6', 'Georg Lausen', 'a92eb70e-3e0e-497a-ab08-38aec34e52be', 'glausen@freiburg.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52c9', 'Julien Subercaze', 'a92eb70e-3e0e-497a-ab08-38aec34e52c8', 'jsubercaze@curien.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52cb', 'Christophe Gravie', 'a92eb70e-3e0e-497a-ab08-38aec34e52c8', 'cgravie@curien.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52cd', 'Jules Chevalier', 'a92eb70e-3e0e-497a-ab08-38aec34e52c8', 'jchevalier@curien.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52cf', 'Frederique Laforest', 'a92eb70e-3e0e-497a-ab08-38aec34e52c8', 'flaforest@curien.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52d3', 'Peter Buneman', 'a92eb70e-3e0e-497a-ab08-38aec34e52d2', 'pbuneman@edinburgh.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52d6', 'Sławek Staworko', 'a92eb70e-3e0e-497a-ab08-38aec34e52d5', 'sstaworko@nordeurope.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52d9', 'Weiguo Zheng', 'a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'wzheng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52db', 'Lei Zou', 'a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'lzou@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52dd', 'Wei Peng', 'a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'wpeng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52e1', 'Xifeng Yan', 'a92eb70e-3e0e-497a-ab08-38aec34e52df', 'xyan@barbara.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52e4', 'Shaoxu Song', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'ssong@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52e6', 'Dongyan Zhao', 'a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'dzhao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52e9', 'Juwei Shi', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'jshi@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ec', 'Yunjie Qiu', 'a92eb70e-3e0e-497a-ab08-38aec34e52eb', 'yqiu@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ef', 'Umar Farooq Minhas', 'a92eb70e-3e0e-497a-ab08-38aec34e52ee', 'uminhas@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52f2', 'Limei Jiao', 'a92eb70e-3e0e-497a-ab08-38aec34e52eb', 'ljiao@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52f4', 'Chen Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'cwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52f6', 'Berthold Reinwald', 'a92eb70e-3e0e-497a-ab08-38aec34e52ee', 'breinwald@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52f9', 'Fatma Ozcan', 'a92eb70e-3e0e-497a-ab08-38aec34e52f8', 'fozcan@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52fc', 'Matthias Boehm', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'mboehm@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e52ff', 'Ahmed Elgohary', 'a92eb70e-3e0e-497a-ab08-38aec34e52fe', 'aelgohary@maryland.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5312', 'Peter Haas', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'phaas@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5314', 'Fred Reiss', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'freiss@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5371', 'Konstantinos Kloudas', 'a92eb70e-3e0e-497a-ab08-38aec34e536f', 'kkloudas@inesc-id.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5374', 'Rodrigo Rodrigues', 'a92eb70e-3e0e-497a-ab08-38aec34e5373', 'rrodrigues@lisbon.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5377', 'Nuno Preguica', 'a92eb70e-3e0e-497a-ab08-38aec34e5376', 'npreguica@lisbon.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5379', 'Margarida Mamede', 'a92eb70e-3e0e-497a-ab08-38aec34e5376', 'mmamede@lisbon.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e537b', 'Botong Huang', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'bhuang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e537d', 'Nicholas Jarrett', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'njarrett@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e537f', 'Shivnath Babu', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'sbabu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5382', 'Sayan Mukherjee', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'smukherjee@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5384', 'Jun Yang', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'jyang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5387', 'Sharad Agarwal', 'a92eb70e-3e0e-497a-ab08-38aec34e5386', 'sagarwal@flipkart.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e538a', 'Hermano Lustosa', 'a92eb70e-3e0e-497a-ab08-38aec34e5389', 'hlustosa@lncc.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e538c', 'Fabio Porto', 'a92eb70e-3e0e-497a-ab08-38aec34e5389', 'fporto@lncc.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e538e', 'Pablo Blanco', 'a92eb70e-3e0e-497a-ab08-38aec34e5389', 'pblanco@lncc.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5392', 'Patrick Valduriez', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'pvalduriez@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5395', 'Mohammed Al-Kateb', 'a92eb70e-3e0e-497a-ab08-38aec34e5394', 'mal-kateb@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5397', 'Paul Sinclair', 'a92eb70e-3e0e-497a-ab08-38aec34e5394', 'psinclair@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5399', 'Grace Au', 'a92eb70e-3e0e-497a-ab08-38aec34e5394', 'gau@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e539b', 'Carrie Ballinger', 'a92eb70e-3e0e-497a-ab08-38aec34e5394', 'cballinger@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e539e', 'Gabriela Jacques da Silva', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'gsilva@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53a1', 'Fang Zheng', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'fzheng@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53a4', 'Daniel Debrunner', 'a92eb70e-3e0e-497a-ab08-38aec34e53a3', 'ddebrunner@ibm.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53a6', 'Kun-Lung Wu', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'kwu@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53a8', 'Victor Dogaru', 'a92eb70e-3e0e-497a-ab08-38aec34e53a3', 'vdogaru@ibm.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53aa', 'Eric Johnson', 'a92eb70e-3e0e-497a-ab08-38aec34e53a3', 'ejohnson@ibm.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53ac', 'Michael Spicer', 'a92eb70e-3e0e-497a-ab08-38aec34e53a3', 'mspicer@ibm.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53af', 'Ahmet Erdem Sariyuce', 'a92eb70e-3e0e-497a-ab08-38aec34e53ae', 'asariyuce@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53b3', 'Huan Li', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'hli@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53b6', 'Hua Lu', 'a92eb70e-3e0e-497a-ab08-38aec34e53b5', 'hlu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53b8', 'Xin Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'xchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53ba', 'Gang Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'gchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53bc', 'Ke Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'wkchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53be', 'Lidan Shou', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'lshou@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53c2', 'Tobias Scheuer', 'a92eb70e-3e0e-497a-ab08-38aec34e53c1', 'tscheuer@se.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53c4', 'Norman May', 'a92eb70e-3e0e-497a-ab08-38aec34e53c1', 'nmay@se.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53c6', 'Alexander Böhm', 'a92eb70e-3e0e-497a-ab08-38aec34e53c1', 'aböhm@se.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53c8', 'Daniel Scheibli', 'a92eb70e-3e0e-497a-ab08-38aec34e53c1', 'dscheibli@se.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53ca', 'Xiaoye Miao', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'xmiao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e53cc', 'Yunjun Gao', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'ygao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5461', 'Huiyong Cui', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'hcui@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5463', 'Chong Guo', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'cguo@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5465', 'Weida Pan', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'wpan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5467', 'Raphaël Bonaque', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'rbonaque@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5469', 'Tien Cao', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'tcao@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e546c', 'Bogdan Cautis', 'a92eb70e-3e0e-497a-ab08-38aec34e546b', 'bcautis@paris-sud.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e546f', 'François Goasdoué', 'a92eb70e-3e0e-497a-ab08-38aec34e546e', 'fgoasdoué@1.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5472', 'Javier Letellier', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'jletellier@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5474', 'Ioana Manolescu', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'imanolescu@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5476', 'Oscar Mendoza', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'omendoza@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5478', 'Swen Ribeiro', 'a92eb70e-3e0e-497a-ab08-38aec34e546b', 'sribeiro@paris-sud.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e547b', 'Xavier Tannier', 'a92eb70e-3e0e-497a-ab08-38aec34e547a', 'xtannier@parissud.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e547d', 'Michaël Thomazo', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'mthomazo@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5481', 'Dennis Butterstein', 'a92eb70e-3e0e-497a-ab08-38aec34e547f', 'dbutterstein@tuebingen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5484', 'Torsten Grust', 'a92eb70e-3e0e-497a-ab08-38aec34e5483', 'tgrust@tübingen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5487', 'Bikash Chandra', 'a92eb70e-3e0e-497a-ab08-38aec34e5486', 'bchandra@bombay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5489', 'Mathew Joseph', 'a92eb70e-3e0e-497a-ab08-38aec34e5486', 'mjoseph@bombay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e548b', 'Bharath Radhakrishnan', 'a92eb70e-3e0e-497a-ab08-38aec34e5486', 'bradhakrishnan@bombay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e548d', 'Shreevidhya Acharya', 'a92eb70e-3e0e-497a-ab08-38aec34e5486', 'sacharya@bombay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e548f', 'S. Sudarshan', 'a92eb70e-3e0e-497a-ab08-38aec34e5486', 'ssudarshan@bombay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5493', 'Aleksandar Vitorovic', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'avitorovic@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5495', 'Mohammed Elseidy', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'melseidy@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5497', 'Khayyam Guliyev', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'kguliyev@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5499', 'Khue Vu Minh', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'kminh@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e549b', 'Daniel Espino Timón', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'dtimón@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e549d', 'Mohammad Dashti', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'mdashti@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e549f', 'Yannis Klonatos', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'yklonatos@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54a2', 'Christoph Koch', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'ckoch@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54a5', 'Mingjie Tang', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'mtang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54a7', 'Yongyang Yu', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'yyu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54aa', 'Qutaibah Malluhi', 'a92eb70e-3e0e-497a-ab08-38aec34e54a9', 'qmalluhi@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54ad', 'Mourad Ouzzani', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'mouzzani@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54af', 'Walid Aref', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'wwaref@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e54b2', 'Anil Shanbhag', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'ashanbhag@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e556b', 'Alekh Jindal', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'ajindal@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e556d', 'Yi Lu', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'ylu@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5571', 'Dan Olteanu', 'a92eb70e-3e0e-497a-ab08-38aec34e556f', 'dolteanu@oxford.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5573', 'Maximilian Schleich', 'a92eb70e-3e0e-497a-ab08-38aec34e556f', 'mschleich@oxford.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5576', 'Pradap Konda', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'pkonda@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5578', 'Sanjib Das', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'sdas@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e557a', 'Paul Suganthan G. C.', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'pc.@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e557c', 'Anhai Doan', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'adoan@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e557e', 'Adel Ardalan', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'aardalan@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5581', 'Jeffrey Ballard', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'jballard@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5583', 'Han Li', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'hli@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5585', 'Fatemah Panahi', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'fpanahi@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5587', 'Haojun Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'hzhang@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5589', 'Jeffrey Naughton', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'jnaughton@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e558b', 'Shishir Prasad', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'sprasad@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e558e', 'Ganesh Krishnan', 'a92eb70e-3e0e-497a-ab08-38aec34e558d', 'gkrishnan@walmartlabs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5591', 'Rohit Deep', 'a92eb70e-3e0e-497a-ab08-38aec34e558d', 'rdeep@walmartlabs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5593', 'Vijay Raghavendra', 'a92eb70e-3e0e-497a-ab08-38aec34e558d', 'vraghavendra@walmartlabs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5596', 'Jose Picado', 'a92eb70e-3e0e-497a-ab08-38aec34e5595', 'jpicado@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5598', 'Parisa Ataei', 'a92eb70e-3e0e-497a-ab08-38aec34e5595', 'pataei@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e559a', 'Arash Termehchy', 'a92eb70e-3e0e-497a-ab08-38aec34e5595', 'atermehchy@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e559c', 'Alan Fern', 'a92eb70e-3e0e-497a-ab08-38aec34e5595', 'afern@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e559f', 'Rajeshkumar Kannapalli', 'a92eb70e-3e0e-497a-ab08-38aec34e559e', 'rkannapalli@arlington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e55a2', 'Azade Nazi', 'a92eb70e-3e0e-497a-ab08-38aec34e559e', 'anazi@arlington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e55a5', 'Mahashweta Das', 'a92eb70e-3e0e-497a-ab08-38aec34e55a4', 'mdas@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e55a7', 'Gautam Das', 'a92eb70e-3e0e-497a-ab08-38aec34e559e', 'gdas@arlington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e55aa', 'Felix Martin Schuhknecht', 'a92eb70e-3e0e-497a-ab08-38aec34e55a9', 'fschuhknecht@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e567f', 'Ankur Sharma', 'a92eb70e-3e0e-497a-ab08-38aec34e55a9', 'asharma@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5682', 'Onur Kocberber', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'okocberber@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5684', 'Babak Falsafi', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'bfalsafi@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5686', 'Boris Grot', 'a92eb70e-3e0e-497a-ab08-38aec34e52d2', 'bgrot@edinburgh.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5688', 'Jianfei Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'jchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e568a', 'Kaiwei Li', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'kli@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e568c', 'Jun Zhu', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'jzhu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e568e', 'Wenguang Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'wwchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5692', 'Lu Lu', 'a92eb70e-3e0e-497a-ab08-38aec34e5691', 'llu@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5694', 'Xuanhua Shi', 'a92eb70e-3e0e-497a-ab08-38aec34e5691', 'xshi@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5697', 'Yongluan Zhou', 'a92eb70e-3e0e-497a-ab08-38aec34e5696', 'yzhou@denmark.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5699', 'Xiong Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e5691', 'xzhang@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e569b', 'Hai Jin', 'a92eb70e-3e0e-497a-ab08-38aec34e5691', 'hjin@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e569d', 'Cheng Pei', 'a92eb70e-3e0e-497a-ab08-38aec34e5691', 'cpei@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e56a1', 'Ligang He', 'a92eb70e-3e0e-497a-ab08-38aec34e569f', 'lhe@warwick.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e56a3', 'Yuanzhen Geng', 'a92eb70e-3e0e-497a-ab08-38aec34e5691', 'ygeng@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5789', 'Yue Cao', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'ycao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e578b', 'Jianmin Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'jwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e578e', 'Zeyu Li', 'a92eb70e-3e0e-497a-ab08-38aec34e578d', 'zli@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5878', 'Wei Shao', 'a92eb70e-3e0e-497a-ab08-38aec34e578d', 'wshao@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e587a', 'Jianzhong Li', 'a92eb70e-3e0e-497a-ab08-38aec34e578d', 'jli@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e587c', 'Hong Gao', 'a92eb70e-3e0e-497a-ab08-38aec34e578d', 'hgao@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e587e', 'Nataliya Prokoshyna', 'a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'nprokoshyna@toronto.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5882', 'Jaroslaw Szlichta', 'a92eb70e-3e0e-497a-ab08-38aec34e5881', 'jszlichta@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5885', 'Fei Chiang', 'a92eb70e-3e0e-497a-ab08-38aec34e5884', 'fchiang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5887', 'Renée Miller', 'a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'rmiller@toronto.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e588a', 'Divesh Srivastava', 'a92eb70e-3e0e-497a-ab08-38aec34e5889', 'dsrivastava@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e588c', 'Ziawasch Abedjan', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'zabedjan@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e588e', 'Cuneyt Akcora', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'cakcora@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5983', 'Paolo Papotti', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'ppapotti@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a79', 'Long Yuan', 'a92eb70e-3e0e-497a-ab08-38aec34e5a78', 'lyuan@wales.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a7c', 'Lu Qin', 'a92eb70e-3e0e-497a-ab08-38aec34e5a7b', 'lqin@sydney.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a7e', 'Xuemin Lin', 'a92eb70e-3e0e-497a-ab08-38aec34e5a78', 'xlin@wales.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a81', 'Lijun Chang', 'a92eb70e-3e0e-497a-ab08-38aec34e5a78', 'lchang@wales.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a83', 'Wenjie Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e5a78', 'wzhang@wales.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a86', 'Jiewen Huang', 'a92eb70e-3e0e-497a-ab08-38aec34e5a85', 'jhuang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a88', 'Daniel Abadi', 'a92eb70e-3e0e-497a-ab08-38aec34e5a85', 'dabadi@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a8a', 'Yu Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'yliu@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a8d', 'Jiaheng Lu', 'a92eb70e-3e0e-497a-ab08-38aec34e5a8c', 'jlu@helsinki.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a8f', 'Hua Yang', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'hyang@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a93', 'Xiaokui Xiao', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'xxiao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a95', 'Zhewei Wei', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'zwei@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a98', 'Ayush Dubey', 'a92eb70e-3e0e-497a-ab08-38aec34e5a97', 'adubey@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a9b', 'Greg Hill', 'a92eb70e-3e0e-497a-ab08-38aec34e5a9a', 'ghill@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a9d', 'Robert Escriva', 'a92eb70e-3e0e-497a-ab08-38aec34e5a97', 'rescriva@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5a9f', 'Emin Sirer', 'a92eb70e-3e0e-497a-ab08-38aec34e5a97', 'esirer@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5aa3', 'Rajat Venkatesh', 'a92eb70e-3e0e-497a-ab08-38aec34e5aa2', 'rvenkatesh@qubole.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5aa6', 'Edward Ma', 'a92eb70e-3e0e-497a-ab08-38aec34e5aa5', 'ema@vertica.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5aa8', 'Vishrut Gupta', 'a92eb70e-3e0e-497a-ab08-38aec34e5aa5', 'vgupta@vertica.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5bb2', 'Indrajit Roy', 'a92eb70e-3e0e-497a-ab08-38aec34e55a4', 'iroy@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5cbd', 'Michael Dusenberry', 'a92eb70e-3e0e-497a-ab08-38aec34e5cbc', 'mdusenberry@center.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5cbf', 'Deron Eriksson', 'a92eb70e-3e0e-497a-ab08-38aec34e5cbc', 'deriksson@center.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5cc2', 'Alexandre Evfimievski', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'aevfimievski@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5cc4', 'Faraz Makari Manshadi', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'fmanshadi@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5cc6', 'Niketan Pansare', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'npansare@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ee4', 'Prithviraj Sen', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'psen@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ee6', 'Arvind Surve', 'a92eb70e-3e0e-497a-ab08-38aec34e5cbc', 'asurve@center.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ee8', 'Shirish Tatikonda', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'statikonda@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5eea', 'Willis Lang', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'wlang@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5eec', 'Karthik Ramachandra', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'kramachandra@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5eee', 'David DeWitt', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'ddewitt@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ef1', 'Shize Xu', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'sxu@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ef3', 'Qun Guo', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'qguo@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ef5', 'Ajay Kalhan', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'akalhan@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5ef7', 'Peter Carlin', 'a92eb70e-3e0e-497a-ab08-38aec34e556a', 'pcarlin@microsoft.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5efa', 'Xiaofeng Zhou', 'a92eb70e-3e0e-497a-ab08-38aec34e5ef9', 'xzhou@florida.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5efc', 'Yang Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e5ef9', 'ychen@florida.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5efe', 'Daisy Zhe Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e5ef9', 'dwang@florida.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f12', 'Tova Milo', 'a92eb70e-3e0e-497a-ab08-38aec34e5f11', 'tmilo@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f14', 'Slava Novgorodov', 'a92eb70e-3e0e-497a-ab08-38aec34e5f11', 'snovgorodov@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f17', 'Wang-Chiew Tan', 'a92eb70e-3e0e-497a-ab08-38aec34e5f16', 'wtan@cruz.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f1a', 'Thibault Sellam', 'a92eb70e-3e0e-497a-ab08-38aec34e5f19', 'tsellam@cwi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e5f1c', 'Martin Kersten', 'a92eb70e-3e0e-497a-ab08-38aec34e5f19', 'mkersten@cwi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6141', 'Robin Cijvat', 'a92eb70e-3e0e-497a-ab08-38aec34e613f', 'rcijvat@solutions.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6143', 'Richard Koopmanschap', 'a92eb70e-3e0e-497a-ab08-38aec34e613f', 'rkoopmanschap@solutions.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e638b', 'Nisarg Raval', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'nraval@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64b3', 'Lei Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'lchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64b5', 'Jianliang Xu', 'a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'jxu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64b7', 'Christian Jensen', 'a92eb70e-3e0e-497a-ab08-38aec34e53b5', 'cjensen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64b9', 'Yafei Li', 'a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'yli@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64bc', 'Kiril Panev', 'a92eb70e-3e0e-497a-ab08-38aec34e64bb', 'kpanev@kaiserslautern.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64be', 'Sebastian Michel', 'a92eb70e-3e0e-497a-ab08-38aec34e64bb', 'smichel@kaiserslautern.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64c1', 'Evica Milchevski', 'a92eb70e-3e0e-497a-ab08-38aec34e64bb', 'emilchevski@kaiserslautern.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64c3', 'Koninika Pal', 'a92eb70e-3e0e-497a-ab08-38aec34e64bb', 'kpal@kaiserslautern.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64c6', 'Ramon Bespinyowong', 'a92eb70e-3e0e-497a-ab08-38aec34e64c5', 'rbespinyowong@singapore.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64c8', 'Wei Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'wchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64cb', 'H. V. Jagadish', 'a92eb70e-3e0e-497a-ab08-38aec34e64ca', 'hjagadish@michigan.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64cd', 'Yuxin Ma', 'a92eb70e-3e0e-497a-ab08-38aec34e53b2', 'yma@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64d1', 'Daniel Deutch', 'a92eb70e-3e0e-497a-ab08-38aec34e64cf', 'ddeutch@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64d3', 'Nave Frost', 'a92eb70e-3e0e-497a-ab08-38aec34e64cf', 'nfrost@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64d5', 'Amir Gilad', 'a92eb70e-3e0e-497a-ab08-38aec34e64cf', 'agilad@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64d7', 'Kaiqi Zhao', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'kzhao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64d9', 'Yiding Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'yliu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64db', 'Quan Yuan', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'qyuan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64dd', 'Lisi Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'wlchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64df', 'Zhida Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'zchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64e3', 'Gao Cong', 'a92eb70e-3e0e-497a-ab08-38aec34e64e2', 'gcong@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e64e5', 'Kaiyu Feng', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'kfeng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e68aa', 'Miguel Rodriguez', 'a92eb70e-3e0e-497a-ab08-38aec34e5ef9', 'mrodriguez@florida.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e68ac', 'Sean Goldberg', 'a92eb70e-3e0e-497a-ab08-38aec34e5ef9', 'sgoldberg@florida.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69ed', 'Kosetsu Ikeda', 'a92eb70e-3e0e-497a-ab08-38aec34e69ec', 'kikeda@tsukuba.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69ef', 'Atsuyuki Morishima', 'a92eb70e-3e0e-497a-ab08-38aec34e69ec', 'amorishima@tsukuba.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69f3', 'Habibur Rahman', 'a92eb70e-3e0e-497a-ab08-38aec34e69f2', 'hrahman@arlington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69f6', 'Senjuti Basu Roy', 'a92eb70e-3e0e-497a-ab08-38aec34e69f5', 'sroy@njit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69f9', 'Saravanan Thirumuruganathan', 'a92eb70e-3e0e-497a-ab08-38aec34e69f8', 'sthirumuruganathan@hbku.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e69fc', 'Sihem Amer-Yahia', 'a92eb70e-3e0e-497a-ab08-38aec34e69fb', 'samer-yahia@lig.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b54', 'Jonny Daenen', 'a92eb70e-3e0e-497a-ab08-38aec34e6b53', 'jdaenen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b56', 'Frank Neven', 'a92eb70e-3e0e-497a-ab08-38aec34e6b53', 'fneven@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b59', 'Tony Tan', 'a92eb70e-3e0e-497a-ab08-38aec34e6b58', 'ttan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b5c', 'Stijn Vansummeren', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5b', 'svansummeren@bruxelles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b5f', 'Zuhair Khayyat', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'zkhayyat@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b62', 'William Lucia', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'wlucia@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6b64', 'Meghna Singh', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'msingh@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6dfd', 'Jorge-Arnulfo Quiane-Ruiz', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'jquiane-ruiz@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6dff', 'Nan Tang', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'ntang@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e12', 'Panos Kalnis', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'pkalnis@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e15', 'Darko Makreshanski', 'a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'dmakreshanski@zurich.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e18', 'Georgios Giannikis', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'ggiannikis@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e1a', 'Gustavo Alonso', 'a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'galonso@zurich.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e1c', 'Donald Kossman', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'dkossman@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e1f', 'Richard Wesley', 'a92eb70e-3e0e-497a-ab08-38aec34e6e1e', 'rwesley@software.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e22', 'Fei Xu', 'a92eb70e-3e0e-497a-ab08-38aec34e6e1e', 'fxu@software.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e25', 'Zhao Chang', 'a92eb70e-3e0e-497a-ab08-38aec34e6e24', 'zchang@utah.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e27', 'Dong Xie', 'a92eb70e-3e0e-497a-ab08-38aec34e6e24', 'dxie@utah.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e29', 'Feifei Li', 'a92eb70e-3e0e-497a-ab08-38aec34e6e24', 'fli@utah.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6e2b', 'Samuel Haney', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'shaney@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f87', 'Bolin Ding', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'bding@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f89', 'Bo Zong', 'a92eb70e-3e0e-497a-ab08-38aec34e52df', 'bzong@barbara.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f8c', 'Xusheng Xiao', 'a92eb70e-3e0e-497a-ab08-38aec34e6f8b', 'xxiao@inc.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f8f', 'Zhichun Li', 'a92eb70e-3e0e-497a-ab08-38aec34e6f8e', 'zli@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f92', 'Zhenyu Wu', 'a92eb70e-3e0e-497a-ab08-38aec34e6f8e', 'zwu@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e6f95', 'Zhiyun Qian', 'a92eb70e-3e0e-497a-ab08-38aec34e6f94', 'zqian@riverside.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e71f7', 'Ambuj Singh', 'a92eb70e-3e0e-497a-ab08-38aec34e52df', 'asingh@barbara.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e71f9', 'Guofei Jiang', 'a92eb70e-3e0e-497a-ab08-38aec34e6f8e', 'gjiang@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e71fb', 'Abolfazl Asudeh', 'a92eb70e-3e0e-497a-ab08-38aec34e69f2', 'aasudeh@arlington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e71fe', 'Nan Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e71fd', 'nzhang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7376', 'Jinfei Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e7375', 'jliu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7378', 'Li Xiong', 'a92eb70e-3e0e-497a-ab08-38aec34e7375', 'lxiong@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e737b', 'Jian Pei', 'a92eb70e-3e0e-497a-ab08-38aec34e737a', 'jpei@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e737e', 'Jun Luo', 'a92eb70e-3e0e-497a-ab08-38aec34e737d', 'jluo@lenovo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7381', 'Haoyu Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e7375', 'hzhang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7384', 'Taylor Kessler Faulkner', 'a92eb70e-3e0e-497a-ab08-38aec34e7383', 'tfaulkner@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7386', 'Will Brackenbury', 'a92eb70e-3e0e-497a-ab08-38aec34e7383', 'wbrackenbury@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7388', 'Ashwin Lall', 'a92eb70e-3e0e-497a-ab08-38aec34e7383', 'alall@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e795e', 'Garret Swart', 'a92eb70e-3e0e-497a-ab08-38aec34e795d', 'gswart@oracle.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7961', 'Shasank Chavan', 'a92eb70e-3e0e-497a-ab08-38aec34e795d', 'schavan@oracle.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7964', 'Sarath Lakshman', 'a92eb70e-3e0e-497a-ab08-38aec34e7963', 'slakshman@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7966', 'Sriram Melkote', 'a92eb70e-3e0e-497a-ab08-38aec34e7963', 'smelkote@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7968', 'John Liang', 'a92eb70e-3e0e-497a-ab08-38aec34e7963', 'jliang@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e796a', 'Ravi Mayuram', 'a92eb70e-3e0e-497a-ab08-38aec34e7963', 'rmayuram@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e796d', 'V. Srinivasan', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'vsrinivasan@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e796f', 'Brian Bulkowski', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'bbulkowski@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7972', 'Wei-Ling Chu', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'wchu@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7974', 'Sunil Sayyaparaju', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'ssayyaparaju@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7976', 'Andrew Gooding', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'agooding@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7978', 'Rajkumar Iyer', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'riyer@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e797a', 'Ashish Shinde', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'ashinde@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e797c', 'Thomas Lopatic', 'a92eb70e-3e0e-497a-ab08-38aec34e796c', 'tlopatic@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e797f', 'Alex Scotti', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'ascotti@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7982', 'Mark Hannum', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'mhannum@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7984', 'Michael Ponomarenko', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'mponomarenko@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7986', 'Dorin Hogea', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'dhogea@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7988', 'Akshat Sikarwar', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'asikarwar@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e798a', 'Mohit Khullar', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'mkhullar@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e798c', 'Adi Zaimi', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'azaimi@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e798e', 'James Leddy', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'jleddy@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7991', 'Fabio Angius', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'fangius@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7993', 'Rivers Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'rzhang@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7995', 'Lingzhi Deng', 'a92eb70e-3e0e-497a-ab08-38aec34e797e', 'ldeng@lp.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7998', 'Satyajit Bhadange', 'a92eb70e-3e0e-497a-ab08-38aec34e7997', 'sbhadange@kanpur.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e799b', 'Akhil Arora', 'a92eb70e-3e0e-497a-ab08-38aec34e799a', 'aarora@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e799d', 'Arnab Bhattacharya', 'a92eb70e-3e0e-497a-ab08-38aec34e7997', 'abhattacharya@kanpur.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79a1', 'Guillaume Bagan', 'a92eb70e-3e0e-497a-ab08-38aec34e799f', 'gbagan@liris.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79a4', 'Angela Bonifati', 'a92eb70e-3e0e-497a-ab08-38aec34e79a3', 'abonifati@liris.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79a6', 'Radu Ciucanu', 'a92eb70e-3e0e-497a-ab08-38aec34e556f', 'rciucanu@oxford.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79a9', 'George Fletcher', 'a92eb70e-3e0e-497a-ab08-38aec34e79a8', 'gfletcher@eindhoven.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79ac', 'Aurélien Lemay', 'a92eb70e-3e0e-497a-ab08-38aec34e79ab', 'alemay@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79ae', 'Nicky Advokaat', 'a92eb70e-3e0e-497a-ab08-38aec34e79a8', 'nadvokaat@eindhoven.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79b2', 'Antonio Maccioni', 'a92eb70e-3e0e-497a-ab08-38aec34e79b1', 'amaccioni@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79b5', 'Matteo Collina', 'a92eb70e-3e0e-497a-ab08-38aec34e79b4', 'mcollina@nearform.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79b8', 'Ahmed El-Roby', 'a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'ael-roby@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79ba', 'Khaled Ammar', 'a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'kammar@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79bc', 'Ashraf Aboulnaga', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'aaboulnaga@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79be', 'Jimmy Lin', 'a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'jlin@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e79c2', 'Yael Amsterdamer', 'a92eb70e-3e0e-497a-ab08-38aec34e79c1', 'yamsterdamer@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7b6c', 'Amit Somech', 'a92eb70e-3e0e-497a-ab08-38aec34e5f11', 'asomech@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7b6e', 'Brit Youngmann', 'a92eb70e-3e0e-497a-ab08-38aec34e5f11', 'byoungmann@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7b71', 'Peipei Yi', 'a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'pyi@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7b73', 'Byron Choi', 'a92eb70e-3e0e-497a-ab08-38aec34e64b2', 'bchoi@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7b75', 'Sourav Bhowmick', 'a92eb70e-3e0e-497a-ab08-38aec34e5a92', 'sbhowmick@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d26', 'Mohamed Yahya', 'a92eb70e-3e0e-497a-ab08-38aec34e7d25', 'myahya@informatics.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d29', 'Klaus Berberich', 'a92eb70e-3e0e-497a-ab08-38aec34e7d28', 'kberberich@informatics.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d2c', 'Maya Ramanath', 'a92eb70e-3e0e-497a-ab08-38aec34e7d2b', 'mramanath@delhi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d2e', 'Gerhard Weikum', 'a92eb70e-3e0e-497a-ab08-38aec34e7d28', 'gweikum@informatics.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d31', 'Gonzalo Diaz', 'a92eb70e-3e0e-497a-ab08-38aec34e556f', 'gdiaz@oxford.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d34', 'Marcelo Arenas', 'a92eb70e-3e0e-497a-ab08-38aec34e7d33', 'marenas@chile.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d36', 'Michael Benedikt', 'a92eb70e-3e0e-497a-ab08-38aec34e556f', 'mbenedikt@oxford.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d38', 'Udayan Khurana', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'ukhurana@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d3a', 'Srinivasan Parthasarathy', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'sparthasarathy@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d3c', 'Deepak Turaga', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'dturaga@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d3f', 'Minjian Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e7d3e', 'mliu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d42', 'Qing Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e7d3e', 'qwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d45', 'Wail Alkowaileet', 'a92eb70e-3e0e-497a-ab08-38aec34e7d44', 'walkowaileet@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d47', 'Sattam Alsubaiee', 'a92eb70e-3e0e-497a-ab08-38aec34e7d44', 'salsubaiee@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d4a', 'Michael Carey', 'a92eb70e-3e0e-497a-ab08-38aec34e7d49', 'mcarey@irvine.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d4c', 'Till Westmann', 'a92eb70e-3e0e-497a-ab08-38aec34e7963', 'twestmann@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d4e', 'Yingyi Bu', 'a92eb70e-3e0e-497a-ab08-38aec34e7963', 'ybu@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d52', 'Anand Rajaraman', 'a92eb70e-3e0e-497a-ab08-38aec34e7d51', 'arajaraman@rajaraman.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d55', 'Marius Eich', 'a92eb70e-3e0e-497a-ab08-38aec34e7d54', 'meich@mannheim.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d57', 'Pit Fender', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'pfender@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d59', 'Guido Moerkotte', 'a92eb70e-3e0e-497a-ab08-38aec34e7d54', 'gmoerkotte@mannheim.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d5c', 'Hai Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'hliu@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d5e', 'Dongqing Xiao', 'a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'dxiao@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d61', 'Pankaj Didwania', 'a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'pdidwania@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d63', 'Mohamed Eltabakh', 'a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'meltabakh@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d66', 'Viktor Leis', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'vleis@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d68', 'Andrey Gubichev', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'agubichev@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d6a', 'Atanas Mirchev', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'amirchev@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d6c', 'Peter Boncz', 'a92eb70e-3e0e-497a-ab08-38aec34e5f19', 'pboncz@cwi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d6e', 'Alfons Kemper', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'akemper@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d71', 'Thomas Neumann', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'tneumann@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e7d74', 'Damian Bursztyn', 'a92eb70e-3e0e-497a-ab08-38aec34e7d73', 'dbursztyn@lix.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8218', 'Taesung Lee', 'a92eb70e-3e0e-497a-ab08-38aec34e8217', 'tlee@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e821b', 'Jin-Woo Park', 'a92eb70e-3e0e-497a-ab08-38aec34e821a', 'jpark@postech.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e821d', 'Sanghoon Lee', 'a92eb70e-3e0e-497a-ab08-38aec34e821a', 'slee@postech.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e821f', 'Seung-won Hwang', 'a92eb70e-3e0e-497a-ab08-38aec34e8217', 'shwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8222', 'Sameh Elnikety', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'selnikety@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8224', 'Yuxiong He', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'yhe@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8227', 'Lu Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e8226', 'lwang@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8229', 'Robert Christensen', 'a92eb70e-3e0e-497a-ab08-38aec34e6e24', 'rchristensen@utah.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e83f4', 'Ke Yi', 'a92eb70e-3e0e-497a-ab08-38aec34e8226', 'kyi@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e83f7', 'Yongxin Tong', 'a92eb70e-3e0e-497a-ab08-38aec34e83f6', 'ytong@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e83f9', 'Jieying She', 'a92eb70e-3e0e-497a-ab08-38aec34e8226', 'jshe@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e83fb', 'Bolin Din', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'bdin@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e85da', 'Tianyu Wo', 'a92eb70e-3e0e-497a-ab08-38aec34e83f6', 'two@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e85dc', 'Ke Xu', 'a92eb70e-3e0e-497a-ab08-38aec34e83f6', 'kxu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e85de', 'Ahmed M. Aly', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'aaly@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e85e1', 'Ahmed R. Mahmood', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'amahmood@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e85e3', 'Mohamed S. Hassan', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'mhassan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e85e5', 'Walid G. Aref', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'waref@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e87cb', 'Hazem Elmeleegy', 'a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'helmeleegy@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e87cd', 'Thamir Qadah', 'a92eb70e-3e0e-497a-ab08-38aec34e54a4', 'tqadah@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e87cf', 'Wolf Roediger', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'wroediger@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e87d2', 'Tobias Muehlbauer', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'tmuehlbauer@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8ba3', 'Carsten Binnig', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'cbinnig@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8ba5', 'Andrew Crotty', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'acrotty@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8ba7', 'Alex Galakatos', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'agalakatos@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8d94', 'Erfan Zamanian', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'ezamanian@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8d96', 'Zilong Tan', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'ztan@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f85', 'Mingxing Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'mzhang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f87', 'Yongwei Wu', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'ywu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f89', 'Kang Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'kchen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f8b', 'Teng Ma', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'tma@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f8d', 'Weimin Zheng', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'wwzheng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f8f', 'Shaosu Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'sliu@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f92', 'Bin Song', 'a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'bsong@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f94', 'Sriharsha Gangam', 'a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'sgangam@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f96', 'Lawrence Lo', 'a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'llo@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f98', 'Khaled Elmeleegy', 'a92eb70e-3e0e-497a-ab08-38aec34e87ca', 'kelmeleegy@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e8f9b', 'Aurosish Mishra', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'amishra@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9296', 'Allison Holloway', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'aholloway@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9298', 'Tirthankar Lahiri', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'tlahiri@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e929a', 'Zhen Hua Liu', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'zliu@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e929c', 'Sunil Chakkappen', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'schakkappen@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e929e', 'Dennis Lui', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'dlui@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e92a1', 'Vinita Subramanian', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'vsubramanian@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e92a3', 'Ramesh Kumar', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'rkumar@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e92a5', 'Maria Colgan', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'mcolgan@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e92a7', 'Jesse Kamp', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'jkamp@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94ac', 'Vineet Marwah', 'a92eb70e-3e0e-497a-ab08-38aec34e8f9a', 'vmarwah@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94af', 'Ricardo Fernandes', 'a92eb70e-3e0e-497a-ab08-38aec34e94ae', 'rfernandes@b.v..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94b2', 'Piotr Zaczkowski', 'a92eb70e-3e0e-497a-ab08-38aec34e94ae', 'pzaczkowski@b.v..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94b4', 'Bernd Göttler', 'a92eb70e-3e0e-497a-ab08-38aec34e94ae', 'bgöttler@b.v..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94b6', 'Conor Ettinoffe', 'a92eb70e-3e0e-497a-ab08-38aec34e94ae', 'cettinoffe@b.v..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94b8', 'Anis Moussa', 'a92eb70e-3e0e-497a-ab08-38aec34e94ae', 'amoussa@b.v..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94bb', 'Jack Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e94ba', 'jchen@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94bd', 'Samir Jindel', 'a92eb70e-3e0e-497a-ab08-38aec34e94ba', 'sjindel@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e94bf', 'Robert Walzer', 'a92eb70e-3e0e-497a-ab08-38aec34e94ba', 'rwalzer@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e96cd', 'Nika Jimsheleishvilli', 'a92eb70e-3e0e-497a-ab08-38aec34e94ba', 'njimsheleishvilli@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e96cf', 'Michael Andrews', 'a92eb70e-3e0e-497a-ab08-38aec34e94ba', 'mandrews@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e96d2', 'Stefan Richter', 'a92eb70e-3e0e-497a-ab08-38aec34e55a9', 'srichter@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e96d4', 'Victor Alvarez', 'a92eb70e-3e0e-497a-ab08-38aec34e55a9', 'valvarez@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98e7', 'Qiang Huang', 'a92eb70e-3e0e-497a-ab08-38aec34e98e6', 'qhuang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98e9', 'Jianlin Feng', 'a92eb70e-3e0e-497a-ab08-38aec34e98e6', 'wjfeng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98eb', 'Yikai Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e98e6', 'yzhang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98ee', 'Qiong Fang', 'a92eb70e-3e0e-497a-ab08-38aec34e98ed', 'qfang@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98f1', 'Wilfred Ng', 'a92eb70e-3e0e-497a-ab08-38aec34e8226', 'wng@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98f3', 'Yongjoo Park', 'a92eb70e-3e0e-497a-ab08-38aec34e64ca', 'ypark@michigan.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98f5', 'Michael Cafarella', 'a92eb70e-3e0e-497a-ab08-38aec34e64ca', 'mcafarella@michigan.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98f7', 'Barzan Mozafari', 'a92eb70e-3e0e-497a-ab08-38aec34e64ca', 'bmozafari@michigan.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98f9', 'Erkang Zhu', 'a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'ezhu@toronto.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98fb', 'Fatemeh Nargesian', 'a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'fnargesian@toronto.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e98fe', 'Ken Pu', 'a92eb70e-3e0e-497a-ab08-38aec34e98fd', 'kpu@uoit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9b2d', 'Ihab F. Ilyas', 'a92eb70e-3e0e-497a-ab08-38aec34e9b2c', 'iilyas@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f6b', 'Aditya Parameswaran', 'a92eb70e-3e0e-497a-ab08-38aec34e9f6a', 'aparameswaran@(uiuc.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f6d', 'Sunita Sarawagi', 'a92eb70e-3e0e-497a-ab08-38aec34e5486', 'ssarawagi@bombay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f71', 'Hongbin Ma', 'a92eb70e-3e0e-497a-ab08-38aec34e9f6f', 'hma@ebay.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f74', 'Bin Shao', 'a92eb70e-3e0e-497a-ab08-38aec34e9f73', 'bshao@asia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f77', 'Yanghua Xiao', 'a92eb70e-3e0e-497a-ab08-38aec34e9f76', 'yxiao@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f79', 'Liang Jeff Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e9f73', 'lchen@asia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f7c', 'Haixun Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e9f7b', 'hwang@facebook.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f7f', 'Takanori Hayashi', 'a92eb70e-3e0e-497a-ab08-38aec34e9f7e', 'thayashi@tokyo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f83', 'Takuya Akiba', 'a92eb70e-3e0e-497a-ab08-38aec34e9f82', 'takiba@informatics.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f85', 'Yuichi Yoshida', 'a92eb70e-3e0e-497a-ab08-38aec34e9f82', 'yyoshida@informatics.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f88', 'Julian Shun', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'jshun@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f8a', 'Farbod Roosta-Khorasani', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'froosta-khorasani@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f8c', 'Kimon Fountoulakis', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'kfountoulakis@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f8e', 'Michael Mahoney', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'mmahoney@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f92', 'Wissam Khaouid', 'a92eb70e-3e0e-497a-ab08-38aec34e9f91', 'wkhaouid@victoria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f94', 'Marina Barsky', 'a92eb70e-3e0e-497a-ab08-38aec34e9f91', 'mbarsky@victoria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f96', 'Venkatesh Srinivasan', 'a92eb70e-3e0e-497a-ab08-38aec34e9f91', 'vsrinivasan@victoria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f98', 'Alex Thomo', 'a92eb70e-3e0e-497a-ab08-38aec34e9f91', 'athomo@victoria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f9a', 'Patricia Arocena', 'a92eb70e-3e0e-497a-ab08-38aec34e52a9', 'parocena@toronto.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9f9d', 'Boris Glavic', 'a92eb70e-3e0e-497a-ab08-38aec34e9f9c', 'bglavic@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34e9fa1', 'Giansalvatore Mecca', 'a92eb70e-3e0e-497a-ab08-38aec34e9f9f', 'gmecca@basilicata.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ea519', 'Donatello Santoro', 'a92eb70e-3e0e-497a-ab08-38aec34e9f9f', 'dsantoro@basilicata.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ea74f', 'Xu Chu', 'a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'xchu@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ea752', 'Dong Deng', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'ddeng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ea754', 'Raul Castro Fernandez', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'rfernandez@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ea756', 'Ihab Ilyas', 'a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'wiilyas@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb14b', 'Sanjay Krishnan', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'skrishnan@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb14d', 'Jiannan Wang', 'a92eb70e-3e0e-497a-ab08-38aec34e737a', 'wjwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb151', 'Eugene Wu', 'a92eb70e-3e0e-497a-ab08-38aec34eb14f', 'ewu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb153', 'Michael Franklin', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'mfranklin@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb155', 'Ken Goldberg', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'kgoldberg@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb395', 'Guoliang Li', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'gli@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb397', 'He Wen', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'hwen@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb5d9', 'Feng Jianhua', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'fjianhua@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb5db', 'Yue Lu', 'a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'ylu@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb5dd', 'Yuguan Li', 'a92eb70e-3e0e-497a-ab08-38aec34e7d5b', 'yli@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb834', 'Fuat Basik', 'a92eb70e-3e0e-497a-ab08-38aec34eb833', 'fbasik@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb836', 'Bugra Gedik', 'a92eb70e-3e0e-497a-ab08-38aec34eb833', 'bgedik@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb838', 'Hakan Ferhatsomanoglu', 'a92eb70e-3e0e-497a-ab08-38aec34eb833', 'hferhatsomanoglu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb83a', 'Mert Emin Kalender', 'a92eb70e-3e0e-497a-ab08-38aec34eb833', 'mkalender@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb83c', 'Xike Xie', 'a92eb70e-3e0e-497a-ab08-38aec34e53b5', 'xxie@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb83e', 'Benjin Mei', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'bmei@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb841', 'Jinchuan Chen', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'jchen@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eb843', 'Xiaoyong Du', 'a92eb70e-3e0e-497a-ab08-38aec34e52e8', 'xdu@china.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eba91', 'Razen Harbi', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'rharbi@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eba93', 'Ibrahim Abdelaziz', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'iabdelaziz@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebce4', 'Nikos Mamoulis', 'a92eb70e-3e0e-497a-ab08-38aec34ebce3', 'nmamoulis@ioannina.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebce6', 'Yasser Ebrahim', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'yebrahim@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebce8', 'Majed Sahli', 'a92eb70e-3e0e-497a-ab08-38aec34e6b5e', 'msahli@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebceb', 'Md. Saiful Islam', 'a92eb70e-3e0e-497a-ab08-38aec34ebcea', 'mislam@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebced', 'Chengfei Liu', 'a92eb70e-3e0e-497a-ab08-38aec34ebcea', 'cliu@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebcf1', 'Stephan Baumann', 'a92eb70e-3e0e-497a-ab08-38aec34ebcef', 'sbaumann@ilmenau.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf57', 'Kai-Uwe Sattler', 'a92eb70e-3e0e-497a-ab08-38aec34ebcef', 'ksattler@ilmenau.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf59', 'Eric Gribkoff', 'a92eb70e-3e0e-497a-ab08-38aec34e5252', 'egribkoff@washington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf5b', 'Dan Suciu', 'a92eb70e-3e0e-497a-ab08-38aec34e5252', 'dsuciu@washington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf5e', 'Matteo Brucato', 'a92eb70e-3e0e-497a-ab08-38aec34ebf5d', 'mbrucato@amherst.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf62', 'Juan Beltran', 'a92eb70e-3e0e-497a-ab08-38aec34ebf61', 'jbeltran@dhabi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf64', 'Azza Abouzied', 'a92eb70e-3e0e-497a-ab08-38aec34ebf61', 'aabouzied@dhabi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf66', 'Alexandra Meliou', 'a92eb70e-3e0e-497a-ab08-38aec34ebf5d', 'ameliou@amherst.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf68', 'Sudeepa Roy', 'a92eb70e-3e0e-497a-ab08-38aec34e51e9', 'sroy@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ebf6a', 'Laurel Orr', 'a92eb70e-3e0e-497a-ab08-38aec34e5252', 'lorr@washington.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec538', 'Francisco Maturana', 'a92eb70e-3e0e-497a-ab08-38aec34e7d33', 'fmaturana@chile.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec53a', 'Cristian Riveros', 'a92eb70e-3e0e-497a-ab08-38aec34e7d33', 'criveros@chile.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec53c', 'Domagoj Vrgoc', 'a92eb70e-3e0e-497a-ab08-38aec34e7d33', 'dvrgoc@chile.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec53f', 'Da Yan', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'dyan@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec542', 'James Cheng', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'jcheng@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec544', 'Tamer Özsu', 'a92eb70e-3e0e-497a-ab08-38aec34e79b7', 'tözsu@waterloo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec546', 'Fan Yang', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'fyang@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec7ad', 'John C.S. Lui', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'jlui@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ec7af', 'Qizhen Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'qzhang@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca2b', 'Luan Tran', 'a92eb70e-3e0e-497a-ab08-38aec34eca2a', 'ltran@california.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca2d', 'Liyue Fan', 'a92eb70e-3e0e-497a-ab08-38aec34eca2a', 'lfan@california.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca2f', 'Cyrus Shahabi', 'a92eb70e-3e0e-497a-ab08-38aec34eca2a', 'cshahabi@california.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca32', 'Manasi Vartak', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'mvartak@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eca35', 'Sajjadur Rahman', 'a92eb70e-3e0e-497a-ab08-38aec34eca34', 'srahman@illinois.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf23', 'Neoklis Polyzotis', 'a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'npolyzotis@google.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf25', 'Zaheer Chothia', 'a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'zchothia@zurich.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf27', 'John Liagouris', 'a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'jliagouris@zurich.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf29', 'Frank McSherry', 'a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'fmcsherry@zurich.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf2b', 'Timothy Roscoe', 'a92eb70e-3e0e-497a-ab08-38aec34e6e14', 'troscoe@zurich.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf2e', 'Insoon Jo', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'ijo@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf31', 'Duck-Ho Bae', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'dbae@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf33', 'Andre Yoon', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'ayoon@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf35', 'Jeong-Uk Kang', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'jkang@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf37', 'Sangyeun Cho', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'scho@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf39', 'Daniel Lee', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'dlee@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf3b', 'Jaeheon Jeong', 'a92eb70e-3e0e-497a-ab08-38aec34ecf2d', 'jjeong@co..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf3d', 'Renata Borovica-Gajic', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'rborovica-gajic@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf3f', 'Raja Appuswamy', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'rappuswamy@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf42', 'Anastasia Ailamaki', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'aailamaki@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf44', 'Yiran Zhao', 'a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'yzhao@urbana-champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf46', 'Shen Li', 'a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'sli@urbana-champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf48', 'Shaohan Hu', 'a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'shu@urbana-champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf4a', 'Hongwei Wang', 'a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'hwang@urbana-champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf4c', 'Shuochao Yao', 'a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'syao@urbana-champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf4e', 'Huajie Shao', 'a92eb70e-3e0e-497a-ab08-38aec34ecca4', 'hshao@urbana-champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf52', 'Tarek Abdelzaher', 'a92eb70e-3e0e-497a-ab08-38aec34ecf51', 'tabdelzaher@champaign.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf55', 'Alexandru Iosup', 'a92eb70e-3e0e-497a-ab08-38aec34ecf54', 'aiosup@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf57', 'Tim Hegeman', 'a92eb70e-3e0e-497a-ab08-38aec34ecf54', 'thegeman@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf59', 'Wing Lung Ngai', 'a92eb70e-3e0e-497a-ab08-38aec34ecf54', 'wngai@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf5b', 'Stijn Heldens', 'a92eb70e-3e0e-497a-ab08-38aec34ecf54', 'sheldens@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf5e', 'Arnau Prat-Pérez', 'a92eb70e-3e0e-497a-ab08-38aec34ecf5d', 'aprat-pérez@catalunya.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf61', 'Thomas Manhardt', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'tmanhardt@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf63', 'Hassan Chafi', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'hchafi@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf66', 'Mihai Capotă', 'a92eb70e-3e0e-497a-ab08-38aec34ecf65', 'mcapotă@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf68', 'Narayanan Sundaram', 'a92eb70e-3e0e-497a-ab08-38aec34ecf65', 'nsundaram@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf6a', 'Michael Anderson', 'a92eb70e-3e0e-497a-ab08-38aec34ecf65', 'manderson@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf6c', 'Ilie Gabriel Tanase', 'a92eb70e-3e0e-497a-ab08-38aec34e5248', 'itanase@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf6f', 'Yinglong Xia', 'a92eb70e-3e0e-497a-ab08-38aec34ecf6e', 'yxia@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ecf73', 'Lifeng Nai', 'a92eb70e-3e0e-497a-ab08-38aec34ecf72', 'lnai@tech.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed318', 'Aneesh Sharma', 'a92eb70e-3e0e-497a-ab08-38aec34ed317', 'asharma@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed31a', 'Jerry Jiang', 'a92eb70e-3e0e-497a-ab08-38aec34ed317', 'jjiang@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed31c', 'Praveen Bommannavar', 'a92eb70e-3e0e-497a-ab08-38aec34ed317', 'pbommannavar@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed31e', 'Brian Larson', 'a92eb70e-3e0e-497a-ab08-38aec34ed317', 'blarson@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed5b7', 'Martin Sevenich', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'msevenich@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed5b9', 'Sungpack Hong', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'shong@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed5bb', 'Oskar Van Rest', 'a92eb70e-3e0e-497a-ab08-38aec34e6e17', 'orest@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed5bd', 'Zhe Wu', 'a92eb70e-3e0e-497a-ab08-38aec34e795d', 'zwu@oracle.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed5bf', 'Jayanta Banerjee', 'a92eb70e-3e0e-497a-ab08-38aec34e795d', 'jbanerjee@oracle.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed86e', 'Pedro Pedreira', 'a92eb70e-3e0e-497a-ab08-38aec34ed86d', 'ppedreira@inc.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed872', 'Chris Croswhite', 'a92eb70e-3e0e-497a-ab08-38aec34ed871', 'ccroswhite@inc..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed875', 'Luis Bona', 'a92eb70e-3e0e-497a-ab08-38aec34ed874', 'lbona@parana.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ed877', 'Compressed Linear Algebra for Large-Scale Machine Learning Ahmed Elgohary', 'a92eb70e-3e0e-497a-ab08-38aec34e52fe', 'celgohary@maryland.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee17a', 'and Berthold Reinwald', 'a92eb70e-3e0e-497a-ab08-38aec34ee179', 'areinwald@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee17d', 'The New Casper: Query Processing for Location Services without Compromising Privacy Mohamed F. Mokbel', 'a92eb70e-3e0e-497a-ab08-38aec34ee17c', 'tmokbel@mokbel.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee181', 'Chi-Yin Chow', 'a92eb70e-3e0e-497a-ab08-38aec34ee17f', 'cchow@chow.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee184', 'Walid G. Aref VLDB 2006 for inspiring research to support privacy in spatial query processing.', 'a92eb70e-3e0e-497a-ab08-38aec34ee183', 'wprocessing.@processing..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee187', 'Xin Luna Dong for advancing the state of the art of knowledge fusion', 'a92eb70e-3e0e-497a-ab08-38aec34ee186', 'xfusion@fusion.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee18a', 'Magdalena Balazinska for her inspirational research record on scalable distributed data systems.', 'a92eb70e-3e0e-497a-ab08-38aec34ee189', 'msystems.@systems..edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee18d', 'Xin Luna Dong', 'a92eb70e-3e0e-497a-ab08-38aec34ee18c', 'xdong@dong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee191', 'Mohamed Mokbel', 'a92eb70e-3e0e-497a-ab08-38aec34ee18f', 'mmokbel@mokbel.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee44c', 'and Walid Aref', 'a92eb70e-3e0e-497a-ab08-38aec34ee44b', 'aaref@aref.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee44e', 'Fisnik Kastrati', 'a92eb70e-3e0e-497a-ab08-38aec34e7d54', 'fkastrati@mannheim.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ee6fb', 'Immanuel Trummer', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'itrummer@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef32', 'Tenindra Abeywickrama', 'a92eb70e-3e0e-497a-ab08-38aec34eef31', 'tabeywickrama@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef34', 'Muhammad Cheema', 'a92eb70e-3e0e-497a-ab08-38aec34eef31', 'mcheema@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef36', 'David Taniar', 'a92eb70e-3e0e-497a-ab08-38aec34eef31', 'dtaniar@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef39', 'Xiang Wang', 'a92eb70e-3e0e-497a-ab08-38aec34eef38', 'xwang@wales.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34eef3c', 'Ying Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34eef3b', 'yzhang@sydney.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5b1', 'Zengfeng Huang', 'a92eb70e-3e0e-497a-ab08-38aec34eef38', 'zhuang@wales.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5b4', 'Farhana Choudhury', 'a92eb70e-3e0e-497a-ab08-38aec34ef5b3', 'fchoudhury@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5b6', 'Shane Culpepper', 'a92eb70e-3e0e-497a-ab08-38aec34ef5b3', 'sculpepper@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5b8', 'Timos Sellis', 'a92eb70e-3e0e-497a-ab08-38aec34ef5b3', 'tsellis@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5bb', 'Xin Cao', 'a92eb70e-3e0e-497a-ab08-38aec34ef5ba', 'xcao@belfast.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5be', 'Fabien André', 'a92eb70e-3e0e-497a-ab08-38aec34ef5bd', 'fandré@technicolor.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5c1', 'Anne-Marie Kermarrec', 'a92eb70e-3e0e-497a-ab08-38aec34e5391', 'akermarrec@inria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5c3', 'Nicolas Le Scouarnec', 'a92eb70e-3e0e-497a-ab08-38aec34ef5bd', 'nscouarnec@technicolor.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5c6', 'Ryan Marcus', 'a92eb70e-3e0e-497a-ab08-38aec34ef5c5', 'rmarcus@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef5c8', 'Olga Papaemmanouil', 'a92eb70e-3e0e-497a-ab08-38aec34ef5c5', 'opapaemmanouil@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34ef896', 'Jinfeng Li', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'jli@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb66', 'Matteo Interlandi', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'minterlandi@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb68', 'Kshitij Shah', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'kshah@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb6a', 'Sai Tetali', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'stetali@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb6c', 'Muhammad Gulzar', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'mgulzar@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb6e', 'Seunghyun Yoo', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'syoo@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb71', 'Miryung Kim', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'mkim@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb73', 'Todd Millstein', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'tmillstein@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34efb75', 'Tyson Condie', 'a92eb70e-3e0e-497a-ab08-38aec34efb65', 'tcondie@angeles.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f1223', 'Donatella Firmani', 'a92eb70e-3e0e-497a-ab08-38aec34f1222', 'dfirmani@vergata”.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f1225', 'Barna Saha', 'a92eb70e-3e0e-497a-ab08-38aec34ebf5d', 'bsaha@amherst.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f14ef', 'Giovanni Simonini', 'a92eb70e-3e0e-497a-ab08-38aec34f14ee', 'gsimonini@emilia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f14f2', 'Sonia Bergamaschi', 'a92eb70e-3e0e-497a-ab08-38aec34f14ee', 'sbergamaschi@emilia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17cd', 'Hotham Altwaijry', 'a92eb70e-3e0e-497a-ab08-38aec34e7d49', 'haltwaijry@irvine.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17cf', 'Sharad Mehrotra', 'a92eb70e-3e0e-497a-ab08-38aec34e7d49', 'smehrotra@irvine.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17d2', 'Dmitri Kalashnikov', 'a92eb70e-3e0e-497a-ab08-38aec34e5889', 'dkalashnikov@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17d5', 'George Papadakis', 'a92eb70e-3e0e-497a-ab08-38aec34f17d4', 'gpapadakis@athens.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17d8', 'Jonathan Svirsky', 'a92eb70e-3e0e-497a-ab08-38aec34f17d7', 'jsvirsky@technion.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17da', 'Avigdor Gal', 'a92eb70e-3e0e-497a-ab08-38aec34f17d7', 'agal@technion.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17dd', 'Themis Palpanas', 'a92eb70e-3e0e-497a-ab08-38aec34f17dc', 'tpalpanas@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17e1', 'Willi Mann', 'a92eb70e-3e0e-497a-ab08-38aec34f17df', 'wmann@salzburg.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17e3', 'Nikolaus Augsten', 'a92eb70e-3e0e-497a-ab08-38aec34f17df', 'naugsten@salzburg.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17e6', 'Panagiotis Bouros', 'a92eb70e-3e0e-497a-ab08-38aec34f17e5', 'pbouros@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17e8', 'Gianmarco De Francisci Morales', 'a92eb70e-3e0e-497a-ab08-38aec34e54ac', 'gmorales@institute.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f17eb', 'Aristides Gionis', 'a92eb70e-3e0e-497a-ab08-38aec34f17ea', 'agionis@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f21a1', 'Jianhua Feng', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'jfeng@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f21a3', 'Manos Karpathiotakis', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'mkarpathiotakis@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f21a5', 'Ioannis Alagiannis', 'a92eb70e-3e0e-497a-ab08-38aec34e5492', 'ialagiannis@epfl.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f2491', 'Xiaohang Zhang', 'a92eb70e-3e0e-497a-ab08-38aec34e52e3', 'wxzhang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f2a68', 'Daniel Haas', 'a92eb70e-3e0e-497a-ab08-38aec34e9f87', 'dhaas@berkeley.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f342d', 'Naoto Ohsaka', 'a92eb70e-3e0e-497a-ab08-38aec34e9f7e', 'nohsaka@tokyo.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f39f9', 'Ken-ichi Kawarabayashi', 'a92eb70e-3e0e-497a-ab08-38aec34e9f82', 'kkawarabayashi@informatics.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f39fc', 'Wei Lu', 'a92eb70e-3e0e-497a-ab08-38aec34f39fb', 'wlu@columbia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f3ced', 'Laks Lakshmanan', 'a92eb70e-3e0e-497a-ab08-38aec34f39fb', 'llakshmanan@columbia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43d1', 'Curtis Dyreson', 'a92eb70e-3e0e-497a-ab08-38aec34f43cf', 'cdyreson@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43d4', 'Vasiliki Kalavri', 'a92eb70e-3e0e-497a-ab08-38aec34f43d3', 'vkalavri@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43d7', 'Tiago Simas', 'a92eb70e-3e0e-497a-ab08-38aec34f43d6', 'tsimas@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43d9', 'Dionysios Logothetis', 'a92eb70e-3e0e-497a-ab08-38aec34e9f7b', 'dlogothetis@facebook.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43dc', 'Manohar Kaul', 'a92eb70e-3e0e-497a-ab08-38aec34f43db', 'mkaul@berlin.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f43de', 'Raymond Chi-Wing Wong', 'a92eb70e-3e0e-497a-ab08-38aec34ec7b2', 'rwong@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f46d8', 'Michalis Mountantonakis', 'a92eb70e-3e0e-497a-ab08-38aec34f46d7', 'mmountantonakis@forth.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f46da', 'Yannis Tzitzikas', 'a92eb70e-3e0e-497a-ab08-38aec34f46d7', 'ytzitzikas@forth.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cce', 'Minsuk Kahng', 'a92eb70e-3e0e-497a-ab08-38aec34f4ccd', 'mkahng@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cd1', 'Shamkant Navathe', 'a92eb70e-3e0e-497a-ab08-38aec34f4ccd', 'snavathe@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cd3', 'John Stasko', 'a92eb70e-3e0e-497a-ab08-38aec34f4ccd', 'jstasko@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cd5', 'Duen Horng Chau', 'a92eb70e-3e0e-497a-ab08-38aec34f4ccd', 'dchau@technology.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cd8', 'Diptikalyan Saha', 'a92eb70e-3e0e-497a-ab08-38aec34f4cd7', 'dsaha@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cda', 'Avrilia Floratou', 'a92eb70e-3e0e-497a-ab08-38aec34e52fb', 'afloratou@almaden.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4cdd', 'Karthik Sankaranarayanan', 'a92eb70e-3e0e-497a-ab08-38aec34f4cdc', 'ksankaranarayanan@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f4fdf', 'Ashish Mittal', 'a92eb70e-3e0e-497a-ab08-38aec34f4cdc', 'amittal@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f53e3', 'Rishabh Singh', 'a92eb70e-3e0e-497a-ab08-38aec34e5231', 'rsingh@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f53e5', 'Hao Li', 'a92eb70e-3e0e-497a-ab08-38aec34e64c5', 'hli@singapore.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f53e7', 'Chee-Yong Chan', 'a92eb70e-3e0e-497a-ab08-38aec34e64c5', 'cchan@singapore.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56ee', 'Marco Calautti', 'a92eb70e-3e0e-497a-ab08-38aec34f56ed', 'mcalautti@calabria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56f1', 'Sergio Greco', 'a92eb70e-3e0e-497a-ab08-38aec34f56ed', 'sgreco@calabria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56f3', 'Cristian Molinaro', 'a92eb70e-3e0e-497a-ab08-38aec34f56ed', 'cmolinaro@calabria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56f5', 'Irina Trubitsyna', 'a92eb70e-3e0e-497a-ab08-38aec34f56ed', 'itrubitsyna@calabria.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56f7', 'Cibele Freire', 'a92eb70e-3e0e-497a-ab08-38aec34ebf5d', 'cfreire@amherst.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56fa', 'Wolfgang Gatterbauer', 'a92eb70e-3e0e-497a-ab08-38aec34f56f9', 'wgatterbauer@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f56fc', 'Neil Immerman', 'a92eb70e-3e0e-497a-ab08-38aec34ebf5d', 'nimmerman@amherst.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a1a', 'Tong Yang', 'a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'tyang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a1d', 'Alex X. Liu', 'a92eb70e-3e0e-497a-ab08-38aec34f5a1c', 'aliu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a21', 'Muhammad Shahzad', 'a92eb70e-3e0e-497a-ab08-38aec34f5a1f', 'mshahzad@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a24', 'Yuankun Zhong', 'a92eb70e-3e0e-497a-ab08-38aec34f5a23', 'yzhong@uinversity.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a27', 'Qiaobin Fu', 'a92eb70e-3e0e-497a-ab08-38aec34f5a26', 'qfu@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a2a', 'Zi Li', 'a92eb70e-3e0e-497a-ab08-38aec34f5a29', 'zli@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a2d', 'Gaogang Xie', 'a92eb70e-3e0e-497a-ab08-38aec34f5a2c', 'gxie@cas.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a2f', 'Xiaoming Li', 'a92eb70e-3e0e-497a-ab08-38aec34e52d8', 'xli@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a32', 'Michael Maddox', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'mmaddox@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a34', 'David Goehring', 'a92eb70e-3e0e-497a-ab08-38aec34e52ae', 'dgoehring@mit.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f5a37', 'Aaron Elmore', 'a92eb70e-3e0e-497a-ab08-38aec34f5a36', 'aelmore@chicago.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f6168', 'Amol Deshpande', 'a92eb70e-3e0e-497a-ab08-38aec34e52fe', 'adeshpande@maryland.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f71e5', 'Jeff Ballard', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'wjballard@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34f92f8', 'Paraschos Koutris', 'a92eb70e-3e0e-497a-ab08-38aec34e5575', 'pkoutris@madison.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa391', 'George Alexiou', 'a92eb70e-3e0e-497a-ab08-38aec34fa38f', 'galexiou@center.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa393', 'George Papastefanatos', 'a92eb70e-3e0e-497a-ab08-38aec34fa38f', 'gpapastefanatos@center.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa396', 'Georgia Koutrika', 'a92eb70e-3e0e-497a-ab08-38aec34fa395', 'gkoutrika@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa399', 'Yixiang Fang', 'a92eb70e-3e0e-497a-ab08-38aec34fa398', 'yfang@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa39b', 'Reynold Cheng', NULL, 'null', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa39d', 'Siqiang Luo', 'a92eb70e-3e0e-497a-ab08-38aec34fa398', 'sluo@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa39f', 'Jiafeng Hu', 'a92eb70e-3e0e-497a-ab08-38aec34fa398', 'jhu@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa3a2', 'Xin Huang', 'a92eb70e-3e0e-497a-ab08-38aec34f39fb', 'xhuang@columbia.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6c7', 'Jeffrey Xu Yu', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'jyu@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6c9', 'Hong Cheng', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'hcheng@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6cb', 'Alessandro Epasto', 'a92eb70e-3e0e-497a-ab08-38aec34e529c', 'aepasto@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6cd', 'Silvio Lattanzi', 'a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'slattanzi@google.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6cf', 'Vahab Mirrokni', 'a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'vmirrokni@google.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6d2', 'Ismail Sebe', 'a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'isebe@google.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6d4', 'Ahmed Taei', 'a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'ataei@google.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6d6', 'Sunita Verma', 'a92eb70e-3e0e-497a-ab08-38aec34ecf22', 'sverma@google.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6d8', 'Sainyam Galhotra', 'a92eb70e-3e0e-497a-ab08-38aec34e799a', 'sgalhotra@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6da', 'Amitabha Bagchi', 'a92eb70e-3e0e-497a-ab08-38aec34e7d2b', 'abagchi@delhi.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fa6dc', 'Srikanta Bedathur', 'a92eb70e-3e0e-497a-ab08-38aec34f4cdc', 'sbedathur@india.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa1e', 'Vidit Jain', 'a92eb70e-3e0e-497a-ab08-38aec34faa1d', 'vjain@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa22', 'Hao Huang', 'a92eb70e-3e0e-497a-ab08-38aec34faa21', 'hhuang@research.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa25', 'Shiva Kasiviswanathan', 'a92eb70e-3e0e-497a-ab08-38aec34faa24', 'skasiviswanathan@america.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34faa27', 'Robert Brunel', 'a92eb70e-3e0e-497a-ab08-38aec34e7d65', 'rbrunel@münchen.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb191', 'Disheng Qiu', 'a92eb70e-3e0e-497a-ab08-38aec34fb18f', 'dqiu@tre.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb194', 'Luciano Barbosa', 'a92eb70e-3e0e-497a-ab08-38aec34fb193', 'lbarbosa@brazil.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb4cb', 'Yanyan Shen', 'a92eb70e-3e0e-497a-ab08-38aec34e64c5', 'yshen@singapore.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fb816', 'Zhenguo Li', 'a92eb70e-3e0e-497a-ab08-38aec34fb815', 'zli@huawei.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fbb4f', 'Qin Liu', 'a92eb70e-3e0e-497a-ab08-38aec34ec53e', 'qliu@kong.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fbb52', 'Jiefeng Cheng', 'a92eb70e-3e0e-497a-ab08-38aec34fb815', 'jcheng@huawei.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc2c8', 'ADMS - Rajesh Bordawekar', 'a92eb70e-3e0e-497a-ab08-38aec34e539d', 'abordawekar@watson.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc94f', 'Andy Pavlo', 'a92eb70e-3e0e-497a-ab08-38aec34f56f9', 'apavlo@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc953', 'Fusheng Wang', 'a92eb70e-3e0e-497a-ab08-38aec34fc952', 'fwang@university.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc956', 'Lixia Yao', 'a92eb70e-3e0e-497a-ab08-38aec34fc955', 'lyao@charlotte.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc958', 'Gang Luo', 'a92eb70e-3e0e-497a-ab08-38aec34e6e24', 'gluo@utah.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fc95a', 'Maheshweta Das', 'a92eb70e-3e0e-497a-ab08-38aec34e55a4', 'wmdas@labs.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fcc9d', 'Tilmann Rabl', 'a92eb70e-3e0e-497a-ab08-38aec34fcc9c', 'trabl@berlin.edu', NULL);
INSERT INTO person (id, name, institutionid, email, details) VALUES ('a92eb70e-3e0e-497a-ab08-38aec34fcc9f', 'Sebastian Schelter', 'a92eb70e-3e0e-497a-ab08-38aec34e51fb', 'sschelter@amazon.edu', NULL);


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: eliti
--
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000000,'a92eb70e-3e0e-497a-ab08-38aec34e51ea',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000000,'a92eb70e-3e0e-497a-ab08-38aec34e51ec',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000000,'a92eb70e-3e0e-497a-ab08-38aec34e51ef',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000001,'a92eb70e-3e0e-497a-ab08-38aec34e51f3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000001,'a92eb70e-3e0e-497a-ab08-38aec34e51f6',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000001,'a92eb70e-3e0e-497a-ab08-38aec34e51f9',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000001,'a92eb70e-3e0e-497a-ab08-38aec34e51fc',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000001,'a92eb70e-3e0e-497a-ab08-38aec34e51ff',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000002,'a92eb70e-3e0e-497a-ab08-38aec34e5213',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000002,'a92eb70e-3e0e-497a-ab08-38aec34e5216',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000003,'a92eb70e-3e0e-497a-ab08-38aec34e5219',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000003,'a92eb70e-3e0e-497a-ab08-38aec34e521b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000003,'a92eb70e-3e0e-497a-ab08-38aec34e521e',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000004,'a92eb70e-3e0e-497a-ab08-38aec34e5222',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000004,'a92eb70e-3e0e-497a-ab08-38aec34e5225',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000004,'a92eb70e-3e0e-497a-ab08-38aec34e5228',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000004,'a92eb70e-3e0e-497a-ab08-38aec34e522b',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000004,'a92eb70e-3e0e-497a-ab08-38aec34e522e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000005,'a92eb70e-3e0e-497a-ab08-38aec34e5232',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000005,'a92eb70e-3e0e-497a-ab08-38aec34e5234',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000006,'a92eb70e-3e0e-497a-ab08-38aec34e5237',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000006,'a92eb70e-3e0e-497a-ab08-38aec34e5239',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000006,'a92eb70e-3e0e-497a-ab08-38aec34e523b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000007,'a92eb70e-3e0e-497a-ab08-38aec34e523e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000007,'a92eb70e-3e0e-497a-ab08-38aec34e5241',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000007,'a92eb70e-3e0e-497a-ab08-38aec34e5243',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000007,'a92eb70e-3e0e-497a-ab08-38aec34e5246',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000007,'a92eb70e-3e0e-497a-ab08-38aec34e5249',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000008,'a92eb70e-3e0e-497a-ab08-38aec34e524c',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000008,'a92eb70e-3e0e-497a-ab08-38aec34e524f',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000009,'a92eb70e-3e0e-497a-ab08-38aec34e5253',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000009,'a92eb70e-3e0e-497a-ab08-38aec34e5255',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e5258',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e525a',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e525c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e525f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e5263',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e5265',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e5267',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000011,'a92eb70e-3e0e-497a-ab08-38aec34e5234',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000011,'a92eb70e-3e0e-497a-ab08-38aec34e5294',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000011,'a92eb70e-3e0e-497a-ab08-38aec34e5296',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000011,'a92eb70e-3e0e-497a-ab08-38aec34e5298',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000011,'a92eb70e-3e0e-497a-ab08-38aec34e529a',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e529d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52a1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52a3',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52a5',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52a7',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52aa',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52ac',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52af',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52b3',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52b6',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52b8',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52ba',12);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e52bc',13);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000013,'a92eb70e-3e0e-497a-ab08-38aec34e52bf',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000013,'a92eb70e-3e0e-497a-ab08-38aec34e52c2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000013,'a92eb70e-3e0e-497a-ab08-38aec34e52c4',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000013,'a92eb70e-3e0e-497a-ab08-38aec34e52c6',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000014,'a92eb70e-3e0e-497a-ab08-38aec34e52c9',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000014,'a92eb70e-3e0e-497a-ab08-38aec34e52cb',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000014,'a92eb70e-3e0e-497a-ab08-38aec34e52cd',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000199,'a92eb70e-3e0e-497a-ab08-38aec34fa6dc',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000199,'a92eb70e-3e0e-497a-ab08-38aec34faa1e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000200,'a92eb70e-3e0e-497a-ab08-38aec34faa22',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000200,'a92eb70e-3e0e-497a-ab08-38aec34faa25',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000201,'a92eb70e-3e0e-497a-ab08-38aec34e53c4',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000201,'a92eb70e-3e0e-497a-ab08-38aec34e7d6e',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000201,'a92eb70e-3e0e-497a-ab08-38aec34faa27',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000202,'a92eb70e-3e0e-497a-ab08-38aec34e588a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000202,'a92eb70e-3e0e-497a-ab08-38aec34ee18d',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000202,'a92eb70e-3e0e-497a-ab08-38aec34fb191',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000202,'a92eb70e-3e0e-497a-ab08-38aec34fb194',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000202,'a92eb70e-3e0e-497a-ab08-38aec34fb4cb',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34ec7ad',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34fa399',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34fa39b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34fb816',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34fbb4f',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34fbb52',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000205,'a92eb70e-3e0e-497a-ab08-38aec34e5234',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000205,'a92eb70e-3e0e-497a-ab08-38aec34e9298',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000205,'a92eb70e-3e0e-497a-ab08-38aec34fc2c8',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000205,'a92eb70e-3e0e-497a-ab08-38aec34fc94f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000206,'a92eb70e-3e0e-497a-ab08-38aec34fc953',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000206,'a92eb70e-3e0e-497a-ab08-38aec34fc956',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000206,'a92eb70e-3e0e-497a-ab08-38aec34fc958',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000207,'a92eb70e-3e0e-497a-ab08-38aec34e55a7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000207,'a92eb70e-3e0e-497a-ab08-38aec34fc95a',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000208,'a92eb70e-3e0e-497a-ab08-38aec34fcc9d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000208,'a92eb70e-3e0e-497a-ab08-38aec34fcc9f',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000014,'a92eb70e-3e0e-497a-ab08-38aec34e52cf',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000015,'a92eb70e-3e0e-497a-ab08-38aec34e52d3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000015,'a92eb70e-3e0e-497a-ab08-38aec34e52d6',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52d9',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52db',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52dd',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52e1',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52e4',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52e6',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52e9',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52ec',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52ef',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52f2',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52f4',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52f6',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52f9',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000018,'a92eb70e-3e0e-497a-ab08-38aec34e52f6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000018,'a92eb70e-3e0e-497a-ab08-38aec34e52fc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000018,'a92eb70e-3e0e-497a-ab08-38aec34e52ff',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000018,'a92eb70e-3e0e-497a-ab08-38aec34e5312',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000018,'a92eb70e-3e0e-497a-ab08-38aec34e5314',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000019,'a92eb70e-3e0e-497a-ab08-38aec34e5371',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000019,'a92eb70e-3e0e-497a-ab08-38aec34e5374',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000019,'a92eb70e-3e0e-497a-ab08-38aec34e5377',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000019,'a92eb70e-3e0e-497a-ab08-38aec34e5379',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000020,'a92eb70e-3e0e-497a-ab08-38aec34e537b',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000020,'a92eb70e-3e0e-497a-ab08-38aec34e537d',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000020,'a92eb70e-3e0e-497a-ab08-38aec34e537f',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000020,'a92eb70e-3e0e-497a-ab08-38aec34e5382',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000020,'a92eb70e-3e0e-497a-ab08-38aec34e5384',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000021,'a92eb70e-3e0e-497a-ab08-38aec34e5387',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000022,'a92eb70e-3e0e-497a-ab08-38aec34e538a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000022,'a92eb70e-3e0e-497a-ab08-38aec34e538c',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000022,'a92eb70e-3e0e-497a-ab08-38aec34e538e',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000022,'a92eb70e-3e0e-497a-ab08-38aec34e5392',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000023,'a92eb70e-3e0e-497a-ab08-38aec34e5395',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000023,'a92eb70e-3e0e-497a-ab08-38aec34e5397',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000023,'a92eb70e-3e0e-497a-ab08-38aec34e5399',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000023,'a92eb70e-3e0e-497a-ab08-38aec34e539b',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e539e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53a1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53a4',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53a6',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53a8',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53aa',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53ac',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e53af',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53b3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53b6',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53b8',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53ba',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53bc',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53be',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000026,'a92eb70e-3e0e-497a-ab08-38aec34e53c2',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000026,'a92eb70e-3e0e-497a-ab08-38aec34e53c4',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000026,'a92eb70e-3e0e-497a-ab08-38aec34e53c6',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000026,'a92eb70e-3e0e-497a-ab08-38aec34e53c8',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e53ba',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e53ca',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e53cc',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e5461',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e5463',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e5465',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5467',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5469',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e546c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e546f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5472',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5474',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5476',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5478',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e547b',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e547d',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000029,'a92eb70e-3e0e-497a-ab08-38aec34e5481',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000029,'a92eb70e-3e0e-497a-ab08-38aec34e5484',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000030,'a92eb70e-3e0e-497a-ab08-38aec34e5487',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000030,'a92eb70e-3e0e-497a-ab08-38aec34e5489',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000030,'a92eb70e-3e0e-497a-ab08-38aec34e548b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000030,'a92eb70e-3e0e-497a-ab08-38aec34e548d',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000030,'a92eb70e-3e0e-497a-ab08-38aec34e548f',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e5493',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e5495',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e5497',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e5499',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e549b',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e549d',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e549f',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e54a2',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000032,'a92eb70e-3e0e-497a-ab08-38aec34e54a5',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000032,'a92eb70e-3e0e-497a-ab08-38aec34e54a7',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000032,'a92eb70e-3e0e-497a-ab08-38aec34e54aa',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000032,'a92eb70e-3e0e-497a-ab08-38aec34e54ad',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000032,'a92eb70e-3e0e-497a-ab08-38aec34e54af',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000033,'a92eb70e-3e0e-497a-ab08-38aec34e52af',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000033,'a92eb70e-3e0e-497a-ab08-38aec34e54b2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000033,'a92eb70e-3e0e-497a-ab08-38aec34e556b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000033,'a92eb70e-3e0e-497a-ab08-38aec34e556d',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000034,'a92eb70e-3e0e-497a-ab08-38aec34e5571',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000034,'a92eb70e-3e0e-497a-ab08-38aec34e5573',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5576',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5578',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e557a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e557c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e557e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5581',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5583',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5585',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5587',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5589',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e558b',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e558e',12);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5591',13);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5593',14);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000036,'a92eb70e-3e0e-497a-ab08-38aec34e5596',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000036,'a92eb70e-3e0e-497a-ab08-38aec34e5598',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000036,'a92eb70e-3e0e-497a-ab08-38aec34e559a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000036,'a92eb70e-3e0e-497a-ab08-38aec34e559c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000037,'a92eb70e-3e0e-497a-ab08-38aec34e559f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000037,'a92eb70e-3e0e-497a-ab08-38aec34e55a2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000037,'a92eb70e-3e0e-497a-ab08-38aec34e55a5',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000037,'a92eb70e-3e0e-497a-ab08-38aec34e55a7',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000039,'a92eb70e-3e0e-497a-ab08-38aec34e51f6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000039,'a92eb70e-3e0e-497a-ab08-38aec34e55aa',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000039,'a92eb70e-3e0e-497a-ab08-38aec34e567f',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000040,'a92eb70e-3e0e-497a-ab08-38aec34e5682',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000040,'a92eb70e-3e0e-497a-ab08-38aec34e5684',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000040,'a92eb70e-3e0e-497a-ab08-38aec34e5686',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000041,'a92eb70e-3e0e-497a-ab08-38aec34e5688',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000041,'a92eb70e-3e0e-497a-ab08-38aec34e568a',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000041,'a92eb70e-3e0e-497a-ab08-38aec34e568c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000041,'a92eb70e-3e0e-497a-ab08-38aec34e568e',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e5692',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e5694',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e5697',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e5699',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e569b',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e569d',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e56a1',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e56a3',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000043,'a92eb70e-3e0e-497a-ab08-38aec34e52e4',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000043,'a92eb70e-3e0e-497a-ab08-38aec34e5789',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000043,'a92eb70e-3e0e-497a-ab08-38aec34e578b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000044,'a92eb70e-3e0e-497a-ab08-38aec34e5228',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000044,'a92eb70e-3e0e-497a-ab08-38aec34e578e',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000044,'a92eb70e-3e0e-497a-ab08-38aec34e5878',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000044,'a92eb70e-3e0e-497a-ab08-38aec34e587a',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000044,'a92eb70e-3e0e-497a-ab08-38aec34e587c',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000045,'a92eb70e-3e0e-497a-ab08-38aec34e587e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000045,'a92eb70e-3e0e-497a-ab08-38aec34e5882',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000045,'a92eb70e-3e0e-497a-ab08-38aec34e5885',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000045,'a92eb70e-3e0e-497a-ab08-38aec34e5887',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000045,'a92eb70e-3e0e-497a-ab08-38aec34e588a',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000046,'a92eb70e-3e0e-497a-ab08-38aec34e52b8',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000046,'a92eb70e-3e0e-497a-ab08-38aec34e54ad',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000046,'a92eb70e-3e0e-497a-ab08-38aec34e588c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000046,'a92eb70e-3e0e-497a-ab08-38aec34e588e',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000046,'a92eb70e-3e0e-497a-ab08-38aec34e5983',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000047,'a92eb70e-3e0e-497a-ab08-38aec34e5a79',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000047,'a92eb70e-3e0e-497a-ab08-38aec34e5a7c',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000047,'a92eb70e-3e0e-497a-ab08-38aec34e5a7e',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000047,'a92eb70e-3e0e-497a-ab08-38aec34e5a81',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000047,'a92eb70e-3e0e-497a-ab08-38aec34e5a83',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000048,'a92eb70e-3e0e-497a-ab08-38aec34e5a86',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000048,'a92eb70e-3e0e-497a-ab08-38aec34e5a88',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000049,'a92eb70e-3e0e-497a-ab08-38aec34e5a8a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000049,'a92eb70e-3e0e-497a-ab08-38aec34e5a8d',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000049,'a92eb70e-3e0e-497a-ab08-38aec34e5a8f',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000049,'a92eb70e-3e0e-497a-ab08-38aec34e5a93',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000049,'a92eb70e-3e0e-497a-ab08-38aec34e5a95',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000050,'a92eb70e-3e0e-497a-ab08-38aec34e5a98',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000050,'a92eb70e-3e0e-497a-ab08-38aec34e5a9b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000050,'a92eb70e-3e0e-497a-ab08-38aec34e5a9d',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000050,'a92eb70e-3e0e-497a-ab08-38aec34e5a9f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000051,'a92eb70e-3e0e-497a-ab08-38aec34e5aa3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000052,'a92eb70e-3e0e-497a-ab08-38aec34e5219',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000052,'a92eb70e-3e0e-497a-ab08-38aec34e5aa6',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000052,'a92eb70e-3e0e-497a-ab08-38aec34e5aa8',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000052,'a92eb70e-3e0e-497a-ab08-38aec34e5bb2',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e52f6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e52fc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5314',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5cbd',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5cbf',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5cc2',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5cc4',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5cc6',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5ee4',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5ee6',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e5ee8',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5eea',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5eec',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5eee',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5ef1',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5ef3',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5ef5',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5ef7',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000055,'a92eb70e-3e0e-497a-ab08-38aec34e5efa',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000055,'a92eb70e-3e0e-497a-ab08-38aec34e5efc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000055,'a92eb70e-3e0e-497a-ab08-38aec34e5efe',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000056,'a92eb70e-3e0e-497a-ab08-38aec34e5f12',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000056,'a92eb70e-3e0e-497a-ab08-38aec34e5f14',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000056,'a92eb70e-3e0e-497a-ab08-38aec34e5f17',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000057,'a92eb70e-3e0e-497a-ab08-38aec34e5f1a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000057,'a92eb70e-3e0e-497a-ab08-38aec34e5f1c',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000058,'a92eb70e-3e0e-497a-ab08-38aec34e5f1a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000058,'a92eb70e-3e0e-497a-ab08-38aec34e5f1c',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000058,'a92eb70e-3e0e-497a-ab08-38aec34e6141',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000058,'a92eb70e-3e0e-497a-ab08-38aec34e6143',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000059,'a92eb70e-3e0e-497a-ab08-38aec34e51ea',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000059,'a92eb70e-3e0e-497a-ab08-38aec34e51ec',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000059,'a92eb70e-3e0e-497a-ab08-38aec34e638b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000060,'a92eb70e-3e0e-497a-ab08-38aec34e64b3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000060,'a92eb70e-3e0e-497a-ab08-38aec34e64b5',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000060,'a92eb70e-3e0e-497a-ab08-38aec34e64b7',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000060,'a92eb70e-3e0e-497a-ab08-38aec34e64b9',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000061,'a92eb70e-3e0e-497a-ab08-38aec34e64bc',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000061,'a92eb70e-3e0e-497a-ab08-38aec34e64be',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000061,'a92eb70e-3e0e-497a-ab08-38aec34e64c1',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000061,'a92eb70e-3e0e-497a-ab08-38aec34e64c3',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000062,'a92eb70e-3e0e-497a-ab08-38aec34e64c6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000062,'a92eb70e-3e0e-497a-ab08-38aec34e64c8',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000062,'a92eb70e-3e0e-497a-ab08-38aec34e64cb',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000062,'a92eb70e-3e0e-497a-ab08-38aec34e64cd',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000063,'a92eb70e-3e0e-497a-ab08-38aec34e64d1',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000063,'a92eb70e-3e0e-497a-ab08-38aec34e64d3',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000063,'a92eb70e-3e0e-497a-ab08-38aec34e64d5',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64d7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64d9',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64db',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64dd',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64df',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64e3',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000065,'a92eb70e-3e0e-497a-ab08-38aec34e64d7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000065,'a92eb70e-3e0e-497a-ab08-38aec34e64d9',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000065,'a92eb70e-3e0e-497a-ab08-38aec34e64e3',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000065,'a92eb70e-3e0e-497a-ab08-38aec34e64e5',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000066,'a92eb70e-3e0e-497a-ab08-38aec34e5efe',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000066,'a92eb70e-3e0e-497a-ab08-38aec34e68aa',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000066,'a92eb70e-3e0e-497a-ab08-38aec34e68ac',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e55a7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69ed',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69ef',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69f3',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69f6',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69f9',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69fc',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000069,'a92eb70e-3e0e-497a-ab08-38aec34e6b54',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000069,'a92eb70e-3e0e-497a-ab08-38aec34e6b56',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000069,'a92eb70e-3e0e-497a-ab08-38aec34e6b59',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000069,'a92eb70e-3e0e-497a-ab08-38aec34e6b5c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e54ad',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e5983',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6b5f',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6b62',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6b64',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6dfd',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6dff',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6e12',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000071,'a92eb70e-3e0e-497a-ab08-38aec34e6e15',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000071,'a92eb70e-3e0e-497a-ab08-38aec34e6e18',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000071,'a92eb70e-3e0e-497a-ab08-38aec34e6e1a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000071,'a92eb70e-3e0e-497a-ab08-38aec34e6e1c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000072,'a92eb70e-3e0e-497a-ab08-38aec34e6e1f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000072,'a92eb70e-3e0e-497a-ab08-38aec34e6e22',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000073,'a92eb70e-3e0e-497a-ab08-38aec34e6e25',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000073,'a92eb70e-3e0e-497a-ab08-38aec34e6e27',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000073,'a92eb70e-3e0e-497a-ab08-38aec34e6e29',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000074,'a92eb70e-3e0e-497a-ab08-38aec34e51ea',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000074,'a92eb70e-3e0e-497a-ab08-38aec34e6e2b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000074,'a92eb70e-3e0e-497a-ab08-38aec34e6f87',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e52e1',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e6f89',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e6f8c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e6f8f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e6f92',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e6f95',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e71f7',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e71f9',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000076,'a92eb70e-3e0e-497a-ab08-38aec34e55a7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000076,'a92eb70e-3e0e-497a-ab08-38aec34e71fb',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000076,'a92eb70e-3e0e-497a-ab08-38aec34e71fe',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000077,'a92eb70e-3e0e-497a-ab08-38aec34e7376',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000077,'a92eb70e-3e0e-497a-ab08-38aec34e7378',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000077,'a92eb70e-3e0e-497a-ab08-38aec34e737b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000077,'a92eb70e-3e0e-497a-ab08-38aec34e737e',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000077,'a92eb70e-3e0e-497a-ab08-38aec34e7381',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000078,'a92eb70e-3e0e-497a-ab08-38aec34e7384',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000078,'a92eb70e-3e0e-497a-ab08-38aec34e7386',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000078,'a92eb70e-3e0e-497a-ab08-38aec34e7388',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000079,'a92eb70e-3e0e-497a-ab08-38aec34e55a7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000079,'a92eb70e-3e0e-497a-ab08-38aec34e69f9',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000079,'a92eb70e-3e0e-497a-ab08-38aec34e71fb',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000079,'a92eb70e-3e0e-497a-ab08-38aec34e71fe',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000080,'a92eb70e-3e0e-497a-ab08-38aec34e795e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000080,'a92eb70e-3e0e-497a-ab08-38aec34e7961',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000081,'a92eb70e-3e0e-497a-ab08-38aec34e7964',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000081,'a92eb70e-3e0e-497a-ab08-38aec34e7966',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000081,'a92eb70e-3e0e-497a-ab08-38aec34e7968',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000081,'a92eb70e-3e0e-497a-ab08-38aec34e796a',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e796d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e796f',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e7972',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e7974',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e7976',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e7978',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e797a',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e797c',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e797f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7982',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7984',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7986',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7988',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e798a',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e798c',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e798e',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7991',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7993',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e7995',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000084,'a92eb70e-3e0e-497a-ab08-38aec34e7998',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000084,'a92eb70e-3e0e-497a-ab08-38aec34e799b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000084,'a92eb70e-3e0e-497a-ab08-38aec34e799d',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79a1',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79a4',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79a6',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79a9',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79ac',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79ae',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000086,'a92eb70e-3e0e-497a-ab08-38aec34e79b2',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000086,'a92eb70e-3e0e-497a-ab08-38aec34e79b5',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000087,'a92eb70e-3e0e-497a-ab08-38aec34e79b8',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000087,'a92eb70e-3e0e-497a-ab08-38aec34e79ba',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000087,'a92eb70e-3e0e-497a-ab08-38aec34e79bc',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000087,'a92eb70e-3e0e-497a-ab08-38aec34e79be',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000088,'a92eb70e-3e0e-497a-ab08-38aec34e5f12',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000088,'a92eb70e-3e0e-497a-ab08-38aec34e79c2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000088,'a92eb70e-3e0e-497a-ab08-38aec34e7b6c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000088,'a92eb70e-3e0e-497a-ab08-38aec34e7b6e',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000089,'a92eb70e-3e0e-497a-ab08-38aec34e64b5',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000089,'a92eb70e-3e0e-497a-ab08-38aec34e7b71',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000089,'a92eb70e-3e0e-497a-ab08-38aec34e7b73',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000089,'a92eb70e-3e0e-497a-ab08-38aec34e7b75',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000090,'a92eb70e-3e0e-497a-ab08-38aec34e7d26',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000090,'a92eb70e-3e0e-497a-ab08-38aec34e7d29',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000090,'a92eb70e-3e0e-497a-ab08-38aec34e7d2c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000090,'a92eb70e-3e0e-497a-ab08-38aec34e7d2e',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000091,'a92eb70e-3e0e-497a-ab08-38aec34e7d31',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000091,'a92eb70e-3e0e-497a-ab08-38aec34e7d34',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000091,'a92eb70e-3e0e-497a-ab08-38aec34e7d36',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000092,'a92eb70e-3e0e-497a-ab08-38aec34e7d38',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000092,'a92eb70e-3e0e-497a-ab08-38aec34e7d3a',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000092,'a92eb70e-3e0e-497a-ab08-38aec34e7d3c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000093,'a92eb70e-3e0e-497a-ab08-38aec34e7d3f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000093,'a92eb70e-3e0e-497a-ab08-38aec34e7d42',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000094,'a92eb70e-3e0e-497a-ab08-38aec34e7d45',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000094,'a92eb70e-3e0e-497a-ab08-38aec34e7d47',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000094,'a92eb70e-3e0e-497a-ab08-38aec34e7d4a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000094,'a92eb70e-3e0e-497a-ab08-38aec34e7d4c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000094,'a92eb70e-3e0e-497a-ab08-38aec34e7d4e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000096,'a92eb70e-3e0e-497a-ab08-38aec34e7d52',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000097,'a92eb70e-3e0e-497a-ab08-38aec34e7d55',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000097,'a92eb70e-3e0e-497a-ab08-38aec34e7d57',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000097,'a92eb70e-3e0e-497a-ab08-38aec34e7d59',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000098,'a92eb70e-3e0e-497a-ab08-38aec34e7d5c',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000098,'a92eb70e-3e0e-497a-ab08-38aec34e7d5e',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000098,'a92eb70e-3e0e-497a-ab08-38aec34e7d61',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000098,'a92eb70e-3e0e-497a-ab08-38aec34e7d63',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d66',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d68',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d6a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d6c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d6e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d71',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000100,'a92eb70e-3e0e-497a-ab08-38aec34e546f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000100,'a92eb70e-3e0e-497a-ab08-38aec34e5474',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000100,'a92eb70e-3e0e-497a-ab08-38aec34e7d74',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e8218',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e821b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e821d',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e821f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e8222',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e8224',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000102,'a92eb70e-3e0e-497a-ab08-38aec34e6e29',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000102,'a92eb70e-3e0e-497a-ab08-38aec34e8227',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000102,'a92eb70e-3e0e-497a-ab08-38aec34e8229',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000102,'a92eb70e-3e0e-497a-ab08-38aec34e83f4',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e64b3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e83f7',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e83f9',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e83fb',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e85da',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e85dc',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e54ad',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e85de',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e85e1',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e85e3',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e85e5',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e87cb',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e87cd',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000105,'a92eb70e-3e0e-497a-ab08-38aec34e7d6e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000105,'a92eb70e-3e0e-497a-ab08-38aec34e7d71',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000105,'a92eb70e-3e0e-497a-ab08-38aec34e87cf',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000105,'a92eb70e-3e0e-497a-ab08-38aec34e87d2',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000106,'a92eb70e-3e0e-497a-ab08-38aec34e52ac',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000106,'a92eb70e-3e0e-497a-ab08-38aec34e8ba3',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000106,'a92eb70e-3e0e-497a-ab08-38aec34e8ba5',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000106,'a92eb70e-3e0e-497a-ab08-38aec34e8ba7',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000106,'a92eb70e-3e0e-497a-ab08-38aec34e8d94',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000107,'a92eb70e-3e0e-497a-ab08-38aec34e537f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000107,'a92eb70e-3e0e-497a-ab08-38aec34e8d96',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000108,'a92eb70e-3e0e-497a-ab08-38aec34e8f85',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000108,'a92eb70e-3e0e-497a-ab08-38aec34e8f87',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000108,'a92eb70e-3e0e-497a-ab08-38aec34e8f89',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000108,'a92eb70e-3e0e-497a-ab08-38aec34e8f8b',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000108,'a92eb70e-3e0e-497a-ab08-38aec34e8f8d',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000109,'a92eb70e-3e0e-497a-ab08-38aec34e8f8f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000109,'a92eb70e-3e0e-497a-ab08-38aec34e8f92',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000109,'a92eb70e-3e0e-497a-ab08-38aec34e8f94',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000109,'a92eb70e-3e0e-497a-ab08-38aec34e8f96',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000109,'a92eb70e-3e0e-497a-ab08-38aec34e8f98',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e51f9',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e7961',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e8f9b',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e9296',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e9298',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e929a',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e929c',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e929e',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e92a1',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e92a3',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e92a5',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e92a7',12);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e94ac',13);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000111,'a92eb70e-3e0e-497a-ab08-38aec34e94af',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000111,'a92eb70e-3e0e-497a-ab08-38aec34e94b2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000111,'a92eb70e-3e0e-497a-ab08-38aec34e94b4',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000111,'a92eb70e-3e0e-497a-ab08-38aec34e94b6',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000111,'a92eb70e-3e0e-497a-ab08-38aec34e94b8',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e51ff',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e94bb',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e94bd',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e94bf',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e96cd',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e96cf',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000114,'a92eb70e-3e0e-497a-ab08-38aec34e51f6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000114,'a92eb70e-3e0e-497a-ab08-38aec34e96d2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000114,'a92eb70e-3e0e-497a-ab08-38aec34e96d4',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000115,'a92eb70e-3e0e-497a-ab08-38aec34e98e7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000115,'a92eb70e-3e0e-497a-ab08-38aec34e98e9',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000115,'a92eb70e-3e0e-497a-ab08-38aec34e98eb',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000115,'a92eb70e-3e0e-497a-ab08-38aec34e98ee',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000115,'a92eb70e-3e0e-497a-ab08-38aec34e98f1',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000116,'a92eb70e-3e0e-497a-ab08-38aec34e98f3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000116,'a92eb70e-3e0e-497a-ab08-38aec34e98f5',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000116,'a92eb70e-3e0e-497a-ab08-38aec34e98f7',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000117,'a92eb70e-3e0e-497a-ab08-38aec34e5887',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000117,'a92eb70e-3e0e-497a-ab08-38aec34e98f9',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000117,'a92eb70e-3e0e-497a-ab08-38aec34e98fb',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000117,'a92eb70e-3e0e-497a-ab08-38aec34e98fe',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000118,'a92eb70e-3e0e-497a-ab08-38aec34e64cb',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000118,'a92eb70e-3e0e-497a-ab08-38aec34e69fc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000118,'a92eb70e-3e0e-497a-ab08-38aec34e9b2d',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000118,'a92eb70e-3e0e-497a-ab08-38aec34e9f6b',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000118,'a92eb70e-3e0e-497a-ab08-38aec34e9f6d',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000119,'a92eb70e-3e0e-497a-ab08-38aec34e9f71',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000119,'a92eb70e-3e0e-497a-ab08-38aec34e9f74',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000119,'a92eb70e-3e0e-497a-ab08-38aec34e9f77',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000119,'a92eb70e-3e0e-497a-ab08-38aec34e9f79',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000119,'a92eb70e-3e0e-497a-ab08-38aec34e9f7c',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000120,'a92eb70e-3e0e-497a-ab08-38aec34e9f7f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000120,'a92eb70e-3e0e-497a-ab08-38aec34e9f83',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000120,'a92eb70e-3e0e-497a-ab08-38aec34e9f85',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000121,'a92eb70e-3e0e-497a-ab08-38aec34e9f88',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000121,'a92eb70e-3e0e-497a-ab08-38aec34e9f8a',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000121,'a92eb70e-3e0e-497a-ab08-38aec34e9f8c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000121,'a92eb70e-3e0e-497a-ab08-38aec34e9f8e',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000122,'a92eb70e-3e0e-497a-ab08-38aec34e9f92',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000122,'a92eb70e-3e0e-497a-ab08-38aec34e9f94',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000122,'a92eb70e-3e0e-497a-ab08-38aec34e9f96',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000122,'a92eb70e-3e0e-497a-ab08-38aec34e9f98',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34e5887',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34e5983',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34e9f9a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34e9f9d',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34e9fa1',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34ea519',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34e52b8',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34e54ad',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34e588c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34e5983',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34e6dff',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34ea74f',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34ea752',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34ea754',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34ea756',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000125,'a92eb70e-3e0e-497a-ab08-38aec34eb14b',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000125,'a92eb70e-3e0e-497a-ab08-38aec34eb14d',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000125,'a92eb70e-3e0e-497a-ab08-38aec34eb151',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000125,'a92eb70e-3e0e-497a-ab08-38aec34eb153',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000125,'a92eb70e-3e0e-497a-ab08-38aec34eb155',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000126,'a92eb70e-3e0e-497a-ab08-38aec34e64cb',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000126,'a92eb70e-3e0e-497a-ab08-38aec34ea752',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000126,'a92eb70e-3e0e-497a-ab08-38aec34eb395',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000126,'a92eb70e-3e0e-497a-ab08-38aec34eb397',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000126,'a92eb70e-3e0e-497a-ab08-38aec34eb5d9',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000128,'a92eb70e-3e0e-497a-ab08-38aec34e7d63',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000128,'a92eb70e-3e0e-497a-ab08-38aec34eb5db',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000128,'a92eb70e-3e0e-497a-ab08-38aec34eb5dd',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000129,'a92eb70e-3e0e-497a-ab08-38aec34eb834',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000129,'a92eb70e-3e0e-497a-ab08-38aec34eb836',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000129,'a92eb70e-3e0e-497a-ab08-38aec34eb838',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000129,'a92eb70e-3e0e-497a-ab08-38aec34eb83a',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000130,'a92eb70e-3e0e-497a-ab08-38aec34e64b7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000130,'a92eb70e-3e0e-497a-ab08-38aec34eb83c',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000130,'a92eb70e-3e0e-497a-ab08-38aec34eb83e',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000130,'a92eb70e-3e0e-497a-ab08-38aec34eb841',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000130,'a92eb70e-3e0e-497a-ab08-38aec34eb843',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34e6e12',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34eba91',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34eba93',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34ebce4',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34ebce6',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34ebce8',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000132,'a92eb70e-3e0e-497a-ab08-38aec34ebceb',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000132,'a92eb70e-3e0e-497a-ab08-38aec34ebced',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000133,'a92eb70e-3e0e-497a-ab08-38aec34e7d6c',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000133,'a92eb70e-3e0e-497a-ab08-38aec34ebcf1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000133,'a92eb70e-3e0e-497a-ab08-38aec34ebf57',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000134,'a92eb70e-3e0e-497a-ab08-38aec34ebf59',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000134,'a92eb70e-3e0e-497a-ab08-38aec34ebf5b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000135,'a92eb70e-3e0e-497a-ab08-38aec34ebf5e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000135,'a92eb70e-3e0e-497a-ab08-38aec34ebf62',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000135,'a92eb70e-3e0e-497a-ab08-38aec34ebf64',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000135,'a92eb70e-3e0e-497a-ab08-38aec34ebf66',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000136,'a92eb70e-3e0e-497a-ab08-38aec34ebf5b',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000136,'a92eb70e-3e0e-497a-ab08-38aec34ebf68',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000136,'a92eb70e-3e0e-497a-ab08-38aec34ebf6a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000137,'a92eb70e-3e0e-497a-ab08-38aec34e7d34',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000137,'a92eb70e-3e0e-497a-ab08-38aec34ec538',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000137,'a92eb70e-3e0e-497a-ab08-38aec34ec53a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000137,'a92eb70e-3e0e-497a-ab08-38aec34ec53c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34e556d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34e98f1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec53f',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec542',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec544',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec546',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec7ad',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec7af',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000139,'a92eb70e-3e0e-497a-ab08-38aec34eca2b',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000139,'a92eb70e-3e0e-497a-ab08-38aec34eca2d',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000139,'a92eb70e-3e0e-497a-ab08-38aec34eca2f',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000140,'a92eb70e-3e0e-497a-ab08-38aec34e52af',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000140,'a92eb70e-3e0e-497a-ab08-38aec34e9f6b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000140,'a92eb70e-3e0e-497a-ab08-38aec34eca32',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000140,'a92eb70e-3e0e-497a-ab08-38aec34eca35',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000140,'a92eb70e-3e0e-497a-ab08-38aec34ecf23',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000141,'a92eb70e-3e0e-497a-ab08-38aec34ecf25',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000141,'a92eb70e-3e0e-497a-ab08-38aec34ecf27',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000141,'a92eb70e-3e0e-497a-ab08-38aec34ecf29',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000141,'a92eb70e-3e0e-497a-ab08-38aec34ecf2b',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf2e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf31',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf33',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf35',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf37',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf39',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf3b',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000143,'a92eb70e-3e0e-497a-ab08-38aec34ecf3d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000143,'a92eb70e-3e0e-497a-ab08-38aec34ecf3f',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000143,'a92eb70e-3e0e-497a-ab08-38aec34ecf42',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf44',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf46',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf48',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf4a',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf4c',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf4e',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf52',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34e7d6c',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf55',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf57',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf59',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf5b',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf5e',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf61',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf63',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf66',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf68',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf6a',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf6c',12);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf6f',13);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf73',14);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000146,'a92eb70e-3e0e-497a-ab08-38aec34e79be',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000146,'a92eb70e-3e0e-497a-ab08-38aec34ed318',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000146,'a92eb70e-3e0e-497a-ab08-38aec34ed31a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000146,'a92eb70e-3e0e-497a-ab08-38aec34ed31c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000146,'a92eb70e-3e0e-497a-ab08-38aec34ed31e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ecf63',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ed5b7',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ed5b9',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ed5bb',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ed5bd',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ed5bf',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000148,'a92eb70e-3e0e-497a-ab08-38aec34ed86e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000148,'a92eb70e-3e0e-497a-ab08-38aec34ed872',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000148,'a92eb70e-3e0e-497a-ab08-38aec34ed875',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000150,'a92eb70e-3e0e-497a-ab08-38aec34e52fc',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000150,'a92eb70e-3e0e-497a-ab08-38aec34e5312',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000150,'a92eb70e-3e0e-497a-ab08-38aec34e5314',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000150,'a92eb70e-3e0e-497a-ab08-38aec34ed877',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000150,'a92eb70e-3e0e-497a-ab08-38aec34ee17a',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000151,'a92eb70e-3e0e-497a-ab08-38aec34ee17d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000151,'a92eb70e-3e0e-497a-ab08-38aec34ee181',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000151,'a92eb70e-3e0e-497a-ab08-38aec34ee184',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000152,'a92eb70e-3e0e-497a-ab08-38aec34ee187',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000153,'a92eb70e-3e0e-497a-ab08-38aec34ee18a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000154,'a92eb70e-3e0e-497a-ab08-38aec34ee18d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000155,'a92eb70e-3e0e-497a-ab08-38aec34ee181',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000155,'a92eb70e-3e0e-497a-ab08-38aec34ee191',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000155,'a92eb70e-3e0e-497a-ab08-38aec34ee44c',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000156,'a92eb70e-3e0e-497a-ab08-38aec34e7d59',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000156,'a92eb70e-3e0e-497a-ab08-38aec34ee44e',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000157,'a92eb70e-3e0e-497a-ab08-38aec34e54a2',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000157,'a92eb70e-3e0e-497a-ab08-38aec34ee6fb',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000158,'a92eb70e-3e0e-497a-ab08-38aec34e54a2',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000158,'a92eb70e-3e0e-497a-ab08-38aec34ee6fb',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000159,'a92eb70e-3e0e-497a-ab08-38aec34eef32',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000159,'a92eb70e-3e0e-497a-ab08-38aec34eef34',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000159,'a92eb70e-3e0e-497a-ab08-38aec34eef36',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000160,'a92eb70e-3e0e-497a-ab08-38aec34e5a7e',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000160,'a92eb70e-3e0e-497a-ab08-38aec34e5a83',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000160,'a92eb70e-3e0e-497a-ab08-38aec34eef39',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000160,'a92eb70e-3e0e-497a-ab08-38aec34eef3c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000160,'a92eb70e-3e0e-497a-ab08-38aec34ef5b1',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000161,'a92eb70e-3e0e-497a-ab08-38aec34ef5b4',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000161,'a92eb70e-3e0e-497a-ab08-38aec34ef5b6',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000161,'a92eb70e-3e0e-497a-ab08-38aec34ef5b8',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000161,'a92eb70e-3e0e-497a-ab08-38aec34ef5bb',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000162,'a92eb70e-3e0e-497a-ab08-38aec34ef5be',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000162,'a92eb70e-3e0e-497a-ab08-38aec34ef5c1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000162,'a92eb70e-3e0e-497a-ab08-38aec34ef5c3',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000163,'a92eb70e-3e0e-497a-ab08-38aec34ef5c6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000163,'a92eb70e-3e0e-497a-ab08-38aec34ef5c8',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000164,'a92eb70e-3e0e-497a-ab08-38aec34ec542',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000164,'a92eb70e-3e0e-497a-ab08-38aec34ec546',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000164,'a92eb70e-3e0e-497a-ab08-38aec34ef896',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb66',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb68',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb6a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb6c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb6e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb71',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb73',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb75',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000166,'a92eb70e-3e0e-497a-ab08-38aec34e69f6',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000166,'a92eb70e-3e0e-497a-ab08-38aec34e69fc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000167,'a92eb70e-3e0e-497a-ab08-38aec34e588a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000167,'a92eb70e-3e0e-497a-ab08-38aec34f1223',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000167,'a92eb70e-3e0e-497a-ab08-38aec34f1225',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000168,'a92eb70e-3e0e-497a-ab08-38aec34e64cb',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000168,'a92eb70e-3e0e-497a-ab08-38aec34f14ef',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000168,'a92eb70e-3e0e-497a-ab08-38aec34f14f2',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000169,'a92eb70e-3e0e-497a-ab08-38aec34f17cd',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000169,'a92eb70e-3e0e-497a-ab08-38aec34f17cf',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000169,'a92eb70e-3e0e-497a-ab08-38aec34f17d2',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000170,'a92eb70e-3e0e-497a-ab08-38aec34f17d5',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000170,'a92eb70e-3e0e-497a-ab08-38aec34f17d8',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000170,'a92eb70e-3e0e-497a-ab08-38aec34f17da',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000170,'a92eb70e-3e0e-497a-ab08-38aec34f17dd',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000171,'a92eb70e-3e0e-497a-ab08-38aec34f17e1',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000171,'a92eb70e-3e0e-497a-ab08-38aec34f17e3',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000171,'a92eb70e-3e0e-497a-ab08-38aec34f17e6',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000172,'a92eb70e-3e0e-497a-ab08-38aec34f17e8',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000172,'a92eb70e-3e0e-497a-ab08-38aec34f17eb',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000173,'a92eb70e-3e0e-497a-ab08-38aec34ea752',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000173,'a92eb70e-3e0e-497a-ab08-38aec34eb395',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000173,'a92eb70e-3e0e-497a-ab08-38aec34eb397',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000173,'a92eb70e-3e0e-497a-ab08-38aec34f21a1',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000174,'a92eb70e-3e0e-497a-ab08-38aec34ecf42',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000174,'a92eb70e-3e0e-497a-ab08-38aec34f21a3',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000174,'a92eb70e-3e0e-497a-ab08-38aec34f21a5',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000175,'a92eb70e-3e0e-497a-ab08-38aec34eb395',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000175,'a92eb70e-3e0e-497a-ab08-38aec34f21a1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000175,'a92eb70e-3e0e-497a-ab08-38aec34f2491',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000176,'a92eb70e-3e0e-497a-ab08-38aec34eb14d',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000176,'a92eb70e-3e0e-497a-ab08-38aec34eb151',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000176,'a92eb70e-3e0e-497a-ab08-38aec34eb153',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000176,'a92eb70e-3e0e-497a-ab08-38aec34f2a68',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000177,'a92eb70e-3e0e-497a-ab08-38aec34e9f83',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000177,'a92eb70e-3e0e-497a-ab08-38aec34e9f85',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000177,'a92eb70e-3e0e-497a-ab08-38aec34f342d',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000177,'a92eb70e-3e0e-497a-ab08-38aec34f39f9',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000178,'a92eb70e-3e0e-497a-ab08-38aec34e64c8',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000178,'a92eb70e-3e0e-497a-ab08-38aec34f39fc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000178,'a92eb70e-3e0e-497a-ab08-38aec34f3ced',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000179,'a92eb70e-3e0e-497a-ab08-38aec34e7b73',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000179,'a92eb70e-3e0e-497a-ab08-38aec34e7b75',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000179,'a92eb70e-3e0e-497a-ab08-38aec34f43d1',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000180,'a92eb70e-3e0e-497a-ab08-38aec34f43d4',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000180,'a92eb70e-3e0e-497a-ab08-38aec34f43d7',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000180,'a92eb70e-3e0e-497a-ab08-38aec34f43d9',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000181,'a92eb70e-3e0e-497a-ab08-38aec34e64b7',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000181,'a92eb70e-3e0e-497a-ab08-38aec34f43dc',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000181,'a92eb70e-3e0e-497a-ab08-38aec34f43de',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000182,'a92eb70e-3e0e-497a-ab08-38aec34f46d8',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000182,'a92eb70e-3e0e-497a-ab08-38aec34f46da',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000183,'a92eb70e-3e0e-497a-ab08-38aec34ea74f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000183,'a92eb70e-3e0e-497a-ab08-38aec34ea756',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000184,'a92eb70e-3e0e-497a-ab08-38aec34f4cce',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000184,'a92eb70e-3e0e-497a-ab08-38aec34f4cd1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000184,'a92eb70e-3e0e-497a-ab08-38aec34f4cd3',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000184,'a92eb70e-3e0e-497a-ab08-38aec34f4cd5',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34e52ef',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34e52f9',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34f4cd8',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34f4cda',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34f4cdd',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34f4fdf',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000186,'a92eb70e-3e0e-497a-ab08-38aec34f53e3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000187,'a92eb70e-3e0e-497a-ab08-38aec34e52b3',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000187,'a92eb70e-3e0e-497a-ab08-38aec34f53e5',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000187,'a92eb70e-3e0e-497a-ab08-38aec34f53e7',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000188,'a92eb70e-3e0e-497a-ab08-38aec34f56ee',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000188,'a92eb70e-3e0e-497a-ab08-38aec34f56f1',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000188,'a92eb70e-3e0e-497a-ab08-38aec34f56f3',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000188,'a92eb70e-3e0e-497a-ab08-38aec34f56f5',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000189,'a92eb70e-3e0e-497a-ab08-38aec34ebf66',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000189,'a92eb70e-3e0e-497a-ab08-38aec34f56f7',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000189,'a92eb70e-3e0e-497a-ab08-38aec34f56fa',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000189,'a92eb70e-3e0e-497a-ab08-38aec34f56fc',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a1a',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a1d',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a21',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a24',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a27',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a2a',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a2d',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a2f',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34e52af',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34e9f6b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34f5a32',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34f5a34',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34f5a37',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34f6168',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5576',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5578',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e557a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e557c',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e557e',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5583',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5585',7);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5587',8);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5589',9);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e558b',10);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e558e',11);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5591',12);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5593',13);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34f71e5',14);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000193,'a92eb70e-3e0e-497a-ab08-38aec34ea74f',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000193,'a92eb70e-3e0e-497a-ab08-38aec34ea756',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000193,'a92eb70e-3e0e-497a-ab08-38aec34f92f8',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000194,'a92eb70e-3e0e-497a-ab08-38aec34e5887',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000194,'a92eb70e-3e0e-497a-ab08-38aec34e79a6',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000194,'a92eb70e-3e0e-497a-ab08-38aec34e9f9a',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000194,'a92eb70e-3e0e-497a-ab08-38aec34e9f9d',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000195,'a92eb70e-3e0e-497a-ab08-38aec34f17d5',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000195,'a92eb70e-3e0e-497a-ab08-38aec34fa391',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000195,'a92eb70e-3e0e-497a-ab08-38aec34fa393',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000195,'a92eb70e-3e0e-497a-ab08-38aec34fa396',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000196,'a92eb70e-3e0e-497a-ab08-38aec34fa399',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000196,'a92eb70e-3e0e-497a-ab08-38aec34fa39b',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000196,'a92eb70e-3e0e-497a-ab08-38aec34fa39d',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000196,'a92eb70e-3e0e-497a-ab08-38aec34fa39f',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000197,'a92eb70e-3e0e-497a-ab08-38aec34f3ced',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000197,'a92eb70e-3e0e-497a-ab08-38aec34fa3a2',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000197,'a92eb70e-3e0e-497a-ab08-38aec34fa6c7',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000197,'a92eb70e-3e0e-497a-ab08-38aec34fa6c9',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6cb',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6cd',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6cf',3);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6d2',4);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6d4',5);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6d6',6);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000199,'a92eb70e-3e0e-497a-ab08-38aec34e7d2c',1);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000199,'a92eb70e-3e0e-497a-ab08-38aec34fa6d8',2);
INSERT INTO public.author (paperid,personid,"number") VALUES (
1000000199,'a92eb70e-3e0e-497a-ab08-38aec34fa6da',3);

--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eliti
--

SELECT pg_catalog.setval('conference_id_seq', 1, false);


--
-- Data for Name: kind; Type: TABLE DATA; Schema: public; Owner: eliti
--

﻿INSERT INTO public.kind ("name") VALUES (
'Workshop');
INSERT INTO public.kind ("name") VALUES (
'Tutorial');
INSERT INTO public.kind ("name") VALUES (
'Conference');
INSERT INTO public.kind ("name") VALUES (
'Keynote');
INSERT INTO public.kind ("name") VALUES (
'Research');
INSERT INTO public.kind ("name") VALUES (
'VLDB');
INSERT INTO public.kind ("name") VALUES (
'Buse');
INSERT INTO public.kind ("name") VALUES (
'Endowment');
INSERT INTO public.kind ("name") VALUES (
'Entertainment');
INSERT INTO public.kind ("name") VALUES (
'Demo');
INSERT INTO public.kind ("name") VALUES (
'Industry');


--
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: eliti
--

INSERT INTO room (id, name, map, size) VALUES (1, '', '', 100);
INSERT INTO room (id, name, map, size) VALUES (2, 'Boardroom', 'Boardroom', 100);
INSERT INTO room (id, name, map, size) VALUES (3, 'Kingdom of Dreams', 'KingdomofDreams', 100);
INSERT INTO room (id, name, map, size) VALUES (4, 'Maple', 'Maple', 100);
INSERT INTO room (id, name, map, size) VALUES (5, 'Pearl', 'Pearl', 100);
INSERT INTO room (id, name, map, size) VALUES (6, 'Pearl 1', 'Pearl1', 100);
INSERT INTO room (id, name, map, size) VALUES (7, 'Pearl 2', 'Pearl2', 100);
INSERT INTO room (id, name, map, size) VALUES (8, 'Royal 1', 'Royal1', 100);
INSERT INTO room (id, name, map, size) VALUES (9, 'Royal 2', 'Royal2', 100);


--
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: eliti
--

INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000000, 424242, 'Workshop', 'Workshop');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000001, 424242, 'Tutorial', 'Tutorial');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000002, 424242, 'Conference', 'Conference');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000003, 424242, 'Keynote', 'Keynote');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000004, 424242, 'Research', 'Research');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000005, 424242, 'VLDB', 'VLDB');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000006, 424242, 'Buse', 'Buse');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000007, 424242, 'Endowment', 'Endowment');
INSERT INTO track (id, conferenceid, name, kind) VALUES (1000000008, 424242, 'Entertainment', 'Entertainment');


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: eliti
--

INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000000, 'Workshop W3', 1000000000, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000001, 'Tutorials and Workshops Contd.', 1000000001, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000002, 'Workshops Contd.', 1000000000, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000003, 'Tutorials and Workshops Contd.', 1000000001, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000004, 'Conference Inauguration', 1000000002, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000005, 'Keynote 1', 1000000003, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000006, 'Research Posters 1', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000007, 'Research Posters 2', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000008, 'Research Posters 3', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000009, 'VLDB Conference Reception & Quiz Program', 1000000005, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000010, 'Keynote 2', 1000000003, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000011, 'Research Posters 4', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000012, 'Research Posters 5', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000013, 'Research Posters 6', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000014, 'Buses depart for banquet venue', 1000000006, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000015, 'VLDB Conference Banquet', 1000000005, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000016, 'Endowment Award Talk 2', 1000000007, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000017, 'Research R22: Entity Matching - 1', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000018, 'Research R26: Data and Query Models -2', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000019, 'Research R30: Scalable Analytics - 2', 1000000004, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000020, 'Entertainment Program and Gala Dinner', 1000000008, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000021, 'Workshop W8', 1000000000, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000022, 'Workshops Contd.', 1000000000, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000023, 'Workshops Contd.', 1000000000, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);
INSERT INTO session (id, name, trackid, starttime, endtime, chair) VALUES (1000000024, 'Workshops Contd.', 1000000000, '2016-09-05 12:30:00+02', '2016-09-05 14:00:00+02', NULL);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: eliti
--
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000001,1000000000,1000000001,4,NULL,'00:15:00','2016-12-24 09:00:00.000','Tutorial',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000002,1000000000,1000000002,8,NULL,'00:15:00','2016-12-22 16:30:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000003,1000000000,1000000003,9,NULL,'00:15:00','2016-12-24 10:30:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000124,1000000012,1000000124,7,NULL,'00:15:00','2016-12-22 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000125,1000000012,1000000125,7,NULL,'00:15:00','2016-12-24 11:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000126,1000000012,1000000126,7,NULL,'00:15:00','2016-12-24 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000038,1000000006,1000000038,4,NULL,'00:15:00','2016-12-25 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000039,1000000007,1000000039,6,NULL,'00:15:00','2016-12-24 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000040,1000000007,1000000040,6,NULL,'00:15:00','2016-12-24 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000041,1000000007,1000000041,6,NULL,'00:15:00','2016-12-23 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000042,1000000007,1000000042,6,NULL,'00:15:00','2016-12-23 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000043,1000000007,1000000043,7,NULL,'00:15:00','2016-12-24 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000044,1000000007,1000000044,7,NULL,'00:15:00','2016-12-25 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000045,1000000007,1000000045,7,NULL,'00:15:00','2016-12-22 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000046,1000000007,1000000046,7,NULL,'00:15:00','2016-12-24 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000047,1000000007,1000000047,8,NULL,'00:15:00','2016-12-23 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000048,1000000007,1000000048,8,NULL,'00:15:00','2016-12-23 18:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000049,1000000007,1000000049,8,NULL,'00:15:00','2016-12-22 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000050,1000000007,1000000050,8,NULL,'00:15:00','2016-12-23 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000068,1000000007,1000000068,4,NULL,'00:15:00','2016-12-24 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000069,1000000008,1000000069,6,NULL,'00:15:00','2016-12-23 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000070,1000000008,1000000070,6,NULL,'00:15:00','2016-12-23 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000071,1000000008,1000000071,6,NULL,'00:15:00','2016-12-22 11:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000072,1000000008,1000000072,6,NULL,'00:15:00','2016-12-24 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000073,1000000008,1000000073,7,NULL,'00:15:00','2016-12-24 16:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000074,1000000008,1000000074,7,NULL,'00:15:00','2016-12-22 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000075,1000000008,1000000075,7,NULL,'00:15:00','2016-12-22 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000076,1000000008,1000000076,8,NULL,'00:15:00','2016-12-23 17:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000077,1000000008,1000000077,8,NULL,'00:15:00','2016-12-25 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000078,1000000008,1000000078,8,NULL,'00:15:00','2016-12-24 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000079,1000000008,1000000079,8,NULL,'00:15:00','2016-12-23 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000095,1000000008,1000000095,4,NULL,'00:15:00','2016-12-22 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000096,1000000010,1000000096,5,NULL,'00:15:00','2016-12-24 09:30:00.000','Keynote',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000097,1000000011,1000000097,6,NULL,'00:15:00','2016-12-22 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000098,1000000011,1000000098,6,NULL,'00:15:00','2016-12-22 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000099,1000000011,1000000099,6,NULL,'00:15:00','2016-12-23 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000100,1000000011,1000000100,6,NULL,'00:15:00','2016-12-23 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000101,1000000011,1000000101,7,NULL,'00:15:00','2016-12-22 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000102,1000000011,1000000102,7,NULL,'00:15:00','2016-12-24 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000103,1000000011,1000000103,7,NULL,'00:15:00','2016-12-22 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000104,1000000011,1000000104,7,NULL,'00:15:00','2016-12-22 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000105,1000000011,1000000105,8,NULL,'00:15:00','2016-12-23 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000106,1000000011,1000000106,8,NULL,'00:15:00','2016-12-24 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000107,1000000011,1000000107,8,NULL,'00:15:00','2016-12-23 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000108,1000000011,1000000108,8,NULL,'00:15:00','2016-12-24 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000113,1000000011,1000000113,4,NULL,'00:15:00','2016-12-23 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000114,1000000012,1000000114,6,NULL,'00:15:00','2016-12-22 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000115,1000000012,1000000115,6,NULL,'00:15:00','2016-12-23 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000116,1000000012,1000000116,6,NULL,'00:15:00','2016-12-24 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000117,1000000012,1000000117,6,NULL,'00:15:00','2016-12-24 16:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000119,1000000012,1000000119,8,NULL,'00:15:00','2016-12-24 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000120,1000000012,1000000120,8,NULL,'00:15:00','2016-12-23 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000121,1000000012,1000000121,8,NULL,'00:15:00','2016-12-23 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000131,1000000012,1000000131,4,NULL,'00:15:00','2016-12-22 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000132,1000000012,1000000132,4,NULL,'00:15:00','2016-12-25 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000133,1000000012,1000000133,4,NULL,'00:15:00','2016-12-23 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000134,1000000013,1000000134,6,NULL,'00:15:00','2016-12-22 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000135,1000000013,1000000135,6,NULL,'00:15:00','2016-12-22 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000136,1000000013,1000000136,6,NULL,'00:15:00','2016-12-23 16:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000137,1000000013,1000000137,6,NULL,'00:15:00','2016-12-25 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000138,1000000013,1000000138,7,NULL,'00:15:00','2016-12-23 17:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000139,1000000013,1000000139,7,NULL,'00:15:00','2016-12-23 11:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000140,1000000013,1000000140,7,NULL,'00:15:00','2016-12-22 18:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000141,1000000013,1000000141,7,NULL,'00:15:00','2016-12-23 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000142,1000000013,1000000142,8,NULL,'00:15:00','2016-12-23 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000143,1000000013,1000000143,8,NULL,'00:15:00','2016-12-22 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000144,1000000013,1000000144,8,NULL,'00:15:00','2016-12-22 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000149,1000000013,1000000149,4,NULL,'00:15:00','2016-12-22 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000150,1000000016,1000000150,5,NULL,'00:15:00','2016-12-22 15:00:00.000','VLDB',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000151,1000000016,1000000151,5,NULL,'00:15:00','2016-12-22 14:00:00.000','VLDB',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000152,1000000016,1000000152,5,NULL,'00:15:00','2016-12-23 14:00:00.000','VLDB',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000153,1000000016,1000000153,5,NULL,'00:15:00','2016-12-22 11:00:00.000','VLDB',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000154,1000000016,1000000154,5,NULL,'00:15:00','2016-12-22 16:30:00.000','Endowment',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000155,1000000016,1000000155,5,NULL,'00:15:00','2016-12-24 12:30:00.000','Endowment',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000156,1000000017,1000000156,6,NULL,'00:15:00','2016-12-22 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000157,1000000017,1000000157,6,NULL,'00:15:00','2016-12-23 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000158,1000000017,1000000158,6,NULL,'00:15:00','2016-12-22 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000159,1000000017,1000000159,7,NULL,'00:15:00','2016-12-24 14:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000160,1000000017,1000000160,7,NULL,'00:15:00','2016-12-22 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000161,1000000017,1000000161,7,NULL,'00:15:00','2016-12-23 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000162,1000000017,1000000162,7,NULL,'00:15:00','2016-12-24 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000163,1000000017,1000000163,8,NULL,'00:15:00','2016-12-23 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000164,1000000017,1000000164,8,NULL,'00:15:00','2016-12-24 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000165,1000000017,1000000165,8,NULL,'00:15:00','2016-12-23 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000166,1000000017,1000000166,9,NULL,'00:15:00','2016-12-24 14:00:00.000','Tutorial',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000167,1000000017,1000000167,4,NULL,'00:15:00','2016-12-23 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000168,1000000017,1000000168,4,NULL,'00:15:00','2016-12-23 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000169,1000000017,1000000169,4,NULL,'00:15:00','2016-12-23 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000170,1000000017,1000000170,4,NULL,'00:15:00','2016-12-22 17:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000171,1000000018,1000000171,6,NULL,'00:15:00','2016-12-24 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000172,1000000018,1000000172,6,NULL,'00:15:00','2016-12-24 17:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000173,1000000018,1000000173,6,NULL,'00:15:00','2016-12-22 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000174,1000000018,1000000174,6,NULL,'00:15:00','2016-12-25 08:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000175,1000000018,1000000175,7,NULL,'00:15:00','2016-12-23 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000176,1000000018,1000000176,7,NULL,'00:15:00','2016-12-22 11:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000177,1000000018,1000000177,7,NULL,'00:15:00','2016-12-22 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000178,1000000018,1000000178,7,NULL,'00:15:00','2016-12-23 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000179,1000000018,1000000179,8,NULL,'00:15:00','2016-12-25 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000180,1000000018,1000000180,8,NULL,'00:15:00','2016-12-22 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000181,1000000018,1000000181,8,NULL,'00:15:00','2016-12-24 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000182,1000000018,1000000182,8,NULL,'00:15:00','2016-12-23 14:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000183,1000000018,1000000183,9,NULL,'00:15:00','2016-12-23 18:00:00.000','Tutorial',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000184,1000000018,1000000184,4,NULL,'00:15:00','2016-12-23 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000185,1000000018,1000000185,4,NULL,'00:15:00','2016-12-23 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000187,1000000018,1000000187,4,NULL,'00:15:00','2016-12-24 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000188,1000000019,1000000188,6,NULL,'00:15:00','2016-12-24 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000190,1000000019,1000000190,6,NULL,'00:15:00','2016-12-22 17:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000191,1000000019,1000000191,6,NULL,'00:15:00','2016-12-22 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000192,1000000019,1000000192,7,NULL,'00:15:00','2016-12-24 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000193,1000000019,1000000193,7,NULL,'00:15:00','2016-12-23 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000194,1000000019,1000000194,7,NULL,'00:15:00','2016-12-22 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000195,1000000019,1000000195,7,NULL,'00:15:00','2016-12-23 14:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000196,1000000019,1000000196,8,NULL,'00:15:00','2016-12-24 18:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000197,1000000019,1000000197,8,NULL,'00:15:00','2016-12-22 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000198,1000000019,1000000198,8,NULL,'00:15:00','2016-12-24 11:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000199,1000000019,1000000199,8,NULL,'00:15:00','2016-12-24 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000200,1000000019,1000000200,4,NULL,'00:15:00','2016-12-22 14:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000186,1000000018,1000000186,4,NULL,'00:15:00',NULL,'Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000189,1000000019,1000000189,6,NULL,'00:15:00',NULL,'Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000004,1000000000,1000000004,2,NULL,'00:15:00','2016-12-24 11:30:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000005,1000000002,1000000005,6,NULL,'00:15:00','2016-12-22 08:30:00.000','Tutorial',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000006,1000000002,1000000006,4,NULL,'00:15:00','2016-12-23 16:30:00.000','Tutorial',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000007,1000000004,1000000007,5,NULL,'00:15:00','2016-12-24 15:00:00.000','Conference',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000008,1000000005,1000000008,5,NULL,'00:15:00','2016-12-22 08:30:00.000','Keynote',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000009,1000000006,1000000009,6,NULL,'00:15:00','2016-12-22 17:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000010,1000000006,1000000010,6,NULL,'00:15:00','2016-12-22 08:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000011,1000000006,1000000011,6,NULL,'00:15:00','2016-12-23 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000012,1000000006,1000000012,6,NULL,'00:15:00','2016-12-23 15:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000013,1000000006,1000000013,7,NULL,'00:15:00','2016-12-24 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000014,1000000006,1000000014,7,NULL,'00:15:00','2016-12-24 18:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000015,1000000006,1000000015,7,NULL,'00:15:00','2016-12-23 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000016,1000000006,1000000016,7,NULL,'00:15:00','2016-12-23 10:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000017,1000000006,1000000017,8,NULL,'00:15:00','2016-12-23 14:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000018,1000000006,1000000018,8,NULL,'00:15:00','2016-12-22 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000019,1000000006,1000000019,8,NULL,'00:15:00','2016-12-22 17:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000020,1000000006,1000000020,8,NULL,'00:15:00','2016-12-24 12:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000000,1000000000,1000000000,6,NULL,'00:15:00','2016-12-23 17:00:00.000','Tutorial',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000147,1000000013,1000000147,9,NULL,'00:15:00',NULL,'Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000021,1000000006,1000000021,9,NULL,'00:15:00','2016-12-24 08:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000022,1000000006,1000000022,9,NULL,'00:15:00','2016-12-22 09:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000023,1000000006,1000000023,9,NULL,'00:15:00','2016-12-22 17:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000024,1000000006,1000000024,9,NULL,'00:15:00','2016-12-23 15:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000025,1000000006,1000000025,4,NULL,'00:15:00','2016-12-23 16:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000026,1000000006,1000000026,4,NULL,'00:15:00','2016-12-23 11:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000027,1000000006,1000000027,4,NULL,'00:15:00','2016-12-22 14:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000028,1000000006,1000000028,4,NULL,'00:15:00','2016-12-23 12:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000029,1000000006,1000000029,4,NULL,'00:15:00','2016-12-23 17:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000030,1000000006,1000000030,4,NULL,'00:15:00','2016-12-22 18:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000031,1000000006,1000000031,4,NULL,'00:15:00','2016-12-22 09:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000032,1000000006,1000000032,4,NULL,'00:15:00','2016-12-22 14:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000033,1000000006,1000000033,4,NULL,'00:15:00','2016-12-22 18:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000034,1000000006,1000000034,4,NULL,'00:15:00','2016-12-24 14:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000035,1000000006,1000000035,4,NULL,'00:15:00','2016-12-24 15:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000036,1000000006,1000000036,4,NULL,'00:15:00','2016-12-23 17:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000037,1000000006,1000000037,4,NULL,'00:15:00','2016-12-24 11:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000051,1000000007,1000000051,9,NULL,'00:15:00','2016-12-23 14:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000052,1000000007,1000000052,9,NULL,'00:15:00','2016-12-24 12:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000053,1000000007,1000000053,9,NULL,'00:15:00','2016-12-24 16:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000054,1000000007,1000000054,9,NULL,'00:15:00','2016-12-24 09:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000055,1000000007,1000000055,4,NULL,'00:15:00','2016-12-25 08:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000056,1000000007,1000000056,4,NULL,'00:15:00','2016-12-24 14:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000057,1000000007,1000000057,4,NULL,'00:15:00','2016-12-22 18:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000058,1000000007,1000000058,4,NULL,'00:15:00','2016-12-22 16:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000059,1000000007,1000000059,4,NULL,'00:15:00','2016-12-24 11:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000060,1000000007,1000000060,4,NULL,'00:15:00','2016-12-24 12:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000061,1000000007,1000000061,4,NULL,'00:15:00','2016-12-22 11:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000062,1000000007,1000000062,4,NULL,'00:15:00','2016-12-23 12:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000063,1000000007,1000000063,4,NULL,'00:15:00','2016-12-24 08:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000064,1000000007,1000000064,4,NULL,'00:15:00','2016-12-23 18:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000065,1000000007,1000000065,4,NULL,'00:15:00','2016-12-22 11:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000066,1000000007,1000000066,4,NULL,'00:15:00','2016-12-22 17:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000067,1000000007,1000000067,4,NULL,'00:15:00','2016-12-22 11:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000080,1000000008,1000000080,9,NULL,'00:15:00','2016-12-24 17:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000081,1000000008,1000000081,9,NULL,'00:15:00','2016-12-23 11:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000082,1000000008,1000000082,9,NULL,'00:15:00','2016-12-22 12:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000083,1000000008,1000000083,9,NULL,'00:15:00','2016-12-22 08:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000084,1000000008,1000000084,4,NULL,'00:15:00','2016-12-23 14:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000085,1000000008,1000000085,4,NULL,'00:15:00','2016-12-25 09:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000086,1000000008,1000000086,4,NULL,'00:15:00','2016-12-24 17:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000087,1000000008,1000000087,4,NULL,'00:15:00','2016-12-24 18:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000088,1000000008,1000000088,4,NULL,'00:15:00','2016-12-22 08:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000089,1000000008,1000000089,4,NULL,'00:15:00','2016-12-23 11:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000090,1000000008,1000000090,4,NULL,'00:15:00','2016-12-22 09:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000091,1000000008,1000000091,4,NULL,'00:15:00','2016-12-23 08:30:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000092,1000000008,1000000092,4,NULL,'00:15:00','2016-12-22 08:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000093,1000000008,1000000093,4,NULL,'00:15:00','2016-12-24 17:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000094,1000000008,1000000094,4,NULL,'00:15:00','2016-12-24 09:00:00.000','Demo',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000109,1000000011,1000000109,9,NULL,'00:15:00','2016-12-24 10:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000110,1000000011,1000000110,9,NULL,'00:15:00','2016-12-22 10:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000111,1000000011,1000000111,9,NULL,'00:15:00','2016-12-23 12:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000112,1000000011,1000000112,9,NULL,'00:15:00','2016-12-23 08:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000118,1000000012,1000000118,7,NULL,'00:15:00','2016-12-24 10:30:00.000',NULL,false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000145,1000000013,1000000145,9,NULL,'00:15:00','2016-12-24 14:00:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000146,1000000013,1000000146,9,NULL,'00:15:00','2016-12-24 17:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000148,1000000013,1000000148,9,NULL,'00:15:00','2016-12-22 10:30:00.000','Industry',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000201,1000000019,1000000201,4,NULL,'00:15:00','2016-12-23 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000202,1000000019,1000000202,4,NULL,'00:15:00','2016-12-24 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000203,1000000019,1000000203,4,NULL,'00:15:00','2016-12-23 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000204,1000000021,1000000204,6,NULL,'00:15:00','2016-12-23 18:00:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000205,1000000021,1000000205,7,NULL,'00:15:00','2016-12-23 09:30:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000206,1000000021,1000000206,8,NULL,'00:15:00','2016-12-22 12:00:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000207,1000000021,1000000207,9,NULL,'00:15:00','2016-12-23 11:30:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000208,1000000021,1000000208,4,NULL,'00:15:00','2016-12-23 16:30:00.000','Workshop',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000122,1000000012,1000000122,8,NULL,'00:15:00','2016-12-23 09:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000123,1000000012,1000000123,7,NULL,'00:15:00','2016-12-22 09:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000127,1000000012,1000000127,4,NULL,'00:15:00','2016-12-24 11:00:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000128,1000000012,1000000128,4,NULL,'00:15:00','2016-12-24 12:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000129,1000000012,1000000129,4,NULL,'00:15:00','2016-12-22 15:30:00.000','Research',false,NULL,424242);
INSERT INTO public.event (id,sessionid,paperid,roomname,alias,duration,starttime,kind,isexclusive,maxsize,conferenceid) VALUES (
1000000130,1000000012,1000000130,4,NULL,'00:15:00','2016-12-22 16:30:00.000','Research',false,NULL,424242);

-- Data for Name: speaker; Type: TABLE DATA; Schema: public; Owner: eliti

﻿INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000000,'a92eb70e-3e0e-497a-ab08-38aec34e51ea',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000001,'a92eb70e-3e0e-497a-ab08-38aec34e51f3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000002,'a92eb70e-3e0e-497a-ab08-38aec34e5213',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000003,'a92eb70e-3e0e-497a-ab08-38aec34e5219',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000004,'a92eb70e-3e0e-497a-ab08-38aec34e5222',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000005,'a92eb70e-3e0e-497a-ab08-38aec34e5232',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000006,'a92eb70e-3e0e-497a-ab08-38aec34e5237',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000007,'a92eb70e-3e0e-497a-ab08-38aec34e523e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000008,'a92eb70e-3e0e-497a-ab08-38aec34e524c',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000009,'a92eb70e-3e0e-497a-ab08-38aec34e5253',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000010,'a92eb70e-3e0e-497a-ab08-38aec34e5258',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000011,'a92eb70e-3e0e-497a-ab08-38aec34e5234',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000012,'a92eb70e-3e0e-497a-ab08-38aec34e529d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000013,'a92eb70e-3e0e-497a-ab08-38aec34e52bf',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000014,'a92eb70e-3e0e-497a-ab08-38aec34e52c9',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000015,'a92eb70e-3e0e-497a-ab08-38aec34e52d3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000016,'a92eb70e-3e0e-497a-ab08-38aec34e52d9',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000017,'a92eb70e-3e0e-497a-ab08-38aec34e52e9',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000018,'a92eb70e-3e0e-497a-ab08-38aec34e52fc',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000019,'a92eb70e-3e0e-497a-ab08-38aec34e5371',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000020,'a92eb70e-3e0e-497a-ab08-38aec34e537b',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000021,'a92eb70e-3e0e-497a-ab08-38aec34e5387',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000022,'a92eb70e-3e0e-497a-ab08-38aec34e538a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000023,'a92eb70e-3e0e-497a-ab08-38aec34e5395',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000024,'a92eb70e-3e0e-497a-ab08-38aec34e539e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000025,'a92eb70e-3e0e-497a-ab08-38aec34e53b3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000026,'a92eb70e-3e0e-497a-ab08-38aec34e53c2',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000027,'a92eb70e-3e0e-497a-ab08-38aec34e53ca',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000028,'a92eb70e-3e0e-497a-ab08-38aec34e5467',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000029,'a92eb70e-3e0e-497a-ab08-38aec34e5481',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000030,'a92eb70e-3e0e-497a-ab08-38aec34e5487',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000031,'a92eb70e-3e0e-497a-ab08-38aec34e5493',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000032,'a92eb70e-3e0e-497a-ab08-38aec34e54a5',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000033,'a92eb70e-3e0e-497a-ab08-38aec34e54b2',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000034,'a92eb70e-3e0e-497a-ab08-38aec34e5571',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000035,'a92eb70e-3e0e-497a-ab08-38aec34e5576',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000036,'a92eb70e-3e0e-497a-ab08-38aec34e5596',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000037,'a92eb70e-3e0e-497a-ab08-38aec34e559f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000039,'a92eb70e-3e0e-497a-ab08-38aec34e55aa',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000040,'a92eb70e-3e0e-497a-ab08-38aec34e5682',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000041,'a92eb70e-3e0e-497a-ab08-38aec34e5688',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000042,'a92eb70e-3e0e-497a-ab08-38aec34e5692',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000043,'a92eb70e-3e0e-497a-ab08-38aec34e52e4',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000044,'a92eb70e-3e0e-497a-ab08-38aec34e578e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000045,'a92eb70e-3e0e-497a-ab08-38aec34e587e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000046,'a92eb70e-3e0e-497a-ab08-38aec34e588c',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000047,'a92eb70e-3e0e-497a-ab08-38aec34e5a79',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000048,'a92eb70e-3e0e-497a-ab08-38aec34e5a86',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000049,'a92eb70e-3e0e-497a-ab08-38aec34e5a8a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000050,'a92eb70e-3e0e-497a-ab08-38aec34e5a98',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000051,'a92eb70e-3e0e-497a-ab08-38aec34e5aa3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000052,'a92eb70e-3e0e-497a-ab08-38aec34e5aa6',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000053,'a92eb70e-3e0e-497a-ab08-38aec34e52fc',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000054,'a92eb70e-3e0e-497a-ab08-38aec34e5eea',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000055,'a92eb70e-3e0e-497a-ab08-38aec34e5efa',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000056,'a92eb70e-3e0e-497a-ab08-38aec34e5f12',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000057,'a92eb70e-3e0e-497a-ab08-38aec34e5f1a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000058,'a92eb70e-3e0e-497a-ab08-38aec34e5f1a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000059,'a92eb70e-3e0e-497a-ab08-38aec34e51ec',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000060,'a92eb70e-3e0e-497a-ab08-38aec34e64b3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000061,'a92eb70e-3e0e-497a-ab08-38aec34e64bc',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000062,'a92eb70e-3e0e-497a-ab08-38aec34e64c6',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000063,'a92eb70e-3e0e-497a-ab08-38aec34e64d1',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000064,'a92eb70e-3e0e-497a-ab08-38aec34e64d7',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000065,'a92eb70e-3e0e-497a-ab08-38aec34e64e5',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000066,'a92eb70e-3e0e-497a-ab08-38aec34e68aa',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000067,'a92eb70e-3e0e-497a-ab08-38aec34e69ed',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000069,'a92eb70e-3e0e-497a-ab08-38aec34e6b54',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000070,'a92eb70e-3e0e-497a-ab08-38aec34e6b5f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000071,'a92eb70e-3e0e-497a-ab08-38aec34e6e15',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000072,'a92eb70e-3e0e-497a-ab08-38aec34e6e1f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000073,'a92eb70e-3e0e-497a-ab08-38aec34e6e25',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000074,'a92eb70e-3e0e-497a-ab08-38aec34e6e2b',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000075,'a92eb70e-3e0e-497a-ab08-38aec34e6f89',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000076,'a92eb70e-3e0e-497a-ab08-38aec34e71fb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000077,'a92eb70e-3e0e-497a-ab08-38aec34e7376',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000078,'a92eb70e-3e0e-497a-ab08-38aec34e7384',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000079,'a92eb70e-3e0e-497a-ab08-38aec34e71fb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000080,'a92eb70e-3e0e-497a-ab08-38aec34e795e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000081,'a92eb70e-3e0e-497a-ab08-38aec34e7964',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000082,'a92eb70e-3e0e-497a-ab08-38aec34e796d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000083,'a92eb70e-3e0e-497a-ab08-38aec34e797f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000084,'a92eb70e-3e0e-497a-ab08-38aec34e7998',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000085,'a92eb70e-3e0e-497a-ab08-38aec34e79a1',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000086,'a92eb70e-3e0e-497a-ab08-38aec34e79b2',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000087,'a92eb70e-3e0e-497a-ab08-38aec34e79b8',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000088,'a92eb70e-3e0e-497a-ab08-38aec34e79c2',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000089,'a92eb70e-3e0e-497a-ab08-38aec34e7b71',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000090,'a92eb70e-3e0e-497a-ab08-38aec34e7d26',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000091,'a92eb70e-3e0e-497a-ab08-38aec34e7d31',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000092,'a92eb70e-3e0e-497a-ab08-38aec34e7d38',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000093,'a92eb70e-3e0e-497a-ab08-38aec34e7d3f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000094,'a92eb70e-3e0e-497a-ab08-38aec34e7d45',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000096,'a92eb70e-3e0e-497a-ab08-38aec34e7d52',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000097,'a92eb70e-3e0e-497a-ab08-38aec34e7d55',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000098,'a92eb70e-3e0e-497a-ab08-38aec34e7d5c',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000099,'a92eb70e-3e0e-497a-ab08-38aec34e7d66',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000100,'a92eb70e-3e0e-497a-ab08-38aec34e7d74',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000101,'a92eb70e-3e0e-497a-ab08-38aec34e8218',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000102,'a92eb70e-3e0e-497a-ab08-38aec34e8227',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000103,'a92eb70e-3e0e-497a-ab08-38aec34e83f7',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000104,'a92eb70e-3e0e-497a-ab08-38aec34e85de',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000105,'a92eb70e-3e0e-497a-ab08-38aec34e87cf',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000106,'a92eb70e-3e0e-497a-ab08-38aec34e8ba3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000107,'a92eb70e-3e0e-497a-ab08-38aec34e8d96',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000108,'a92eb70e-3e0e-497a-ab08-38aec34e8f85',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000109,'a92eb70e-3e0e-497a-ab08-38aec34e8f8f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000110,'a92eb70e-3e0e-497a-ab08-38aec34e8f9b',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000111,'a92eb70e-3e0e-497a-ab08-38aec34e94af',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000112,'a92eb70e-3e0e-497a-ab08-38aec34e94bb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000114,'a92eb70e-3e0e-497a-ab08-38aec34e96d2',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000115,'a92eb70e-3e0e-497a-ab08-38aec34e98e7',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000116,'a92eb70e-3e0e-497a-ab08-38aec34e98f3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000117,'a92eb70e-3e0e-497a-ab08-38aec34e98f9',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000118,'a92eb70e-3e0e-497a-ab08-38aec34e9b2d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000119,'a92eb70e-3e0e-497a-ab08-38aec34e9f71',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000120,'a92eb70e-3e0e-497a-ab08-38aec34e9f7f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000121,'a92eb70e-3e0e-497a-ab08-38aec34e9f88',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000122,'a92eb70e-3e0e-497a-ab08-38aec34e9f92',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000123,'a92eb70e-3e0e-497a-ab08-38aec34e9f9a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000124,'a92eb70e-3e0e-497a-ab08-38aec34e588c',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000125,'a92eb70e-3e0e-497a-ab08-38aec34eb14b',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000126,'a92eb70e-3e0e-497a-ab08-38aec34ea752',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000128,'a92eb70e-3e0e-497a-ab08-38aec34eb5db',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000129,'a92eb70e-3e0e-497a-ab08-38aec34eb834',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000130,'a92eb70e-3e0e-497a-ab08-38aec34eb83c',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000131,'a92eb70e-3e0e-497a-ab08-38aec34eba91',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000132,'a92eb70e-3e0e-497a-ab08-38aec34ebceb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000133,'a92eb70e-3e0e-497a-ab08-38aec34ebcf1',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000134,'a92eb70e-3e0e-497a-ab08-38aec34ebf59',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000135,'a92eb70e-3e0e-497a-ab08-38aec34ebf5e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000136,'a92eb70e-3e0e-497a-ab08-38aec34ebf68',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000137,'a92eb70e-3e0e-497a-ab08-38aec34e7d34',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000138,'a92eb70e-3e0e-497a-ab08-38aec34ec53f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000139,'a92eb70e-3e0e-497a-ab08-38aec34eca2b',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000140,'a92eb70e-3e0e-497a-ab08-38aec34eca32',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000141,'a92eb70e-3e0e-497a-ab08-38aec34ecf25',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000142,'a92eb70e-3e0e-497a-ab08-38aec34ecf2e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000143,'a92eb70e-3e0e-497a-ab08-38aec34ecf3d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000144,'a92eb70e-3e0e-497a-ab08-38aec34ecf44',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000145,'a92eb70e-3e0e-497a-ab08-38aec34ecf55',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000146,'a92eb70e-3e0e-497a-ab08-38aec34ed318',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000147,'a92eb70e-3e0e-497a-ab08-38aec34ed5b7',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000148,'a92eb70e-3e0e-497a-ab08-38aec34ed86e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000150,'a92eb70e-3e0e-497a-ab08-38aec34ed877',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000151,'a92eb70e-3e0e-497a-ab08-38aec34ee17d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000152,'a92eb70e-3e0e-497a-ab08-38aec34ee187',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000153,'a92eb70e-3e0e-497a-ab08-38aec34ee18a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000154,'a92eb70e-3e0e-497a-ab08-38aec34ee18d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000155,'a92eb70e-3e0e-497a-ab08-38aec34ee191',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000156,'a92eb70e-3e0e-497a-ab08-38aec34ee44e',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000157,'a92eb70e-3e0e-497a-ab08-38aec34ee6fb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000158,'a92eb70e-3e0e-497a-ab08-38aec34ee6fb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000159,'a92eb70e-3e0e-497a-ab08-38aec34eef32',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000160,'a92eb70e-3e0e-497a-ab08-38aec34eef39',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000161,'a92eb70e-3e0e-497a-ab08-38aec34ef5b4',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000162,'a92eb70e-3e0e-497a-ab08-38aec34ef5be',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000163,'a92eb70e-3e0e-497a-ab08-38aec34ef5c6',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000164,'a92eb70e-3e0e-497a-ab08-38aec34ec546',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000165,'a92eb70e-3e0e-497a-ab08-38aec34efb66',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000166,'a92eb70e-3e0e-497a-ab08-38aec34e69fc',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000167,'a92eb70e-3e0e-497a-ab08-38aec34f1223',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000168,'a92eb70e-3e0e-497a-ab08-38aec34f14ef',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000169,'a92eb70e-3e0e-497a-ab08-38aec34f17cd',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000170,'a92eb70e-3e0e-497a-ab08-38aec34f17d5',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000171,'a92eb70e-3e0e-497a-ab08-38aec34f17e1',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000172,'a92eb70e-3e0e-497a-ab08-38aec34f17e8',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000173,'a92eb70e-3e0e-497a-ab08-38aec34ea752',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000174,'a92eb70e-3e0e-497a-ab08-38aec34f21a3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000175,'a92eb70e-3e0e-497a-ab08-38aec34f2491',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000176,'a92eb70e-3e0e-497a-ab08-38aec34f2a68',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000177,'a92eb70e-3e0e-497a-ab08-38aec34f342d',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000178,'a92eb70e-3e0e-497a-ab08-38aec34f39fc',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000179,'a92eb70e-3e0e-497a-ab08-38aec34e7b75',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000180,'a92eb70e-3e0e-497a-ab08-38aec34f43d4',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000181,'a92eb70e-3e0e-497a-ab08-38aec34f43dc',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000182,'a92eb70e-3e0e-497a-ab08-38aec34f46d8',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000183,'a92eb70e-3e0e-497a-ab08-38aec34ea74f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000184,'a92eb70e-3e0e-497a-ab08-38aec34f4cce',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000185,'a92eb70e-3e0e-497a-ab08-38aec34f4cd8',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000186,'a92eb70e-3e0e-497a-ab08-38aec34f53e3',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000187,'a92eb70e-3e0e-497a-ab08-38aec34f53e5',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000188,'a92eb70e-3e0e-497a-ab08-38aec34f56ee',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000189,'a92eb70e-3e0e-497a-ab08-38aec34f56f7',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000190,'a92eb70e-3e0e-497a-ab08-38aec34f5a1a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000191,'a92eb70e-3e0e-497a-ab08-38aec34f5a32',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000192,'a92eb70e-3e0e-497a-ab08-38aec34e5576',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000193,'a92eb70e-3e0e-497a-ab08-38aec34ea74f',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000194,'a92eb70e-3e0e-497a-ab08-38aec34e9f9a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000195,'a92eb70e-3e0e-497a-ab08-38aec34f17d5',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000196,'a92eb70e-3e0e-497a-ab08-38aec34fa399',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000197,'a92eb70e-3e0e-497a-ab08-38aec34fa3a2',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000198,'a92eb70e-3e0e-497a-ab08-38aec34fa6cb',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000199,'a92eb70e-3e0e-497a-ab08-38aec34fa6d8',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000200,'a92eb70e-3e0e-497a-ab08-38aec34faa22',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000201,'a92eb70e-3e0e-497a-ab08-38aec34faa27',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000202,'a92eb70e-3e0e-497a-ab08-38aec34fb191',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000203,'a92eb70e-3e0e-497a-ab08-38aec34fb816',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000205,'a92eb70e-3e0e-497a-ab08-38aec34fc2c8',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000206,'a92eb70e-3e0e-497a-ab08-38aec34fc953',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000207,'a92eb70e-3e0e-497a-ab08-38aec34fc95a',1);
INSERT INTO public.speaker (eventid,personid,"number") VALUES (
1000000208,'a92eb70e-3e0e-497a-ab08-38aec34fcc9d',1);

--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eliti
--

SELECT pg_catalog.setval('event_id_seq', 1, false);


--
-- Name: paper_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eliti
--

SELECT pg_catalog.setval('paper_id_seq', 1, false);


--
-- Data for Name: personalschedule; Type: TABLE DATA; Schema: public; Owner: eliti
--



--
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eliti
--

SELECT pg_catalog.setval('session_id_seq', 1, false);


--
-- Data for Name: speaker; Type: TABLE DATA; Schema: public; Owner: eliti
--



--
-- Data for Name: timeslot; Type: TABLE DATA; Schema: public; Owner: eliti
--




--
-- Name: track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eliti
--

SELECT pg_catalog.setval('track_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

