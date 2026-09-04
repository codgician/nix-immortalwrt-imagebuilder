# 25.12.1 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-mH9KsuVcv7Ile8B0NZofzIFnsho1ybLCJKdluxOod0Q=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-Gan9+oV994wdMOtSSB9le3U3KOhn3Z0NesBU2Qw5i+s=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-pUGvNLteM2Re1p25YWH4QkT4Z/mDs0micCWxG5DDHZo=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-XsjrNOY++vn6Q8HpvJGIi8BZoa803u6rV4Tnpe3T/gw=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-0mE6me5TWUhQDUdzS1VtYyQAnzSf+wwf6i3jfLw1BHQ=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-mYIBDAXZd5GU5ZfTHCX2mCd3w1Lpqn9RdaphwKIzg1w=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
