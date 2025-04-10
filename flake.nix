{
  description = "Signal desktop flake with up to date aarch64-linux package";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      forAllSystems =
        nixpkgs.lib.genAttrs
          nixpkgs.legacyPackages."aarch64-linux".signal-desktop.meta.platforms;
    in
    {

      packages = forAllSystems (
        system:

        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          signal-desktop = pkgs.signal-desktop;
          default = self.packages.${system}.signal-desktop;
        }
      );
    };
}
