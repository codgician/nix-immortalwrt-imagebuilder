# 24.10.6 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-vadsfe2jt+kxQuV/jgVIaqu81VXCTwK08mrg/Iu7pbs=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-RQ1GJ3HvZIweBPojNDeO4Qu/kifI0lGlqh59ko+QS7M=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-vsEtnRjDyoHmR7D6ghtFxWlS7LOfA1p5SV7IMjW7gTE=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-+TMhEPamOTbj8DAmSy7dQbKVqAGC0AZ6M3hEcPBDjV8=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-yp9b5ePmEqFXxFexAce//DVIbf2MsuElwQd6gkKyjzU=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-YVFoW8uXIpcC2hsbJx7Q2pXagDZekamG2jU2IALzNic=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
