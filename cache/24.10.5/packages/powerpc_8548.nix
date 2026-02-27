# 24.10.5 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-hECp11e0RpkgaeomCk0w12zy9en7GQpdyRCSp7D8JWI=";
    name = "powerpc_8548-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-9pNV7EHhlPIeeNcpyGvf1tKy6Jx0HMD1bb3NdwEEvI4=";
      name = "powerpc_8548-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/base/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-MFcV4hSTE3Noq2l9VqvIwy2QzGnFRwWNiODSmHQ9B6w=";
      name = "powerpc_8548-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-o/dfXHWCPkvGaK2iex9aEk9WW2npX4ru/QaFM/8nqGk=";
      name = "powerpc_8548-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-Z0FCXmINm7yGzfmDi4hq+Pfb1s2vc3ze9YEXFQ3QKhU=";
      name = "powerpc_8548-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-YVAW1We5ZVr9uM8esAJA62k39PDbgZyWG9/GL961l/k=";
      name = "powerpc_8548-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_8548/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
