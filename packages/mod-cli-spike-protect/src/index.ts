export function doProtect() {
  console.log("doing stuff in protect");
}

function main() {
  doProtect();
}

if (require.main === module) {
  main();
}
