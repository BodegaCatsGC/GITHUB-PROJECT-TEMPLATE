const { hello } = require('../src/index');

test('hello() returns default greeting', () => {
  expect(hello()).toBe('Hello, World!');
});

test('hello(name) returns personalized greeting', () => {
  expect(hello('Alice')).toBe('Hello, Alice!');
});
