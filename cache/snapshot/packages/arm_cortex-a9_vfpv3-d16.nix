# snapshot package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-0O265vlHMkMWnzCxBeAbIcyct+ga0l7vLBlPu/OyqHQ=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-+9qx91gXYs2IBqpoWAkl+oYUwdCaOldEIA4O2CU2yik=";
      name = "arm_cortex-a9_vfpv3-d16-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/luci/";
    sourceInfo = {
      hash = "sha256-ZJWj6hrTmhtM9nG82ZJkxDDACfoWJ4/Afaf72RzkeIw=";
      name = "arm_cortex-a9_vfpv3-d16-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/packages/";
    sourceInfo = {
      hash = "sha256-WX/AHu3zXh+qJ0tFUzOJv8mhG5CYzNP7Y3Pm6P+GdaE=";
      name = "arm_cortex-a9_vfpv3-d16-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/routing/";
    sourceInfo = {
      hash = "sha256-qaeFdB3aHPYYpJZKdGYIU+qObpDSV0nOIgI5kgPUhLs=";
      name = "arm_cortex-a9_vfpv3-d16-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/telephony/";
    sourceInfo = {
      hash = "sha256-pKZo70N8G5SwqIWAnF0+b2RO8rHgfr/hB0UkBOktwms=";
      name = "arm_cortex-a9_vfpv3-d16-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_vfpv3-d16/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
