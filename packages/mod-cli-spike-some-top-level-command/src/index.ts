
import { doProtect } from "@hammertime/mod-cli-spike-protect";

export function doTopLevelCommandThing() {
  console.log("hello from some-top-level-command");
  doProtect();
}

function main() {
  doTopLevelCommandThing();
}

if (require.main === module) {
  main();
}
