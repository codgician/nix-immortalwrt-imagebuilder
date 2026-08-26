# 25.12.1 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-vx47ZN/Fc5UgIXhyk9OLdSMGkqH1qweuQJ45T+guRC0=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-lXYtzsRNfucgwh517jwMFMSMRDEiq4Bwla4Rw3flGUI=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-LLIKE4lVV8wWkDEbzCJOGoEPU/Ow/HK3cA3v33WPNiA=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-3o5JzT3jI3vQbPocSw6nyBPQtL9nhGhEnMDBf6+aau8=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-AcF0M8xh/yoSL63c7BE70zwVC97JygrASSd+AfTKSyw=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-YhFI61y2E0B3qeLgS8c+iOFGJSpeqC2uyd4OeXLhOmk=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
