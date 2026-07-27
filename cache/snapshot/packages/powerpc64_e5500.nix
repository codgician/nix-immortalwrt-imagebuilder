# snapshot package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-KWS/mQ6xRctIQhmMUewFMy3dK33RJQ1AYY+IkfUD8As=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-g88W+dPDcDz/7fXmJASXUTfaWcTBAhy+UDWG55uAYYI=";
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
      hash = "sha256-TrBFly0SvRb0hndCTCGEI/EfayR9rIO1V38tnDINooY=";
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
      hash = "sha256-LSV61Ky/zvSJciAnV72P4Y0oVZyKYfYDaNFC8cj2Z4Y=";
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
      hash = "sha256-KptJOb//CBpSZfsLn3C61thB15e3alpseunFm2qNF5Y=";
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
      hash = "sha256-oLaaKn2fzCmoKWJF3F8sNAm6dpO4qZH5+5DPPh5glSY=";
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
