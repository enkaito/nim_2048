# Package

version       = "0.1.0"
author        = "enkaito"
description   = "2048 game cli clone in Nim"
license       = "MIT"
srcDir        = "src"
binDir        = "out"
bin           = @["nim_2048"]


# Dependencies

requires "nim >= 2.2.0"
requires "cligen"
