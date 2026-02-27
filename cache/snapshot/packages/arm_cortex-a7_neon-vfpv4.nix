# snapshot package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-ynv7Fm0zDzwOTKI7er+pYxSCQE5WDCnqGmx/JdgN8Bg=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-KWSNKFMaAdnHC4rCuccxVIFYN6qwkwOBv9+9faY86NE=";
      name = "arm_cortex-a7_neon-vfpv4-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-P2Ur0u+4yq3NaF7EPch8mllLeSxkZdz3VPfejeqjBvM=";
      name = "arm_cortex-a7_neon-vfpv4-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-AyMIoX88dKFWvFk3iwp6ddrGVj7fjKE7rlDWZG3WOFo=";
      name = "arm_cortex-a7_neon-vfpv4-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-sfjXSB5nwn9MPX/QuXIGAZm6bRZJwU4mfrSplN56jhI=";
      name = "arm_cortex-a7_neon-vfpv4-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-CXKi+l/gshYFzo3ZjRA8lHxJZ1FNjH4MU+C4+45FHt0=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_neon-vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
