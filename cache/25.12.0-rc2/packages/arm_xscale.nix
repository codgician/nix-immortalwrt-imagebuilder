# 25.12.0-rc2 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-RUIZuSKfaeRrbcwc2whwdu6M8T8Jvbq0wXbgAJj0vA0=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-mRKTGxdqm2e2yU9EAEjaJ46gGsF+FAvM7cBtYZL4uf8=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-4moO3GQar9gxO/91z78aaKjqqORRSwnNJjZ6lZlMIQA=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-u7DGxO4tqdjf+ccx2sngUZ1Y07Pf1OIeSyvyRnfRhzM=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-z5sRHKPn21CFae5b8LyeXMsVvHfwoh9FBWmV1Icte4M=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-OZTbZtttX18H2yUBaU3CRgF1bRMnZ5yeIejMv7lA0qk=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
