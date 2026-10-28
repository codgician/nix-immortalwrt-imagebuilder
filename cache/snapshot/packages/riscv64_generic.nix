# snapshot package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-wH38i6/VRpA6nHc/SfMqfeAH1Ud7SIjU3xnN9GOEKj4=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-4IQThbyImE9xLNnRQmBEirnIhfDJS5Yw69bZ5exrgiU=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-wuHNlApCf1K/V6keWvDjnr0AdtSiHdmkN5lwue0KusQ=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-/UIbRV4eOIe4607ZSIte9I0WY+i+UC8v+W99kAyK/pI=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-ibaSZN9/8rwLdU1dgGPgN3eSwedXp6OIzBU0FfJiGr4=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-NqFMywxSrNRVOTf/6EQ0vLwEp/9V9A2jWP0YgtPUBnM=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
