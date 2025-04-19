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
          signal-desktop = builtins.warn "signal-desktop-flake: this repository has been quasi-archived since signal-desktop in nixpkgs has been updated. This flake will not be updated unless Signal in upstream nixpkgs goes critically out-of-date again. Please switch back to signal-desktop in nixpkgs." pkgs.signal-desktop;
          default = self.packages.${system}.signal-desktop;
        }
      );
    };
}
