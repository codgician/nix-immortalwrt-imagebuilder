# snapshot package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-RO0636Mi6SmDamVtYGFZ0CCoF5ItuSbny/iTHB/oFSg=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-F5qk/sS3uUMmY/utFqJH+4knwR7+MaHx6Ru49ji22pk=";
      name = "arm_cortex-a7_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-pzMP08DPynDOL05nyVOmfy8qbefrEdeQT7uXRr2Rx+U=";
      name = "arm_cortex-a7_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-JgGrMgiXypw6USlygemk6uDG7iK5GMzKs6Xu1jg1C30=";
      name = "arm_cortex-a7_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-hYS2jbzUNdmgUwbZES0PfSyB9yEdlPWcAw9+CIR36Ks=";
      name = "arm_cortex-a7_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-zK1nw+8JF/gwitWIkF4nhms1CtBhxzdneDsm8t2ik3E=";
      name = "arm_cortex-a7_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
