# snapshot package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-hgYg0bDLfNYjKuG13PIEI8SdrwLU+mPwi53vHcy1CIs=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-TmKZYDS9l/1jODrwJKqnDkRUo6cMdSuIhqNx6YrOe4U=";
      name = "arm_cortex-a5_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-RAXGokpH+8GXWFePbLTGtcsENEVMJWeHC2SDe1mimjM=";
      name = "arm_cortex-a5_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-TV8ozuj9AWCTXCJ73dkINKCzeahBw2t+159Qgth0vDQ=";
      name = "arm_cortex-a5_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-0uCsPCFxwU9BB14Std2G+H0gkQd1HBrllWClOnJ/WlI=";
      name = "arm_cortex-a5_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-4nK+hGdTxA4tcTDY43d8+jmsAYguPr940JHo1HyEaFk=";
      name = "arm_cortex-a5_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
