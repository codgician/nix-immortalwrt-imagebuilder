# snapshot package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-gLFBdtxuLulhoCwK7c2LYa4ICDV5TxBXrKPDTN0eouY=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-auCMXKqZPeI5Gipj/nhP4ZjsjBfkAfpHn8qI56C/LuE=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-zgEamIXW7Hz0s+6zEOMVgMfOXIHBix0bXyOHJ9icDos=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-ZHtI1woLyHLCong1L20RNMsTFJGLDyMsHs4YiuR2xnk=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-62prh2/G6Xun578J/4mtUHX3LTWJoRefou4ggfV25Cw=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-AMkUe2S7ghA8g3ucR1Gkp02lxsNpyXfiYDeWP00P+oU=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
