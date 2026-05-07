# 25.12.0-rc2 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-GLnRS8tx0/T5EqnlI+au6LJm8eRAVM/umE6/6YE0orM=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-1oU1XLz3NN1B5OQnxm7MWPPnjn//vaqpv+aM78N8urM=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-0gZ41FsoY2LRHvYMwcdKJ/PHcTpqo5V/hzcpHuq9gQ0=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-GYBmnaRzQxjpVAejatJe4UnFTIzJiZgJDLhBpBwawFk=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-yzwrpP8bFl/SqtuP+HZBGUDQprSCd2MeUlAwFDk/nEA=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-nsr2qBzDMF7s5v2NrJP1ZK/ioGVpAkbbkFtwk6umNik=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
