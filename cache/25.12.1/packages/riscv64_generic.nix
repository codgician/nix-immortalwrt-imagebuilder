# 25.12.1 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-JyhtSlNcgicHPP0GnaQ+BKSkOeqbUXaQalTSTnIp0OU=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-KzcTMNkcLPs4ygHcI72uoYYxJHojOuSn2WYHJisvqYI=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-MxeUYx4TMju0tKdWgT5K7VTsB9lg+qB+f8qQ2v3Hqaw=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-KiCbTBLgudm+dHQAGN4O5taLhFEf9el3exxBNyERMbw=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-wN0WqyGmxFAXDXj+02ibCSwEPt5B6UFst5fjFyiPfRA=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-hK8YjCpVrppwX9Wh6WZQO8597fw6kYoL1+Zs2DtUv/8=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
