# 24.10.1 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-cczlHY1iOPtE2eQfm9tdVSdBtJ/xRKNVBPqZVtDmNr0=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-WqwWPNjrNHllkhICCDV4yL53ZNkhaUsjA2uQalCxKkI=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-rNUEFuuFGUl0cItqdKXgAlnbTmZOJDuJ+qTMcEpi7cQ=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-/YzRokXnCbx5cngdFGamD5sFVigA5gv5JAQMKJ+BDJY=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-oexekuGLTSpbZ17tImzUgolIXNRjhNUuppJflIzd3+s=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-2cyhqCT1U4P33i5aHj/i/Q+HpAvq+NnBj4BWYhP+V+k=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
