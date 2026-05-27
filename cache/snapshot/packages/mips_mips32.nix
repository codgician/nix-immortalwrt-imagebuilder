# snapshot package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-KnsnzcQp5TEtqg8ZzX8tPPeTcQf/CXyRXh5LI7bV5bM=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-qJoLvHRkWG+zZcc7Rxf3kOIIhqgoZ8GE5+hKZJB5kps=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-/GhHnkWwTNpXePMM7CDWCpr6tTKtmm1e9zJlpPyUScA=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-D/HJlvptlWH513siG3fyxlxRmloCFl2qj1XDWGE2fWY=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-Z+pLkcFk+9nQMFkIKLy7LOMOE6bg09ek4qs06H/qC6I=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-5aJm7ckOeiKlvzpJ3DGebhZEQiNummxtTc5y4Oj+p/U=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
