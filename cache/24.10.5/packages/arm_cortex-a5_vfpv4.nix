# 24.10.5 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-pvsz5hVMVW3i22dluPNKjSuZAJuurJPWulAH66DrE0E=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-cKkKj12dnEOq2ALQoyT52Ls4L1qVoncSqJAxO2UYMfc=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-DkOZ5JSTOCTTggIQfQk3EIM1Myd6ep1H+mUyFUm9HmQ=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-ScQyfGGG43Tc0But+GRD7JMPW5AM9ugdWdpRvKBxulk=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-4rKeByW6WZGlbJxlmalEx8oJ3Dq3i07Y+7kRTFRSmyA=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-jV9528PD66bd4b8trLvkIkm1ueGYAI8A14NbLx0SJiA=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
