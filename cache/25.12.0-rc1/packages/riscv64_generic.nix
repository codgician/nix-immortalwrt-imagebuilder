# 25.12.0-rc1 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-Re9C8J4v4uJfx02V/+oQ1bbIWdWtbw5RWF2CzzWekS4=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-vHlcHYMGWjf6aDDSEeTZ0FLl7JXW6XazD3Mg840o/Ws=";
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
      hash = "sha256-7insIwpWhES3zlSAtyCwgx/W9QTt0u5QAMx0BQxTHq4=";
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
      hash = "sha256-2Add3ya3Y7EleSo5qnt8l6qc5JP8YfuafGLaxbVWn0o=";
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
      hash = "sha256-bnvldtPpGPJphxaD6QU39l3YGQR3P2/5iJLd7DCebl8=";
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
      hash = "sha256-CzcM1V3pzBO24PsnGnVu119neTCIwuBzEsn4Xtz2kiY=";
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
