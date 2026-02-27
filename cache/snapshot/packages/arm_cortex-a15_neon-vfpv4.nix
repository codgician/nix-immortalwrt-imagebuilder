# snapshot package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-D246fIl5hZyTImwPN8SPejsztj9dma2oO78qoT2icU0=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-qqCzTjDrsYKSIVbp+rO6ilugGU0lc9/JqcFnSNDDb6U=";
      name = "arm_cortex-a15_neon-vfpv4-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-93yxpMzntQGUlafXpjweFoYHSGTPMUOGTNtKRzLqUSk=";
      name = "arm_cortex-a15_neon-vfpv4-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-NgiD6U1bjUmEqG07pkV2VTtuxNTJ3m1/d7tnoO4yi2M=";
      name = "arm_cortex-a15_neon-vfpv4-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-WvYAaACe3yt0Nth5UDtXwUOZ6Gt+erEFouUbgM6WDaE=";
      name = "arm_cortex-a15_neon-vfpv4-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-UCoiNzaIY60JY5JtMTU/8jC+RLE2+cTYr4sUNqx08bc=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a15_neon-vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
