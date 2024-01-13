{
  pkgs ? import <nixpkgs> { },
}:
let
  sources = pkgs.callPackage ./_sources/generated.nix { };
in
{
  google-japanese-ime = pkgs.callPackage ./pkgs/google-japanese-ime {
    source = sources.google-japanese-ime-darwin;
  };
  qutebrowser = pkgs.callPackage ./pkgs/applications/networking/browsers/qutebrowser {
    source = sources.qutebrowser-darwin;
  };
  vivaldi = pkgs.callPackage ./pkgs/applications/networking/browsers/vivaldi {
    source = sources.vivaldi-darwin;
  };
  copyq = pkgs.callPackage ./pkgs/applications/misc/copyq { source = sources.copyq-darwin; };
}
