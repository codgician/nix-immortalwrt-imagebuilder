# 25.12.0-rc1 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-1TvScH96p7zJVxDJU9nr0qUIuxy3qXO9QzjbEtaycKY=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-7201bmfxHFpABiA2LdwVgP5Oa1TSJ2O3KSnugBOyvho=";
      name = "arm_cortex-a8_vfpv3-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-35x1iE4tKn+0Nf4g507YDDRkAlvkyvm89qC149wPdhw=";
      name = "arm_cortex-a8_vfpv3-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-EoeRDYBfVMGYCGtoryK4pOhyssqR1Cx6bwJcT8bWNnc=";
      name = "arm_cortex-a8_vfpv3-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-Kd+itHNQxPaBtaHDUlob+LYoxC1Q+G+q+MVbzEtuWFM=";
      name = "arm_cortex-a8_vfpv3-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-NW0LExSXdFEE/MB23VItlMFczrp7KDhYYYuht1ztLVQ=";
      name = "arm_cortex-a8_vfpv3-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
