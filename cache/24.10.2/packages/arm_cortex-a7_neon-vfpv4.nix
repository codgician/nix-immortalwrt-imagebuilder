# 24.10.2 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-QnQC1KT9p9L5lpksgO3fJ/ryVEqjXqzIuicjaKsaoL4=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-ktu/LoVhlB4WLccooNhKpi66GXVU69RYZsEzRVhqc+0=";
      name = "arm_cortex-a7_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-K0YlVzLRqzKePcOfJd3f3cn3/gMe8TEFy56SYOm+DIs=";
      name = "arm_cortex-a7_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-odn+f04U9mK2XjdY2Vi3nEWHeRuToBXEBUS1on05y44=";
      name = "arm_cortex-a7_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-aOmL1+/zgQF5i1zjVCdwTYnbxFJO9NwXvErQwa+geE0=";
      name = "arm_cortex-a7_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-tPuOUy/Nz982Dfk6+TzM8+LCbwxDTGpbT4ZRH76FBjs=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a7_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
