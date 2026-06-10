# snapshot package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-dqx+iswsam30AE78Q/Q2ES/60Z8U+2/Dbvmq4Fq9VrY=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-FZNT7T+1pmLCbLFcC9FScJhNXVMvYDmg4jQh8Pel9co=";
      name = "arm_arm1176jzf-s_vfp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-z6bhM6OFkaMSGTETrLiVtopKq9+2jKKmD1Lx25G0ouc=";
      name = "arm_arm1176jzf-s_vfp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-6Vxu7/H7KywBilrGxN0SMfQQsf3T5O8GgtmeUJwO9k0=";
      name = "arm_arm1176jzf-s_vfp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-iH3Q7bVLNV0cmI0wc9RCHVLrKlBadoYk493zbV39nNM=";
      name = "arm_arm1176jzf-s_vfp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-N5yljtZKQIeGYltTzbVhd0XLimC38UiF9yylNLc5Pnc=";
      name = "arm_arm1176jzf-s_vfp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
