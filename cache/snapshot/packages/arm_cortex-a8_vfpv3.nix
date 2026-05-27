# snapshot package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-i8Cf/BwPnnBiziuQGraxFgFHx1eLGO5I0WjbQ0MbxRY=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-p85npEihVz63wyRLTOIGJogcHjIWyH4g7En5LpbRY8w=";
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
      hash = "sha256-WiCqYo5KSI+VLZrPwJgiEw/UqhXFNEtIU9qlSA2VIhE=";
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
      hash = "sha256-/DzrGuFq+XPIaY7pK6ptf8HqRj3y2LwZQMjIEW59tro=";
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
      hash = "sha256-TgaBWGg+4D3+fcPwxE/YZ3Dq4Vrt2mUoFlB2WTePl30=";
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
      hash = "sha256-1YREHU/bvd9op9GfWnITkj+eSJB1M40u6KFb95ZWEyc=";
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
