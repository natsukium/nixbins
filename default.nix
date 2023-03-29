{pkgs ? import <nixpkgs> {}}: {
  qutebrowser = pkgs.callPackage ./pkgs/applications/networking/browsers/qutebrowser {};
}
