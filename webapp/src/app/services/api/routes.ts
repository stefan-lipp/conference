const API_BASE_URL: string = '/api';

export const API_ROUTES = {
  auth: {
    register: `${API_BASE_URL}/auth/register`,
    login: `${API_BASE_URL}/auth/login`,
  },
  papers: {
    create: `${API_BASE_URL}/papers`,
  },
};
