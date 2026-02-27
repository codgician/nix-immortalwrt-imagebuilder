# snapshot package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-hXWE4xfC1epLP5HeSalule1uygNXSPM4KTiFMtSOQ3o=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-7RHykhOYc+/j2DYp1394uyexdhL5+19ixYRODLWlISk=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-t2c/pGYZOXtO/ihkNGGbEycHaWX7ZY59bVpWM18LkeI=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-wnF8/LS6YFFMU7atNaMjAnXN2fq9i2sgOmnNWJIMZo8=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-IF/zI9i2iGclWBi8a3JXYuk4TJqoR/iLj8U5y2P/xHY=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-8jN4xcK8rqOUEaf0wPdOWvnarDuiBHg/07HMnVrhpqA=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
