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
  },
  sessions: {
    all: `${API_BASE_URL}/sessions`,
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
};
