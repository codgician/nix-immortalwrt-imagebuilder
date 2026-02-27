# 24.10.5 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-VE8AtTJx3aGaJrZetVU0vxj4CSTW1AIvW1ni1DAwY7Q=";
    name = "mips_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-yphlHxTu8PYy2cvtHqcySwHYV9CoiiuOLhgQ5r03C6E=";
      name = "mips_24kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-xeqoRt3DOSeh/dHOTkWH08R1m0YDg/YzdSkvZgR06hE=";
      name = "mips_24kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-dhiJSAt6U+wvuC9RrnQ17tlpHhK7h2HYaauwn4TTh+0=";
      name = "mips_24kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-pJHLW3SCCBTvqOX5FOd52mM50rOJU3WUM8fRF928pcc=";
      name = "mips_24kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-nNUaX7WU/Kab26/Jm2LWYZQXb/5mTi01lmHfJq0Vz2s=";
      name = "mips_24kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
