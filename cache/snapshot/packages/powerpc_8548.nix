# snapshot package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-nlnFZQDjZcwjPWTVSU/urfwjIiAHqJIsF/MyJKx1POQ=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-/fMfMH6FAXZ3kUyAvjU98gEaJqXTwvewYD6uEBts+uA=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-94T6THgvIeJRqGeD40H/4Bmkp+Omga/+9wiCRNxuxdo=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-9JKAw2MuQhLYoXgCMJEkCl5dluN/NLBywwDEzUmvqWo=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-5tK5fbiwWhplze27fpbGx0Vng+HTyyREXDXVNPLoLrQ=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-NVJQiuufvahK1cuKErz/sh48nARbGuKbA3G+bEdTAgw=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
