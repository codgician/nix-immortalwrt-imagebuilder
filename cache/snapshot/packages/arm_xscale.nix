# snapshot package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-8RFAXtyVMiYn0QlKziGRAf10PWnsMEn75GKSWh4fuiE=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-zRcgU7e2wToa7n3fZZwzxvgc6JO3vgPjsGgliYeRgvg=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-1N2Je16qYWmnnEMZ2Ihh6ByWSTJeQsdQws0Drq2IWXw=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-VPVQk+MHfqum7zdWNsCv2TmWub2SLySxh7NP3uaMWnI=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-0c0rlL8UNyV4q9VNT+UacA77KiYPSnci/vh/8o7WBp8=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-V7G01fUoaG9YqKk314wFCOStASEyJuvMPiYXIvqTa4g=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
