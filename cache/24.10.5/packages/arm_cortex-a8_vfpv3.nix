# 24.10.5 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-JnLZ2f0sdFF1G7TnoFZOWnuXLwmumD7vYXPwqQ78d/I=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-ITcKCrR0Cmmryi+a44YlZ8izvNxInBbw191ADmOIBLY=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-hV8rzS4hvS5HNB+C4/XUOIZIaTH80Efb4/1DnwLYURQ=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-zhUoOZE/K9niyxSw58JkNsAMovAhVsBB4UWxHKYqP5Q=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-R6nmrNrTMq+tsbEa7xJGjdn9n6v2WS13F4avomR5XH8=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-1u85tQGg51n5ViaCKMPiA3CNfAQPq87whQsSBtnP85o=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
