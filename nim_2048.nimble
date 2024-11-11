# Package

version       = "0.1.0"
author        = "enkaito"
description   = "2048 game clone runs in your terminal, written in Nim"
license       = "MIT"
srcDir        = "src"
binDir        = "out"
bin           = @["nim_2048"]


# Dependencies

requires "nim >= 2.2.0"
requires "cligen >= 1.7.8"
