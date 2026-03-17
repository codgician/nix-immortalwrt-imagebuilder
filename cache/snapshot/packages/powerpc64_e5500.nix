# snapshot package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-cl89+q93bqTCX+jx2f6Nmihn9Et1DYHRHzKJhf34kF8=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-pJTB1O53DIePLGC1ZgCDxKxIn4CoroxHoWLloxU7hdQ=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-KJ38MlbxeGIsvdr1kgfSiTbvtWK9I3/CDxcYcYz85XQ=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-XW6x7ycZdGpg+UcQFrMOD4Zj5h8q79BCHHM55CZoILI=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-/dcB3nhJXaoMxM4lcv76e7GYoAWOQAZQugwagJEpvb8=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-sRfTKm70HvH53mqhmqo53BBXkqdu3+Wz/AQSZEFwS6I=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
