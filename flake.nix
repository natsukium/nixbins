{
  description = "A collection of binary package for Nix package manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    forAllSystems = f: nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (system: f system);
  in {
    packages = forAllSystems (system:
      import ./default.nix {
        pkgs = import nixpkgs {inherit system;};
      });
  };
}
