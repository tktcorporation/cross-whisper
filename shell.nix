{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    rustup
    libiconv
    nodejs_22
    jq
    direnv
    cargo
    cargo-tauri
    nodePackages.pnpm
    pkg-config
    gobject-introspection
    at-spi2-atk
    atkmm
    cairo
    cairo.dev
    gdk-pixbuf
    gdk-pixbuf.dev
    glib
    glib.dev
    gtk3
    gtk3.dev
    harfbuzz
    librsvg
    libsoup_3
    libsoup_3.dev
    pango
    pango.dev
    webkitgtk_4_1
    openssl
  ];

  shellHook = ''
    export PATH="$HOME/.cargo/bin:$PATH"
    rustup default stable
    export PKG_CONFIG_PATH=$(pkg-config --variable pc_path pkg-config):$PKG_CONFIG_PATH
    
    # Define shell scripts
    function test() {
      cargo test -- --show-output
    }
    
    function start() {
      cargo run
    }
    
    function build-docs() {
      cargo doc
    }
    
    # Export the functions
    export -f test
    export -f start
    export -f build-docs
  '';
} 