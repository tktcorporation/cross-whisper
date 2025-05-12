{
  description = "Development environment for cross-whisper";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        # Development shell environment
        devShells.default = import ./shell.nix {
          inherit pkgs;
        };
        
        # This allows `nix shell` to work
        packages.default = pkgs.symlinkJoin {
          name = "cross-whisper-env";
          paths = with pkgs; [
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
            gdk-pixbuf
            glib
            gtk3
            harfbuzz
            librsvg
            libsoup_3
            pango
            webkitgtk_4_1
            openssl
          ];
        };
      }
    );
} 