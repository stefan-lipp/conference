const API_BASE_URL: string = '/api';

export const API_ROUTES = {
  auth: {
    register: `${API_BASE_URL}/auth/register`,
    login: `${API_BASE_URL}/auth/login`,
  },
  papers: {
    create: `${API_BASE_URL}/papers`,
  },
  events: {
    all: `${API_BASE_URL}/events`,
    single: `${API_BASE_URL}/events/:eventId`,
    favorite: `${API_BASE_URL}/events/favorites/:eventid`,
    favorites: `${API_BASE_URL}/events/favorites`,
  },
};
