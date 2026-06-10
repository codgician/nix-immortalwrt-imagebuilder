# snapshot package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-QEgo2Kbf7LsNt0TNiuFTI9lYd+5JDWgIf8d5VNvg3ic=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-wiWL04IBl47Y8Z+Mi7utoCFWsju3Gg3ITHjeCM+9tPw=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-jOOrqVqYfuViQttUIiDxWX3Et3w25KDtnNItjGZiLOY=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-VpVR+ihh+E8HHsc6Tyw9SS0Q5e8j/rCHJqtEnyXY5r4=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-Uu5hQAAEKLsLI3jX2WURSPDr/8VCz0BDSF4L1wBSmek=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-QFgSyqzO7qkAv+kGuQFvAc11eQFbc2V0oRUaN5UMG0k=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
