# 25.12.1 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-k+x1q1I4zSp3WulM/BmcE6OLe/q0tVknDZQ6Vca/6+g=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-ZkSQRGKQ3osncE3AqqSc9ZJwSgN4c9erLgiHbirMSGw=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-8lO8s1DeQ2JrhLvKHBViRWVUrRDrykGO28DCuztDY6Y=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-1Siee8nhJG2u6m8ylZ+OkmZXHh6PY8j4Jm+P+rlj8fM=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-VpP92/D9aqPfsKe+KiuEIySEhc7TH4WMpeW+iExs4WA=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-QlvgjVjftvgdIb6hxLpA8hnvN3AH2QC3gIpUrBsIQAo=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
