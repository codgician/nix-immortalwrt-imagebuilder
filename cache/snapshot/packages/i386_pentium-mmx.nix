# snapshot package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-lclRobgwrlMH1hpX976C8p9LQKZgUs4yNJIn/zcvH9g=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-Ipnx98U8w1NeRx78TZ2auxxfJD3Y5D6LKyoLXwskLeY=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-MXBh3g3/uwmeng8EZxkXnBYQUV5aMRn0DumaEqBaRAY=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-6FP5qL0dSeG1wnCIGeJSrhU8khnAy6PJSWkZm5eYnoY=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-0iSmoJ2lAjbMjuyNIwxf0YNE83t51pDH1DQBTBRXCZw=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-JpIBhyPYggwtyEHM3KmSibBECgWkPbLySS2+e3nhaaM=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
