# 25.12.0-rc1 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-2Cd7ohKpMR4DeZR9JHBip1cELTUKCzSGNkWxsy4Zn8A=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-wwjIz4Ky09zRnb64HNvSVMuwqXcAOtDapl8dL0obY54=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-zvFnVMcvs8N/IR9s//EL/KZsUaqhptwy/Fxzj+2YQxE=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-hQ7pu6AGvYOUMWNJkuCxT4/bEuqdPoAgcCqGYCTIsAw=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-XiCGOd7bKWItFHbstdlly7Wlow/XmyYvYdXgkPgvblM=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-DLwZdJ0EAGMeMv7tBWJK+DdRdoYBBuOq/rCsDb5m4KE=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
