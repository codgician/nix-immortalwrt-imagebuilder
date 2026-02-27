{ pkgs ? import <nixpkgs> {}
, build ? import ./builder.nix
}:

build {
  inherit pkgs;
  release = "24.10.5";
  target = "x86";
  variant = "64";
  profile = "generic";
  packages = [
    "tcpdump"
  ];
}
