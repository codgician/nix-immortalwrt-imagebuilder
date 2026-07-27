# snapshot package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-pVBs3hd8Fz0VHU7Uw8ngoLrOr0Az2hZ5mwH1PNhoPe0=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-wcq1yyjfaZT+/mT+3aUenZg+E4DoYy+zhhBX6cC6PSA=";
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
      hash = "sha256-EYELrriYmIhuf6uFnB7vqg7MKsgaa/GypAuPWIhHSgs=";
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
      hash = "sha256-8FWR8Vvvu8T926hdCC0vGPrl+0sYjv5Bh+fIxBJardw=";
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
      hash = "sha256-39xSVmLOMRA5KLw01SsFTJIEGpZCpQ7MlLOoL3wstvo=";
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
      hash = "sha256-opGg8THOzPb0hfAbtu+AU/5wFDM6s3oCN6u1rMFBrMk=";
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
