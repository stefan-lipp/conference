import { FormControl } from '@angular/forms';
import { FormValidators } from './form-validators';

describe('FormValidators', () => {
  describe('validateEmail', () => {
    it('should reject empty email addresses', () => {
      const fc = new FormControl('');
      expect(FormValidators.validateEmail(fc)).not.toBeNull();
    });

    it('should accept valid email addresses', () => {
      const fc = new FormControl('test@example.org');
      expect(FormValidators.validateEmail(fc)).toBeNull();
    });

    it('should reject invalid email addresses', () => {
      const fc = new FormControl('notanemailaddress');
      expect(FormValidators.validateEmail(fc)).not.toBeNull();
    });
  });

  describe('validateEquality', () => {
    describe('with string argument', () => {
      it('should reject non equal input', () => {
        const INPUT = 'foo';
        const fc = new FormControl('bar');
        expect(FormValidators.validateEquality(INPUT)(fc)).not.toBeNull();
      });

      it('should accept equal input', () => {
        const INPUT = 'foo';
        const fc = new FormControl(INPUT);
        expect(FormValidators.validateEquality(INPUT)(fc)).toBeNull();
      });
    });

    describe('with function argument', () => {
      it('should reject non equal input', () => {
        const INPUT_FN = () => 'foo';
        const fc = new FormControl('bar');
        expect(FormValidators.validateEquality(INPUT_FN)(fc)).not.toBeNull();
      });

      it('should accept equal input', () => {
        const INPUT_FN = () => 'foo';
        const fc = new FormControl(INPUT_FN());
        expect(FormValidators.validateEquality(INPUT_FN)(fc)).toBeNull();
      });
    });

    describe('with any other type of argument', () => {
      it('should return undefined', () => {
        const fc = new FormControl('foo');
        expect(() => FormValidators.validateEquality(<any> 5)(fc)).toThrow();
        expect(() => FormValidators.validateEquality(<any> [ ])(fc)).toThrow();
        expect(() => FormValidators.validateEquality(<any> { })(fc)).toThrow();
      });
    });
  });
});
