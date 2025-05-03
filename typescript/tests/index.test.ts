import { hello } from '../src/index';

describe('hello', () => {
  it('returns default greeting', () => {
    expect(hello()).toBe('Hello, World!');
  });

  it('returns personalized greeting', () => {
    expect(hello('Alice')).toBe('Hello, Alice!');
  });
});
