# 🎮 2048 Game CLI Clone in Nim 🚀

Welcome to the **2048 Game CLI Clone** repository! This project is a terminal-based implementation of the popular sliding block puzzle game, 2048, developed using the Nim programming language. Get ready to slide, combine, and reach that magical tile! ✨

## 📜 Attribution

This game is a clone of the original 2048 game created by Gabriele Cirulli. The original version can be found at:
<https://github.com/gabrielecirulli/2048>

The original 2048 is distributed under the MIT license.

## 🌟 Features

- **Classic Gameplay**: Experience the original 2048 mechanics! 🧩
- **Terminal Interface**: Enjoy a clean and responsive command-line interface! 💻
- **Nim Language**: Fast performance and easy readability with Nim! ⚡
- **Keyboard Controls**: Navigate using intuitive arrow keys for smooth gameplay! ⌨️
- **Score Tracking**: Keep track of your score as you combine tiles! 📈
- **Customizable Board**: Change the board size and target number for a unique challenge! 🔧

## 📥 Installation

To get started with the 2048 CLI game, follow these simple steps:

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/enkaito/nim_2048.git
   cd nim_2048
   ```

2. **Install Nim**: If you haven't already, install Nim by following the instructions on the [Nim website](https://nim-lang.org/install.html). 🛠️

3. **Run the Game**:

   ```bash
   nimble run
   ```

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

- **-s** or **--size**: Change the size of the board (default is 4x4).

  ```bash
  nim_2048 -s 5  # Creates a 5x5 board
  ```

- **-t** or **--target**: Change the target number (default is 2048).

  ```bash
  nim_2048 -t 4096  # Sets the winning tile to 4096
  ```

You can combine these options:

```bash
nim_2048 -l 6 -t 8192  # 6x6 board with a target of 8192
```

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.txt) file for more details. 📄 Join us in this fun and challenging game! 🎉 Whether you're a seasoned player or new to 2048, we hope you enjoy this terminal version as much as we enjoyed creating it. Happy gaming! 🌈
