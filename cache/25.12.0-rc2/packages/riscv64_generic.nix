# 25.12.0-rc2 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-hBL/WpaESVgDMBBN7Yq0y98lx6gl/WnWXmjeXlzf1Us=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-MsLWjA6U0O/ndlLqoXUxITI4teCOOHSm1A9luB2J7pM=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-2OIkRoU7vrndfne8t7fMsI3IjUjVwPSNc37DU2NUA/4=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-mTwVAPb88D/wilCBde91N+WI6vvU/hfQ9kFkbhclvVM=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-mCMcx1dRR+1cgjZJ0qz+d++6fuG2k3ydvhQCaDDkQL0=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-ceTJVm8TqBcG+6uiqcO3ixdt93oZdLZx79JUZ0n+mYE=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
