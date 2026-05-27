# snapshot package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-lQnEiC/hQxfexn5LYM7Vi9dIw251Dba4SmHo7ICJd3s=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-REO4Fb9VWeE2b6AQm9+uPQnNOCpEsN+zQuGtr44Rwf0=";
      name = "arm_cortex-a5_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-1myI69Gofh9VidVlSTf4me37Kk3bYygjw6ZeZPiCgcY=";
      name = "arm_cortex-a5_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-hWY1G2vLKxKVO06xNzOm7Pb5IaXx2lIXFJfrdXx3EIk=";
      name = "arm_cortex-a5_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-+BILE1I1mMnsucP5XC1756vW9cjjTg6ILGAjh4hkuCU=";
      name = "arm_cortex-a5_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-46Rzg8s+KE23gsyhCd0D3B0NYPuwsbUljMWtnPMM95E=";
      name = "arm_cortex-a5_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a5_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
