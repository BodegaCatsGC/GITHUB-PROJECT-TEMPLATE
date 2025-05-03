function hello(name = "World") {
  return `Hello, ${name}!`;
}

module.exports = { hello };

if (require.main === module) {
  console.log(hello());
}
