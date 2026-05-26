# 25.12.0 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-8bTrUvUVAusG48YHCNawqUcVJ8m+vWnMBPwb7UGXJXs=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-XtuW+8IJxgD0ul4mv0lUOxkmTn+1KyLqJ39IW8Z0ToQ=";
      name = "arm_cortex-a7_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-1Fzz7za6eYxUpAp3NIzzrkeE0wWrJguO+vJWyP7oXog=";
      name = "arm_cortex-a7_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-o4ZG8JafhmFZve7FAJSQvs08zxNUJ6fXer4HGNsgKuc=";
      name = "arm_cortex-a7_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-+GZq1zrJ/m0Oydy3yoI3ozhosywFyiOOJlZg2jzjk5c=";
      name = "arm_cortex-a7_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-QqMxr0NiE54Wts0RONpLdS5FGNEqxCM74/DCSyHATUU=";
      name = "arm_cortex-a7_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
