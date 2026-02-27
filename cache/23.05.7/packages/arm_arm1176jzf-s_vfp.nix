# 23.05.7 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-UYvZTZ4fgoB1YpTPE36BDhCvU/KeX+n0k2VLy0ed3xA=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-iU+im17QLanwhef7dNchuz/jcp3ZbnH5m8uwTRwZ/WY=";
      name = "arm_arm1176jzf-s_vfp-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/base/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-BQ55c1tT+p7Kdf7jsi44lc1jNgDqU4yKjlITXNOrqXk=";
      name = "arm_arm1176jzf-s_vfp-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-vjo1T/moByFxJU9gEcWqFzZ0FBqhmVNY2U9OkYDlcJ4=";
      name = "arm_arm1176jzf-s_vfp-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-NSpLMSQVN9/XS/hk9bF2QF8cQIlpB9Y7obVCUZ6MOEU=";
      name = "arm_arm1176jzf-s_vfp-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-NRRiwqcTAVZuJxVabnx9G/2pJNCqNxO1xNa30+FB07g=";
      name = "arm_arm1176jzf-s_vfp-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm1176jzf-s_vfp/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
