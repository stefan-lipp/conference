import { ApiMapperService } from './api-mapper.service';

describe('ApiMapperService', () => {
  const apiMapper = new ApiMapperService();

  describe('mapping of registration data', () => {
    describe('local to api', () => {
      it('should map values correctly', () => {
        const INPUT = {
          email: 'test@example.org',
          password: 'abc123',
          passwordConfirmation: '123abc',
        };

        const EXPECTATION = {
          email: 'test@example.org',
          password: 'abc123',
          password_confirmation: '123abc',
        };

        expect(apiMapper.registerDataLocalToApi(INPUT)).toEqual(EXPECTATION);
      });
    });
  });
});
