# 21.02.7 package feeds for mipsel_24kc
{
  sha256sums = {
    errcode = 1;
    name = "mipsel_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-tFhIuddWYjq00v5b84+a8ip0geaLz4u13DSfnzLgad8=";
      name = "mipsel_24kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-tisMp5osgVgElCC8HqKY2eGxEuTOLFCLOE2VTYg0wcw=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-e8Yt4dmKg7+q2WlFEzUSFzt11TvfrfMqCppNksGlOTc=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-wC5JZQnMB6LYl5byEGSAcj1+0a6B2VUfQ+1uNXdYivY=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-G/mRqXlmZiC1fEbucdPnkq5vy2p7Mf4upOkp70hwzPs=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
