#!/usr/bin/env node

import { doProtect } from "@hammertime/mod-cli-spike-protect";
import { doWoof } from "@hammertime/mod-cli-spike-woof";
import { doTopLevelCommandThing } from "@hammertime/mod-cli-spike-some-top-level-command";

function main() {
  console.log("hello from the root module");
  doProtect();
  doWoof();
  doTopLevelCommandThing();
}

if (require.main === module) {
  main();
}
