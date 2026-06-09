# snapshot package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-5CVFxAgLwBSxGTpUU661UJoP/CSlWPBIEvvpGuSC0as=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-Te5duO5qBWjQu4zvmGv4DlbR6tvRG95GVc4ZTqlBgcI=";
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
      hash = "sha256-45GEXUyeyI0TfI2Qo0sxHYRH86WuOV3abTNySWUAuXY=";
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
      hash = "sha256-RIn4rrgl2yr4rIF04g2t+rU6vdoU+ek5P3sWSrC9/hU=";
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
      hash = "sha256-7gYvMmi+n7IWBGC8fFyWQGaERQA8yY88Hhj3gYfgUM8=";
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
      hash = "sha256-+TEUyXmUCooeetGdbWQeSd/XCE13Y/EUHVQfsdVv7tU=";
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
