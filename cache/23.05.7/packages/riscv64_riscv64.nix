# 23.05.7 package feeds for riscv64_riscv64
{
  sha256sums = {
    hash = "sha256-aF/u2LPG9pD+mf6x3TPFUvGRl2Ct44XI61hQSR86G5Y=";
    name = "riscv64_riscv64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/base/";
    sourceInfo = {
      hash = "sha256-SnLFMXaxvJFz3nV6SZiyZNkDva51RZV3Dm66aBaIggU=";
      name = "riscv64_riscv64-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/base/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/luci/";
    sourceInfo = {
      hash = "sha256-YFpzlsVbGGMxZH9c3CziOKsA5izvDm4t6y5ocCd21k4=";
      name = "riscv64_riscv64-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/luci/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/packages/";
    sourceInfo = {
      hash = "sha256-o0K2w0u4rxrPxEv5aG7BdajgSiEv7dkvwsFqHUg7Nuc=";
      name = "riscv64_riscv64-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/packages/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/routing/";
    sourceInfo = {
      hash = "sha256-mkeNEDnzxNGE8s0ty453/8oVzDcQ1CugOGY/PpRSCcI=";
      name = "riscv64_riscv64-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/routing/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/telephony/";
    sourceInfo = {
      hash = "sha256-UfVlWTgNgSEc/mAf5lZLhnl2a+DF4SRGy63S0HGDXQY=";
      name = "riscv64_riscv64-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/riscv64_riscv64/telephony/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
