# snapshot package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-URckVtVrO5FqMfwxwlOiBpqjhVp4bQtcAEBNtWFJVr0=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-Ysdf54717fQm/ZOl2dr9xqz0KPOcI2vcBn2vzU6TmKQ=";
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
      hash = "sha256-/kRFtVyUlC7gr9wcd6ysuE0E3WHxGBqMB5M0DxXMtqw=";
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
      hash = "sha256-PzGHnpY/pLfyi0bUcK+aGFPAGCVTVNh+uOhZ768zxHE=";
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
      hash = "sha256-Qo3f4+RwgnjIwNPUOcWLZSWMwjEIrI8OVw7nMZeeLBU=";
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
      hash = "sha256-xjfA0XHOTSyk5k81uNhkSN3AbSPXiV3bf3nMABykyaY=";
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
