const API_BASE_URL: string = '/api';

export const API_ROUTES = {
  register: `${API_BASE_URL}/auth/register`,
  login: `${API_BASE_URL}/auth/login`,
  events: {
    all: `${API_BASE_URL}/events`,
    single: `${API_BASE_URL}/events/:eventId`,
    favorite: `${API_BASE_URL}/events/:eventid/favorite`,
    favorites: `${API_BASE_URL}/events/favorites`,
  },
};
