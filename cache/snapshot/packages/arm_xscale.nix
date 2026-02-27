# snapshot package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-9vAbWR8bC3n249GEPjR4U3wZycAhdiPHkrxxLjJIRio=";
    name = "arm_xscale-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-w82PNup4lKCU8jcxcIQipVSo5kESoTPmz6R7+RoGJpg=";
      name = "arm_xscale-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-3v5rpM1pFaIf8zDjIjiyWe3He5zpYPvPIjBSiKC9B7M=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-mfzD8iuVzMUcOUz29yVLpcDVPLM5qgKshZIOcO/qS/w=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-kL06XB+TaGMXa96B+D9+j9X98e5Qf/bVKwbwYI0DoKM=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-Xi6pffCqsZufD1DzAUyO3mg8fkGFk8+a700s9ATXecg=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
