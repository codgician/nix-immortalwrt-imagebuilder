# nix-immortalwrt-imagebuilder

> ⚠️ We are now using `https://mirror.nju.edu.cn/immortalwrt` as upstream given the official upstream `https://downloads.immortalwrt.org` is down temporarily due to regulations.

> This project is forked from [astro/nix-openwrt-imagebuilder](https://github.com/astro/nix-openwrt-imagebuilder), producing ImmortalWrt images instead of Vanilla OpenWrt.
>
> ImmortalWrt is a fork of OpenWrt packed with features useful for users in Mainland China.

Generate ImmortalWrt images from Nix derivations using the official
ImageBuilders that are provided upstream.

For ImmortalWrt releases since 19.07 there is profile helper functionality
that helps you find the proper image specification (target, variant)
according to your hardware's profile name.

## Background

In an ideal world, ImmortalWrt would be built from source in many
fine-grained Nix derivations. Until someone implements that (please
do!), this project exists to reuse the binary ImageBuilders that are
included in every ImmortalWrt release. They are only available for
x86_64-linux hosts.

The ImageBuilder can generate new *sysupgrade* images with a
customized set of packages and included files.

## Usage with vanilla Nix

```nix
let
  pkgs = import <nixpkgs> {};

  # use fetchurl, Hydra inputs, or something else to refer to this project
  immortalwrt-imagebuilder = ../nix-immortalwrt-imagebuilder;

  profiles = import (immortalwrt-imagebuilder + "/profiles.nix") { inherit pkgs; };

  # example: find target/variant for an old Fritzbox
  config = profiles.identifyProfile "avm_fritz7412" // {
    # add package to include in the image, ie. packages that you don't
    # want to install manually later
    packages = [ "tcpdump" ];

    disabledServices = [ "dnsmasq" ];

    # include files in the images.
    # to set UCI configuration, create a uci-defauts scripts as per
    # official ImmortalWrt ImageBuilder recommendation.
    files = pkgs.runCommand "image-files" {} ''
      mkdir -p $out/etc/uci-defaults
      cat > $out/etc/uci-defaults/99-custom <<EOF
      uci -q batch << EOI
      set system.@system[0].hostname='testap'
      commit
      EOI
      EOF
    '';
  };

in
  # actually build the image
  import (immortalwrt-imagebuilder + "/builder.nix") config
```

## Usage with Nix Flakes

```nix
{
  inputs = {
    immortalwrt-imagebuilder.url = "github:codgician/nix-immortalwrt-imagebuilder";
  };
  outputs = { self, nixpkgs, immortalwrt-imagebuilder }: {
    packages.x86_64-linux.my-router =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;

        profiles = immortalwrt-imagebuilder.lib.profiles { inherit pkgs; };

        config = profiles.identifyProfile "avm_fritz7412" // {
          # add package to include in the image, ie. packages that you don't
          # want to install manually later
          packages = [ "tcpdump" ];

          disabledServices = [ "dnsmasq" ];

          # include files in the images.
          # to set UCI configuration, create a uci-defauts scripts as per
          # official ImmortalWrt ImageBuilder recommendation.
          files = pkgs.runCommand "image-files" {} ''
            mkdir -p $out/etc/uci-defaults
            cat > $out/etc/uci-defaults/99-custom <<EOF
            uci -q batch << EOI
            set system.@system[0].hostname='testap'
            commit
            EOI
            EOF
          '';
        };

      in
        immortalwrt-imagebuilder.lib.build config;
  };
}
```

## Refreshing hashes

**downloads.immortalwrt.org** appears to be never at rest. That's why we
update the [cache subdirectory](./cache/) daily with [a Github
action.](https://github.com/codgician/nix-immortalwrt-imagebuilder/actions/workflows/update-hashes.yml)

If you still encounter `hash mismatch in fixed-output derivation` in
between these updates, update them yourself:

```bash
nix run .#release2nix -- $(nix run .#list-versions -- -l)
```

If your `flake.nix` has this project in its `inputs`, then you can
build with your local working copy using
`nix build --override-input immortalwrt-imagebuilder git+file:///... .#...`
