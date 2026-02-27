# 24.10.5 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-ucpJX493zzoc+beSIwKA/gVzj8x+evLJe59f0K+Echo=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-eLJWYw3ZZzinfhp4LO8T0xyLrkcwd7exBfAqiEV1AkE=";
      name = "aarch64_cortex-a76-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-rsbXr8EF4LHHT74rGpMCtfphlST42suuNy3+x6zg80U=";
      name = "aarch64_cortex-a76-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-+sgG/0XApEkdzVQ+8FNB7VnuI1nXp0P5iAjAfN9fL50=";
      name = "aarch64_cortex-a76-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-XXWz3csl8i72PZwbsAtpsROSUxkOOxsPDg/Aqf/ISx8=";
      name = "aarch64_cortex-a76-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-yfRSA789inOMlBk4IjuFU+8v96OcXwsibXlDbiMyQl4=";
      name = "aarch64_cortex-a76-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a76/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
