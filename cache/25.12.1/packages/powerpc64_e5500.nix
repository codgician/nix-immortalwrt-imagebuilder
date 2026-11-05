# 25.12.1 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-hgU1bK7c0E2MmsL6ZbFIp3y15sIJkeXaJALxjQnBbiE=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-u++T3B+/14d5tixxKjigjy305TC7V0yYa0NFlLxORNw=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-7MXwFSy+K+qgb4fIHhTiTaX8iqjzaJ76S1LrX45lDsA=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-B8vgxntQydOwNKaHeDVW0ow3KCGphQzmtPhoZg4k6/o=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-k8BJcHF1b+38QUDj7pfFRg9Tz9VQ4/ncKd1PzsoFB/o=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-9eIcyGsh/hwlfbQHM1SCRzNJI7fDpYFO53ZoClbNHJ8=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
