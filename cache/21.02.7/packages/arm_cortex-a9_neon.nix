# 21.02.7 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-B2xSCau+eXM8IcX6otmbfOqSi2pFB7C+9yviof4+jrs=";
      name = "arm_cortex-a9_neon-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-Zp9inE51KoEuwlmR6Nu9+7P0so2UBJ14FzzNadK7M9s=";
      name = "arm_cortex-a9_neon-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-hCWvqAZT/AKaF5R4Y3LPvh6OuMGau4zu/4AH6bwrKrU=";
      name = "arm_cortex-a9_neon-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-/WfyUGuXzGRiyHh+Ki4HVZDclF6A+XyivFc2+SZ+pyE=";
      name = "arm_cortex-a9_neon-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-DpJLzZUUUzJAQlwAqoQNAHQrrcJ+/XKFvVsyge+krr8=";
      name = "arm_cortex-a9_neon-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a9_neon/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
