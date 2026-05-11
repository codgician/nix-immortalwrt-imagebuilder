# 24.10.0 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-tGfXSQs55hmiEVGUKUb+aUJDlDJDkoDMzl0TcuN+Y0U=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-jmfQ8XT3hOohm/9S6R2ByzlboYBKDYjuDVeSTlHptgY=";
      name = "arm_cortex-a7_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-yYdvxtEhUeS//7wYhXG8Wx2KGQGOZvn++T/3vMdMcNg=";
      name = "arm_cortex-a7_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-I5FDzspTWzLvDX3v042I21bNhstRY/wh9TDLmUx2gBo=";
      name = "arm_cortex-a7_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-S4a5xrMpVlEd1M+QzoX7dEowvtEUyRkuU7QRPWM3cGQ=";
      name = "arm_cortex-a7_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-eOwczIP3eRpB2vzZkOTv5aDMTdMh4BKVOUu25CJGHMs=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
