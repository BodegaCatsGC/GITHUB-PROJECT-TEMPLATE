// Example passing test for TypeScript
import { hello } from '../src/index';

describe('hello', () => {
  it('returns a greeting for a name', () => {
    expect(hello('Alice')).toBe('Hello, Alice!');
  });
});
