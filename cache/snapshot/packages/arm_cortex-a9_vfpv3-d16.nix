# snapshot package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-IAJcA3n+U+15RBAE/AQQ2fAJ/5LYHtTwh+VOkQGPZ3k=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-jQhhjHGkFMT9wZK1PxJqdolMc8zhccq2HWLEJuaiXY0=";
      name = "arm_cortex-a9_vfpv3-d16-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/luci/";
    sourceInfo = {
      hash = "sha256-s3OmGdFuIlt38USySIpOKFGo9NWy2uynsJgvfYOOcuE=";
      name = "arm_cortex-a9_vfpv3-d16-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/packages/";
    sourceInfo = {
      hash = "sha256-mpReHwkOChb5gFw9y0CYkU7ci+H/BTLN2Tf0TGhk1Ug=";
      name = "arm_cortex-a9_vfpv3-d16-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/routing/";
    sourceInfo = {
      hash = "sha256-ZIwvkwWa4O3T7Ig/O3fP/owAstjQqi2pkvZfQhsUK7s=";
      name = "arm_cortex-a9_vfpv3-d16-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/telephony/";
    sourceInfo = {
      hash = "sha256-CbysmA14W4zKde10a1rpQ/ag1XCBfvEeuApm8iHVYB0=";
      name = "arm_cortex-a9_vfpv3-d16-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_vfpv3-d16/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
