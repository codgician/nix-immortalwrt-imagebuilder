# snapshot package feeds for mips64_mips64r2
{
  sha256sums = {
    hash = "sha256-nvkv6f6XtHNs+wXExLIQ+b4aplUhMuoO/V4FsAz3B3c=";
    name = "mips64_mips64r2-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/base/";
    sourceInfo = {
      hash = "sha256-CHBCrrur8afmG6uegP3qhcG2v9zmXdksyi2Q93hjTnA=";
      name = "mips64_mips64r2-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/luci/";
    sourceInfo = {
      hash = "sha256-v+6YifcSdMOKMXNm84ajndIfkokpocJPuNHHZL/DVeA=";
      name = "mips64_mips64r2-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/packages/";
    sourceInfo = {
      hash = "sha256-RaT2OHr2UOMbzx4zLF+Suqh2F9dC3KZo722qwXd3dI0=";
      name = "mips64_mips64r2-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/routing/";
    sourceInfo = {
      hash = "sha256-uhrtWpDCBXhKDRlYXtlIz/CyhvSm1PzHwPKV+4uCh5w=";
      name = "mips64_mips64r2-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/telephony/";
    sourceInfo = {
      hash = "sha256-wD52jowHM7dxYWIJdduG5cr/BXpdaqY4u0OvfJgdVLI=";
      name = "mips64_mips64r2-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
