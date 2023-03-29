{pkgs ? import <nixpkgs> {}}: {
  qutebrowser = pkgs.callPackage ./pkgs/applications/networking/browsers/qutebrowser {};
  vivaldi = pkgs.callPackage ./pkgs/applications/networking/browsers/vivaldi {};
}
