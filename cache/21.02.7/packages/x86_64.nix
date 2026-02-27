# 21.02.7 package feeds for x86_64
{
  sha256sums = {
    errcode = 1;
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-Pxm6YVZZY5X5iKk4RAj+K/BtAkLqELTU+lB+5oY/My0=";
      name = "x86_64-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-2EaS0idLxSEudvbsq1rt+4hqLwQRKrCCN7VrPPr1EIE=";
      name = "x86_64-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-M82VwwvnnZ/o1lmiqaljuiHfvWziyh/AjZL5tvAWPF4=";
      name = "x86_64-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-7vxuzYN9TbR3WRJfpL5PYN4zM/3LWWcmocxO2G/yB1Y=";
      name = "x86_64-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-ZB7fxCNZStX6P/mJHguyOPBt9mc1UVzs0V+bw1QYx+k=";
      name = "x86_64-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
