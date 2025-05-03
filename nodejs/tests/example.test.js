// Example passing test for Node.js
const { hello } = require('../src/index');

describe('hello', () => {
  it('returns a greeting for a name', () => {
    expect(hello('Alice')).toBe('Hello, Alice!');
  });
});
