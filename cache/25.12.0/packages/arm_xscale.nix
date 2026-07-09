# 25.12.0 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-dAGSVHArTCLeNw3xW6t09bKBk7WL3wcHVWHBLFoDwVU=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-uczjsdlE5PPP+a3BiciLoALSGBYhJy1/X6zseJYcml8=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-YHdSHMH33cRDpzE00QSmv2p2Zo0S3CPL5cHYzmtTgQI=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-tDQKOaVYEwXeRMXcFdTQrIG1q/Sw/siOndbkBrF6mbA=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-czhuR7WS98EfigjbEtYy/zY7TH+GRj9jxkyGuT6tOVE=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-AGsPttKqDe+vPe2cuaRFgWSNhDInMWEgaGC1JdwCXL4=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
