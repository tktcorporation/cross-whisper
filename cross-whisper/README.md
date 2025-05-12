(devbox) tktco@desktop:~/ghq/github.com/tktcorporation/cross-whisper$ cargo create-tauri-app
✔ Project name · cross-whisper
✔ Identifier · com.cross-whisper.app
✔ Choose which language to use for your frontend · TypeScript / JavaScript - (pnpm, yarn, npm, deno, bun)
✔ Choose your package manager · pnpm
✔ Choose your UI template · React - (https://react.dev/)
✔ Choose your UI flavor · TypeScript

Template created!

Your system is missing dependencies (or they do not exist in $PATH):
╭────────────────────┬─────────────────────────────────────────────────────╮
│ webkit2gtk & rsvg2 │ Visit https://tauri.app/guides/prerequisites/#linux │
╰────────────────────┴─────────────────────────────────────────────────────╯

Make sure you have installed the prerequisites for your OS: https://tauri.app/start/prerequisites/, then run:
  cd cross-whisper
  pnpm install
  pnpm tauri android init

For Desktop development, run:
  pnpm tauri dev

For Android development, run:
  pnpm tauri android dev

# Tauri + React + Typescript

This template should help get you started developing with Tauri, React and Typescript in Vite.

## Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Tauri](https://marketplace.visualstudio.com/items?itemName=tauri-apps.tauri-vscode) + [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)
