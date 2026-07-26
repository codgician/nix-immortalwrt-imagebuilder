# snapshot package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-08AdTnGrVDbNJVaxdCxMSMulbOQ6+MZ49Fn42Ig+lG8=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-UkACvuzgFU9JrnJOEv2Sq3hF9hBHC9qzSt11/3HOh58=";
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
      hash = "sha256-/IDmqnhCiop6WlPkCO5720dlyVMuOVYvvykREJrwWzQ=";
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
      hash = "sha256-eOpu5Bka/m2ZSHRhFCRJam5HZovhvFShJ5dxonCvWzE=";
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
      hash = "sha256-cbmpP9VLkO/7xMpfpCSmXjEqVFpx080kvdNAlcrk7wM=";
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
      hash = "sha256-8PfIUsnZaiEAR1L74rflSPMGAnP5v1sOkuJxtVfMPmQ=";
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
