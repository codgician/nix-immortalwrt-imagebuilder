# 25.12.0-rc1 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-YxMc/FDM0mz9G85moDmcyCLO80vcNR46Sn7BBQotw+Y=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-X1S9y3YGZCdr3HmbyAyXh9ZEpXYrmJP4T37ktKM403I=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-yA3bJvnjNT16BTbuV/bMZ3iAvPgOH/s1M/RuJEJIAG8=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-ZvucxpOe+gbk58F/9b0DKDSeOPtkZKOe/Zd+BHXYPSY=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-PffTDto6+PwcuHeyg6NDoKhpetZZNkbJbtJtuJAu2xk=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-9mjGQ+2RtW/mcaWYcGRkYyHQTuv236gTbc+/mimcBVY=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
