# 24.10.5 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-vLOAmxRqGFgs+zoqbFN1INCtQ/J451A9va0aH9ft9f0=";
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-j31C2BK8Q95eaBkPI4n+Soj0DSvUzBCN4RIhumVkaI0=";
      name = "x86_64-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-wdBLhJPIryjqu0LPsv+pItwU/r2GfpFL3QlJxhEBI1o=";
      name = "x86_64-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-l96H8G8Aq+0ExSY0L5Vk3ymjnacixiXA84/kRomG8zE=";
      name = "x86_64-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-cTC+zRmRIxxSr/6RB6KXMGvayBgifCCdhYh3XrQSCzg=";
      name = "x86_64-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-dC8LKcoeh4251PuLb7ptonkPp3+XXN/FjYin4MvDAWg=";
      name = "x86_64-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
