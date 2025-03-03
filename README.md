# Signal Desktop for aarch64-linux

Currently the Signal Desktop package in nixpkgs is very outdated for
`aarch64-linux` because it fetches from a somewhat unreliable source. This
flake is essentially the signal-desktop derivation from upstream, with the
source unpacking slightly modified to use an RPM from the [Fedora
COPR](https://copr.fedorainfracloud.org/coprs/useidel/signal-desktop/builds/)
instead.

Right now it builds Signal Desktop `7.44.0-2`. Once
[#384032](https://nixpk.gs/pr-tracker.html?pr=384032) makes its way into
`nixos-unstable` this repo will be archived.
