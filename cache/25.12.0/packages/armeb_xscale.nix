# 25.12.0 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-n0J08PbibZqdK5MsaTgCT0glBmkQC9bgCZ1Itxkh4kE=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-tCsTp20TdkjgTW9MlQgzVV+ZXyNHI1dfQduCoDfmn9g=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-f8ZueQ0Wb5d7vwar/v/9hGSDGLTJ5h8dMBOHOKiz0ig=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-EdD0X6eWeBjLmHQl4ggL+EsQ2+dmmy/p/5vWeBNPvoo=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-WOTsIjoq/+PJuEpHjJWRo88ehXZZX3ppyhWP3QKowMQ=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-kni4SIyOmj4LCxEXRb5FoGMiuU/Rbmbp6qAGHWbYGsM=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
