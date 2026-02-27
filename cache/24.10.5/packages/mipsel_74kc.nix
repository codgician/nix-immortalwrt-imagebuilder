# 24.10.5 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-zR9nNpEuipb5zk2MtdQ9Bb+iafGDV7s0sfbmmri8RGc=";
    name = "mipsel_74kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-UM12CY/IxbTsFn1oU23Q76rs4y0Y+hFSY67rxLySZw4=";
      name = "mipsel_74kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-MnNGncvADCWpQpbgd9jXZEelDU4PRakGljEegkuWY8Q=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-xCcGuNT5bWPh46O1zw871HexxBqiYuw+NPECJt/BK94=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-teRqwjF0uchajV6BWAJT5PdbvpKbe4ELSINujD3cMQE=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-wIQBrCsR0XdJ4v/vYubJvqXaZRfrCSLYuVDV9tctyys=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
