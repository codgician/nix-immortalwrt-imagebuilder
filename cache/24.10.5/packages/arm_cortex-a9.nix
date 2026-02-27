# 24.10.5 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-juJMdcsKsTLHlJteeo5pi9TKZlcXTAvT+tOT3danfgU=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-VssA0cuo1MyJbGIYT+POxiLNb+KcOIxjkZ16c2o3+C4=";
      name = "arm_cortex-a9-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-swTNczuLw+uX5n+QhhBOJ9pNbYivAlWP++KnNzhd6+4=";
      name = "arm_cortex-a9-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-dG/UfwykJx+Xc6Y4bXFarpQ2wyk9WJMoey7dFngNZjY=";
      name = "arm_cortex-a9-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-IknwZI+MiQg7F0okVhtEEao611KH8+gDiQWTlsS1OTI=";
      name = "arm_cortex-a9-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-cKwM5Y5Ig7RKj57XeauWdRoLaRxgz9/wEUK1Q1Xqr4I=";
      name = "arm_cortex-a9-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
