{pkgs ? import <nixpkgs> {}}: {
  qutebrowser = pkgs.callPackage ./pkgs/applications/networking/browsers/qutebrowser {};
  vivaldi = pkgs.callPackage ./pkgs/applications/networking/browsers/vivaldi {};
  copyq = pkgs.callPackage ./pkgs/applications/misc/copyq {};
}
