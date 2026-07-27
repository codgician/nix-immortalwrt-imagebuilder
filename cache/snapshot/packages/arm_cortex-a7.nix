# snapshot package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-UqT6rgq94yKYoPV+fMsW6Q2SFKeXk+ENIUcuZ927mBE=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-xrOT715v8Ul8f+TCQ4W636AIB+HYpQii8KHrGWsIois=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-bUmoPxBDkTJ79rRIXetxBeV5aEFHLRLGZmB1Oh7v+SI=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-9NDGfFwfmNxgY78iKZ+DRFcJNwT6lv+ZIRjzoQ/MLZg=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-uekPqQI6c0RpO15VzIc1aRe2TBpl+oZwuZiqv9Y1+rU=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-5IOgU+3LKNAPaJNTfn/60+ZrzJxg+jDrON7Jfs/hezU=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
