# 23.05.7 package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-bDpCuH13HqBSPxMBwYoTqQ/OpPqzdNncTfwy9lbZCd8=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-VXQSuVtoa+OdSHoE8a+/jmAof3ez0R17JMdfTiURG+E=";
      name = "arm_cortex-a9_vfpv3-d16-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/luci/";
    sourceInfo = {
      hash = "sha256-khw78tzELZLqSI7FM5AYojg/y7PfDmPufGCtbMUzRf8=";
      name = "arm_cortex-a9_vfpv3-d16-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/packages/";
    sourceInfo = {
      hash = "sha256-zqsINabbevJgMP63dokEYk+hyuXF7gzOcm9HWBugZZM=";
      name = "arm_cortex-a9_vfpv3-d16-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/routing/";
    sourceInfo = {
      hash = "sha256-5RRjzBBllvd2w6fXW9IwfkhT3BT4xVcgC7vFPHx64Bc=";
      name = "arm_cortex-a9_vfpv3-d16-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/telephony/";
    sourceInfo = {
      hash = "sha256-cVJ3QzOd0qDHONpXy1lmDzkvDoEC59jIjlsMr3QIh3w=";
      name = "arm_cortex-a9_vfpv3-d16-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_vfpv3-d16/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
