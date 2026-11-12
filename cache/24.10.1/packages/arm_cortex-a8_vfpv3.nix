# 24.10.1 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-mMtMiXLRh8aK9MyTKqrZCICMnvkxms8ozdBOuxByQU4=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-G7l1h+hPkpQJM1NBqPhpIifrMTDRgVtaUsKcWm+Mdso=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-LyKDrYr3yOjoW6DutuduZkcuMYy39dHGMBhxDeerplE=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-BNDNbN6FAltiIsAriVjyiCR2bhUacF8E1t6KSzOqYKs=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-nycyh+H8a4gOy5bS5fquZXFzxSwkqNg2Fankj+44f5M=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-T1XjteVV+vJzrOV/zoNbAUegtJGCfmO04dmRjRG+KrA=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
