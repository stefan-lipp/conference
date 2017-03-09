const API_BASE_URL: string = '/api';

export const API_ROUTES = {
  register: `${API_BASE_URL}/auth/register`,
  login: `${API_BASE_URL}/auth/login`,
  events: {
    all: `${API_BASE_URL}/events`,
    ofSpeaker: `${API_BASE_URL}/speaker/:personId/events`,
    single: `${API_BASE_URL}/events/:eventId`,
    favorite: `${API_BASE_URL}/events/favorites/:eventid`,
    favorites: `${API_BASE_URL}/events/favorites`,
    comments: `${API_BASE_URL}/comments/events/:eventId`,
    upload:  `${API_BASE_URL}/events/:eventId/slides`,
  },
  sessions: {
    all: `${API_BASE_URL}/sessions`,
    create: `${API_BASE_URL}/sessions`,
    update: `${API_BASE_URL}/sessions/:sessionId`,
    delete: `${API_BASE_URL}/sessions/:sessionId`,
    single: `${API_BASE_URL}/sessions/:sessionId`,
  },
  person: {
    byId: `${API_BASE_URL}/persons/:personId`,
    loggedIn: `${API_BASE_URL}/persons`,
  },
  paper: {
    byAuthor: `${API_BASE_URL}/author/:personId/papers`,
  },
  tracks: {
    all: `${API_BASE_URL}/tracks`,
    create: `${API_BASE_URL}/tracks`,
    update: `${API_BASE_URL}/tracks/:trackId`,
    delete: `${API_BASE_URL}/tracks/:trackId`,
  },
  room: `${API_BASE_URL}/rooms/:roomId`,
};
