# 23.05.7 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-mVDOejrdpbL3wgr1aRTbrgvszq7VeaDuBgx3AV80nFk=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-WBi2QFS82DkB7NQydxDQ3l/33JIZtoHQvSZkR4ILuFE=";
      name = "arm_cortex-a9-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-zmAOOdFRffwJSyeL49yyBKJZi80h/LBWIgCOf04OZ3U=";
      name = "arm_cortex-a9-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-4aah2Cu6ttaZIvN4XwQVfZtQnn+lA3877drFffYZlm4=";
      name = "arm_cortex-a9-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-0srVCwXRUBL8BygcU3bGmEjEmMCRMOat6VtxB9xN6sU=";
      name = "arm_cortex-a9-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-qkr2aUuLfKcJ/G3HISvXdUYZvQgvxEcvNYCtM2A6RRY=";
      name = "arm_cortex-a9-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
