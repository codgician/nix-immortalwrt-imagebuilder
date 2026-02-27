# 24.10.5 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-yWhvUhzbIEixcNeHHNsb4ueWJclVxjfSBE2MRPKKVQs=";
    name = "mipsel_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-IG3IO2Tsh+N5f9e17K3KtaQKqOzW2QSBBACvDAxCkQo=";
      name = "mipsel_24kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-JtIQyW96rejxo/V/bm1yZNd8vTlig/AAHVxU54M+Oxs=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-hgzNKp4ateBIagJbHzbgOUeNkG+FoGSm2SSZpYf2wj0=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-V2/Fap6I4O8kb3xyQ26f74EetOKzdHCTETCBP2CGSrY=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-2dvGfOhZCAGf2JlxN7z9KRNWkhHAq4kH/18KJZXkZgA=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
