# Cross Whisper

A cross-platform desktop application built with Tauri, React, and TypeScript.

## Technical Architecture

This application is built using the following technologies:

- **Tauri 2**: A framework for building lightweight, secure desktop applications with web technologies
- **Frontend**:
  - React 18.3+
  - TypeScript 5.6+
  - Vite 6.0+ as the build tool
- **Backend**:
  - Rust (with Tauri API)
  - Tauri plugins:
    - opener
- **Development Environment**:
  - Nix Flake for reproducible development environments
  - PNPM as the package manager

## System Requirements

### For Development

- **Required Dependencies**:
  - Rust and Cargo
  - Node.js
  - PNPM
  - WebkitGTK
  - GTK3
  - libsoup
  - And other Linux system libraries (see flake.nix for details)

### Verified Working Environment

The application has been successfully tested in the following environment:

- **Host OS**: Windows OS
- **Subsystem**: WSL2 (Ubuntu)
- **Development Environment**: Using `nix develop` for reproducible development setup
- **Build Command**: `pnpm tauri dev`

## Getting Started

### Prerequisites

1. Install [Nix package manager](https://nixos.org/download.html) with flakes enabled
2. If using Windows, setup [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install)

### Development Setup

1. Clone the repository
   ```
   git clone https://github.com/tktcorporation/cross-whisper.git
   cd cross-whisper
   ```

2. Enter the development environment
   ```
   nix develop
   ```

3. Install dependencies
   ```
   pnpm install
   ```

4. Start the development server
   ```
   pnpm tauri dev
   ```

## Building for Production

```
pnpm tauri build
```

## Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Tauri](https://marketplace.visualstudio.com/items?itemName=tauri-apps.tauri-vscode) + [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)
