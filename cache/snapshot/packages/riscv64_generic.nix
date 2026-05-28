# snapshot package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-r3XdPHeJ6dgA/leLRWFBlOB/EOLR6JYxvT+f4gHSdi8=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-+h9rNbLEpkOSzGpYEGyCN7oW5lykIObn+37OJeln/aQ=";
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
      hash = "sha256-2tKKhMsApN44SIs0ZCGJbI0e2fH4+zBIVc/rejUVKy8=";
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
      hash = "sha256-HB+cCQyLxwG1R9PhR/fztxYLUEsW8VDwvuR3tDDGd6c=";
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
      hash = "sha256-r+oncIFgvhbl2ZWKDTps8mew4MllUXScac78HG+iGls=";
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
      hash = "sha256-bglSaH2O2wdvzcZcOfiFeWpzDFfheszTI32xJFsYf4E=";
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
