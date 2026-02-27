# 24.10.5 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-mJMKbMGEXpEf7G0xcmL1Z5xaK7yIYlkPz2L1RUtvkp4=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-uxxti8Gt8wx8BiG+EAP8Maug/zjd3lvGJ1v7pReQy1o=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-HjLeqOWI02UhNs2A9HC4fAyqCJdwIzIk6WcXYnZBQXY=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-31HUDbXywvpgFuEoLvTv0dgJ2ux9Lbpn83Tvtil3UuA=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-QcMXSKFQgjNU/SeQwglilypGgRgw/SB565rS7yPiozE=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-uFP3+QP03FDcSHbTjiyLjaiAL/qVh4hlaHtGdM5fARw=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
