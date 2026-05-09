# snapshot package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-X8Hm+ExfRHIX6NUYZg6QNUFFJbhx+JNuKzgwyy5XUjQ=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-HH1K6ackBJL74SBnfZREhS4vSoOjILQOElukfZIDmsQ=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-KrTpITuSQFC+uemQc/HcjlqeiVgrIFgjXTAEkutRVx4=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-GQ9W6lmzL/8cywCup5iqLiM2V53FribnLD6clIrJtDw=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-jSdcwGtcjFdpx5eaqU1tLColSGQOrJ0TLCyPxmJLPd8=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-eScoTgRTXIBYQUOzr5wmHjMuDK9DxSrtPFel/II4aDY=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
