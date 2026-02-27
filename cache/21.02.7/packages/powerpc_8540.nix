# 21.02.7 package feeds for powerpc_8540
{
  sha256sums = {
    errcode = 1;
    name = "powerpc_8540-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/base/";
    sourceInfo = {
      hash = "sha256-/rnjWGZa75+rU77RoREklWah2HpR8M2g2lPwHiZfonQ=";
      name = "powerpc_8540-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/base/Packages";
    };
    packages =
      let
        p = ./powerpc_8540/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/luci/";
    sourceInfo = {
      hash = "sha256-DCWrDYqyJsMqKIumd//qZ2IfgzZGhDK5n99b3BYSJ4Q=";
      name = "powerpc_8540-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_8540/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/packages/";
    sourceInfo = {
      hash = "sha256-scCGdSM8/AQtEykVveFK+md0XFS7vqtJ/d8hatew2Oo=";
      name = "powerpc_8540-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_8540/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/routing/";
    sourceInfo = {
      hash = "sha256-5QAv0wdcnhibNTyN+o/4KMHJPvj8bn44BAczZWWZQhU=";
      name = "powerpc_8540-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_8540/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/telephony/";
    sourceInfo = {
      hash = "sha256-2tJqJkvJfy8NQGVLWNjd0sXeXuYbvs0zumCj5lum0FM=";
      name = "powerpc_8540-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_8540/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_8540/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
