# 24.10.5 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-OdFYUZqmVWUWEv2c6P5Bgnwe51/y6n2THwIDV0Pyo/s=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-8I0r6u+E+qXjahGKlCmsUAPVQwDDRqvUuNYlfeS3WFQ=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-ooeGy63d+e3bzKEVMVwxMsZ7e+LhdU4KPhVooIUxRos=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-fmpjEuF6Km2ST6nqpadrU+YKB1sknldQJkHYwqxcHdA=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-x1NTndeoKPvKgZcXNopJ/At4112RM4/dYq9DNf8/Rg4=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-zxYyKbCEUgVmFYnKrD7i9F2KDc6KKy1ayBBaM/Jdz18=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
