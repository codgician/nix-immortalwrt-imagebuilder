# 25.12.0-rc2 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-UuBB891JGJO+TW4SepRB3IY/gOwobj+zyK2vpznvsuY=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-Z20kJtl29FYPFLc/hKgMxT7MWf10lxVAQP+my0/TUBw=";
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
      hash = "sha256-uum2KJhHhBxevXeKwENVJBDPI+Fw5hdgRyUf92a8xaA=";
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
      hash = "sha256-MtUavqIwUN8QvlOdn0xPlV2l1TQZOY5VjjQqbQBAyeA=";
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
      hash = "sha256-hXpjXMuBsSX9gYnNv/Qko6xDgsxXNSJLNM6Pi/K7ohM=";
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
      hash = "sha256-qu3QL0jPVMaE3BtTS+xXd0I12btaEM5Lowx5CfZ4N1s=";
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
