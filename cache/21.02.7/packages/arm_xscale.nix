# 21.02.7 package feeds for arm_xscale
{
  sha256sums = {
    errcode = 1;
    name = "arm_xscale-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-dfL2O4t3ysDwHVTpnRD2EMx7OTR6UUuLqQ5/YtlP6qU=";
      name = "arm_xscale-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/base/Packages";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-3SPAzme/oodX9WL003pFvSHm71jnAa0Asazgyq0lmJ8=";
      name = "arm_xscale-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/luci/Packages";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-RvfZbMtqfrOTHf6qcSEZtVy2ZFO0wsfUm/N8BqHP6Rw=";
      name = "arm_xscale-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/packages/Packages";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-j70q1mDNCIXGu3LvNGQik8pi5LlgflOK5zq1JWCxcqY=";
      name = "arm_xscale-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/routing/Packages";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-yfKL+9Ozth18H165d5AWrq2SLat1jeoal7aPL0oPB8s=";
      name = "arm_xscale-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
