import terminal, strutils, sequtils, random, strformat

type Operation = enum
  opLeft = 0
  opUp = 1
  opRight = 2
  opDown = 3
  opQuit
  opRestart

proc getKey(): Operation =
  case getch()
    of 'q': opQuit
    of 'r': opRestart
    of '\e':
      if getch() == '[':
        case getch()
          of 'A': opUp
          of 'B': opDown
          of 'C': opRight
          of 'D': opLeft
          else: getKey()
      else: getKey()
    else: getKey()

type Board = ref object
  len: Natural
  score: Natural
  rows: seq[seq[Natural]]
  top_border: string
  mid_border: string
  btm_border: string

func newBoard(len: Natural): Board =
  Board(
    len: len,
    rows: newSeqWith(len, newSeq[Natural](len)),
    top_border: "┌" & newSeqWith(len, "────").join("┬") & "┐\n",
    mid_border: "├" & newSeqWith(len, "────").join("┼") & "┤\n",
    btm_border: "└" & newSeqWith(len, "────").join("┴") & "┘",
  )

func `$`(b: Board): string =
  result.add b.top_border
  result.add b.rows.mapIt(
    "│" & it.mapIt(center(if it > 0: $it else: "", 4)).join("│") & "│\n"
  ).join(b.mid_border)
  result.add b.btm_border

proc display(b: Board, erase = true) =
  if erase:
    for i in 0..b.len*2+1:
      eraseLine()
      cursorUp()
  echo &"score: {b.score}"
  echo b

func is_win(b: Board, target: Natural): bool {.inline.} =
  b.rows.mapIt(it.max()).max() >= target

func is_filled(b: Board): bool {.inline.} =
  b.rows.mapIt(it.filterIt(it > 0).len()).foldl(a + b) >= b.len * b.len

proc spawnRandom(b: Board) =
  # if b.is_filled():
  #   raise newException(Defect, "Tried to spawn a number, but the board is already filled")
  while true:
    let
      x = rand(0..<b.len.int)
      y = rand(0..<b.len.int)
    if b.rows[y][x] == 0:
      b.rows[y][x] = if rand(1.0) < 0.9: 2 else: 4
      break

proc rotate(b: Board, count: int) =
  for i in 0..<count:
    let old_board = b.rows
    for y in 0..<b.len:
      for x in 0..<b.len:
        b.rows[b.len-1-x][y] = old_board[y][x]

proc left_shift(b: Board) =
  let old_board = b.rows
  for y, row in old_board:
    var
      x = 0
      prev = 0
    for cell in row:
      if cell > 0:
        if prev == cell:
          b.rows[y][x-1] = cell * 2
          b.score += cell * 2
          prev = 0
        else:
          b.rows[y][x] = cell
          prev = cell
          inc x
    while x < b.len:
      b.rows[y][x] = 0
      inc x

proc shift(b: Board, dir: Operation) =
  b.rotate(int(dir))
  b.left_shift()
  b.rotate(4 - int(dir))

proc main(len: int = 4, target: int = 2048): int =
  randomize()
  block gameLoop:
    while true:
      echo "Starting a new game"
      echo "press q to quit, r to restart"
      let b = newBoard(len)
      b.spawnRandom()
      b.display(false)
      while true:
        let op = getKey()
        case op
          of opQuit: break gameLoop
          of opRestart: break
          else:
            b.shift(op)
            if b.is_filled:
              echo "Game Over!!"
              break
            if b.is_win(target):
              echo "You Win!!"
              break
            b.spawnRandom()
        b.display()
      echo &"score: {b.score}"

when isMainModule:
  import cligen
  dispatch main
