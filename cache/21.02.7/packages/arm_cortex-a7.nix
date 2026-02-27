# 21.02.7 package feeds for arm_cortex-a7
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-LChUbxrF0lZ4Ft7A6dCgRdGKGMnffRdEgbvnEErPeD4=";
      name = "arm_cortex-a7-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-zSxCyRfZiNcXsIIepjLx0JavT0YMob6w88DH+IdrFgA=";
      name = "arm_cortex-a7-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-riFsFZ+xBYF66lBTezqbOUqMy6zULBvZe9N1qDd/rm0=";
      name = "arm_cortex-a7-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-ngNCYhey6U7OmhKbOiClfIqMbjlHGcg9rOHc9xUs9fg=";
      name = "arm_cortex-a7-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-eWJzJKsfD8TNBwf66wV24trer1VM5q7JMk8SXDFULYA=";
      name = "arm_cortex-a7-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
