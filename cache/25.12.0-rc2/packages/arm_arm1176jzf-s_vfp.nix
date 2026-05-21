# 25.12.0-rc2 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-qF93OF1c2inaV2B+6rL4w2g77SbNOlrMECeaYNuHc/w=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-FyLVEF274zwU2HCMFjXFlXcqTLGZCxSUxn8GZ7KwtB8=";
      name = "arm_arm1176jzf-s_vfp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-38J5Z2/48JTFvV4C/VnYA818cgS+FWIjesKz8+iAnr8=";
      name = "arm_arm1176jzf-s_vfp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-pbmJW6+5dcG2obQnJq7tjd/AP8ZnNJXC2FkoKQMa7KI=";
      name = "arm_arm1176jzf-s_vfp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-QN7Two48P8yDakellKF/wWgWHdu8wzbVSrINjvbWUg4=";
      name = "arm_arm1176jzf-s_vfp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-CvqQp8blYp2LVVH8ss1vuwFUK+VbkrQhIwNsTyg5Mx8=";
      name = "arm_arm1176jzf-s_vfp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm1176jzf-s_vfp/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
