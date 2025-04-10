# Signal Desktop for aarch64-linux

> [!WARNING]
> `signal-desktop` in `nixpkgs` has now been updated to use the same COPR
> source this repository uses. It is no longer necessary, just use `nixpkgs`.
> Additionally, the electron bug has been fixed. If any issues arise with the
> `nixpkgs` package in the future, this repo may be updated again.

Currently the Signal Desktop package in nixpkgs is very outdated for
`aarch64-linux` because it fetches from a somewhat unreliable source. This
flake is essentially the signal-desktop derivation from upstream, with the
source unpacking slightly modified to use an RPM from the [Fedora
COPR](https://copr.fedorainfracloud.org/coprs/useidel/signal-desktop/builds/)
instead.

Right now it builds Signal Desktop `7.49.0-1`. Once
[#384032](https://nixpk.gs/pr-tracker.html?pr=384032) makes its way into
`nixos-unstable` this repo will be archived.
