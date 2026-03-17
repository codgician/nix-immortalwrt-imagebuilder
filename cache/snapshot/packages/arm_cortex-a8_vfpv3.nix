# snapshot package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-c0eJVeTaLkWkf2nEfgzZsN3Pq5cl+/i2dqx23BWEDj0=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-PVRXCyB9SUlJYnBTuZNqy/YxdtzKj5NMuWjHhSi5E00=";
      name = "arm_cortex-a8_vfpv3-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-t+vBNG6gpb9E2OdLmxsKedBAPtMv9I/Zq28b4q/pmN0=";
      name = "arm_cortex-a8_vfpv3-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-FoOOVtMD0Rmz1moT6rsKGWTA2FgURHtHpF+f7KY+lJA=";
      name = "arm_cortex-a8_vfpv3-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-Hh1o4nc9P4t0aySIdIKZji3MRf5/objxKXxrVkZmu8s=";
      name = "arm_cortex-a8_vfpv3-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-Y7KVNHcCCz1o179OCncgp3feDhrERtYZIX342tS4baw=";
      name = "arm_cortex-a8_vfpv3-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
