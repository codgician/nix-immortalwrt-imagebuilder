# 23.05.7 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-G4U+06Ukt7mwEL9RL+qEwDv2OSJ709gcVr07fSM3xdY=";
    name = "mipsel_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-FP1VZO63TznkEtukUQRDz+2gKxJvslCopLfskgICbSg=";
      name = "mipsel_24kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-MghYGYiTsZA1zU2hdI1L4x0mofb+qT6+e6amiQT7Vn0=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-q0pogswY28WCMTJkNPglyJJrcnPiOCwYVW/xCUUr6u8=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-ebvIAf+P8lD3YoXApK5qWYg6ON+jdlehi+6QdhRMxKA=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-SzyMSOweWPaEVD9AvCYGU9/n+VsntDktrJMZQhkJ9nM=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
