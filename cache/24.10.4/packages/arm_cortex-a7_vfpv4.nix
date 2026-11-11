# 24.10.4 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-llbmkuwqVgMYH4fntEpzekxdaU1FgzQYJKW2uEqaXkw=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-mnGDX23JylYyF2uCzMJObHKDivySVSayCJP4VftuYY0=";
      name = "arm_cortex-a7_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-9qwPcbupo0c+1MD8tsg2c8cdUbUj53Z49/Kd+Z2umhI=";
      name = "arm_cortex-a7_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-lYPpmPqswOQNUPzEmmghL3SlfUM2DULZb/NlbfP25EU=";
      name = "arm_cortex-a7_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-wjPszbdhVoQIP0PKWbuRQKP23GARicnAYlLfQwvusXE=";
      name = "arm_cortex-a7_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-62Dt6Fe+cOYC0RZnY3Uyp9CvJaeFX+/yh7kw/aQSL04=";
      name = "arm_cortex-a7_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
