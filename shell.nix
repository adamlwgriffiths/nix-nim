{ pkgs ? import <nixpkgs> {} }:
let
    unstable = import <unstable> {};
    raylib = pkgs.callPackage ./nix/raylib/default.nix { };
in
pkgs.mkShell {
    buildInputs = [
        pkgs.bashInteractive
        # normal nim gets undefined symbol
        unstable.nim-unwrapped
        # required to get nimble, nim-unwrapped doesnt have nimble
        unstable.nim

        raylib
    ];

    NIMBLE_DIR = toString ./.nimble;

    # run:
    # $ nimble refresh
    # $ nimble install nimraylib_now
}
