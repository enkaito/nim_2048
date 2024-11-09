# 🎮 2048 Game CLI Clone in Nim 🚀

Welcome to the **2048 Game CLI Clone** repository! This project is a terminal-based implementation of the popular sliding block puzzle game, 2048, developed using the Nim programming language. Get ready to slide, combine, and reach that magical tile! ✨

## 🌟 Features

- **Classic Gameplay**: Experience the original 2048 mechanics! 🧩
- **Terminal Interface**: Enjoy a clean and responsive command-line interface! 💻
- **Nim Language**: Fast performance and easy readability with Nim! ⚡
- **Keyboard Controls**: Navigate using intuitive arrow keys for smooth gameplay! ⌨️
- **Score Tracking**: Keep track of your score as you combine tiles! 📈
- **Customizable Board**: Change the board size and target number for a unique challenge! 🔧

## 🎮 How to Play

- Use the **↑ (Up Arrow)** key to move tiles up.
- Use the **← (Left Arrow)** key to move tiles left.
- Use the **↓ (Down Arrow)** key to move tiles down.
- Use the **→ (Right Arrow)** key to move tiles right.
- Press **R** to restart the game. 🔄
- Press **Q** to quit the game. ❌
- Combine tiles of the same number to create larger numbers and reach the target! 🥳

## 🛠️ Command-Line Options

Customize your game experience with these options:

- **-l** or **--len**: Change the size of the board (default is 4x4).

  ```bash
  nim_2048 -l 5  # Creates a 5x5 board
  ```

- **-t** or **--target**: Change the target number (default is 2048).

  ```bash
  nim_2048 -t 4096  # Sets the winning tile to 4096
  ```

You can combine these options:

```bash
nim_2048 -l 6 -t 8192  # 6x6 board with a target of 8192
```
