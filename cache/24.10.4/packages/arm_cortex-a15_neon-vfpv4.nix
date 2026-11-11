# 24.10.4 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-mb+psIyuD+LuTh+HWAPx+BxPdSVL/czjbuMPcr+DAcM=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-173BB4zD549RNwLiiwHcC3wYx/bs2xnXU4Gxz6/lbpE=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-1GeNiYD9UUoMMnVrUO57kS2D7u479W67ZYEo6gv81KQ=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-xhvbfHSEydafp0CXeupNRtVLo7ngcFPi+lQeK/yeY00=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-jApeJxNR5TJ4vp0yyCbfR8rNfdrzdL/bXCncwFbJboU=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-OCSr8rahd0xIsU6bpaKqLBa9FmLk9XdCKdL8Ag7DijE=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
