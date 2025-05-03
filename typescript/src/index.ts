export function hello(name: string = "World"): string {
  return `Hello, ${name}!`;
}

if (require.main === module) {
  // For direct execution with ts-node
  // eslint-disable-next-line no-console
  console.log(hello());
}
