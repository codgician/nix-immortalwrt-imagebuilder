# 23.05.7 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-N/BuTykhJ0eM/w0pRAI+eRUB+GurMFJy1FeR4DEQlOA=";
    name = "arm_xscale-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-t5I8OvaXXhVelqPF+/R93q9zrMmIC8vc8EZc6L0s3sY=";
      name = "arm_xscale-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/base/Packages";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-EOK/cZKb9Ry4eHK45AFVwNVcWKQysPVzjf2R7X2HrQE=";
      name = "arm_xscale-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/luci/Packages";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-bfzX0DxwS9xPbj3hDyWxCVKeG2Mv8rQbaW07QRTrW80=";
      name = "arm_xscale-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/packages/Packages";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-s9uMITHZ4oHkvbgH5giUWxTmRTeIahQXPudA7zgZPQI=";
      name = "arm_xscale-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/routing/Packages";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-IX0xzo2Vl5OvGtVlShc0V+JbmxEHutF2jkBNuwG5Yl4=";
      name = "arm_xscale-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
