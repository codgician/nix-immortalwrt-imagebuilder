# 25.12.1 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-IA4d2fSSMNOYjT1OWRrRw+GiNJFSQAVz41jgVTGDjPo=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-GiqQHAC+6YgXp2VWj/32gAaqqD0i2gjAxROzUFFpivY=";
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
      hash = "sha256-ZBM/2zqhMymDVhC9K5O7U19LN6cGW6OccJ/i4eh3MDM=";
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
      hash = "sha256-o5SseII9qzyoO+tRjHIXE4lC8FbR1zY8FN34r5De9kI=";
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
      hash = "sha256-0zdHNjszba03d5jxXMF1LC66JQeyvt7h8xKA4WRo9jA=";
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
      hash = "sha256-hAeNFvh/KPxD807pTHJ/5wLBpBbQCe1Gd7em3zp7Jv0=";
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
