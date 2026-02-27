# 24.10.5 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-jKo2o8UwvmHJZWib40X8WICUMGNyqik9XTCeRj+Wfs0=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-pWMbsg2e2QQgp2zwtJo5tAyTaF9VQRMVSZqA3Otg4EA=";
      name = "arm_arm1176jzf-s_vfp-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/base/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-nvFepuVDckTZ3wFBM+1Jhx81OygV+DMehSiM1XXlaUI=";
      name = "arm_arm1176jzf-s_vfp-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-OKDqluhv75tX8Hyn+VeVOUnEfcYeWVY9WP2ouaAA+tA=";
      name = "arm_arm1176jzf-s_vfp-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-EHBJGTsMp6GgW4cXsmgTPEUY3eaMwvcZjrx9lNxEOd8=";
      name = "arm_arm1176jzf-s_vfp-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-GjIiXS9bXUs5ldjFYJMO/oVmNciaLQZF4cuFv75Zrkc=";
      name = "arm_arm1176jzf-s_vfp-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
