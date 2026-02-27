# 23.05.7 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-127qknVWXrTijGnduYULleq4BarsQ05UgtU+CZauzuA=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-GlE2TTurtqX1fSmEJy0yJPDfQ4bMJ5oewAHzaeQSLXg=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-Yo9gkJPXdek6kWd+miGtpTqxhYux7QDLLDXPa3tuBks=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-EuCsRhyQEdFWm4ODYADLxMoaIwntAC2Ue7LtWfbyYss=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-gWcvteiM3/DFUVkQUGeO+swL1gOQQECIADMK+v0I3gg=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-SJ64+kXhF95AoBg1Z3cwIDXhAUHkoOcTKgJ2rdU6M/w=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
