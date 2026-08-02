# 24.10.6 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-Nor0T7rX4Ywc85/DVpH+AFKUJV46xikl+bZ3S3gLwbI=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-guxASTVLVZRItbTIroCJXsHEk07SsLqFYFnexgEv8nA=";
      name = "arm_cortex-a7_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-LBRs0XIzoEVieMCpwH06OfHI8/Mm92W4Vafdk3DjRdk=";
      name = "arm_cortex-a7_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-RfVvkNrQutoNpZEOma0jVnto0QpzxbZN9UIk5th7PAs=";
      name = "arm_cortex-a7_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-SCEP81YxTsRzZfBDsN8Qiceoy+LUQij1S3Jzco7pMfk=";
      name = "arm_cortex-a7_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-YEMvVAF1KoK7/uCU1papEPL25JuFzBe0031+T/MGjIA=";
      name = "arm_cortex-a7_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a7_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
