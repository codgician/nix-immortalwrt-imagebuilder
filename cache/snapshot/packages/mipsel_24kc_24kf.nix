# snapshot package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-G2p439DBOEY3VG2xwPfpAWdNfN4HdF79TeBrCdH1RNw=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-Am9u13QbkBPFwxtKs4FiGHLmHgn3KTaEJGJXcAFD82k=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-jStHog/adXZkQpOf379AoZaTTjDCPHTvQdf+3dXPOYI=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-oAqSplWkXokYm5X+TMX7uDzyyOrFNP5d2+WgSeA20sc=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-vdr2E0tY0URX/aup79wq2ORKj0H0rvnmX2XfBiXUgYw=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-vua8cRZG5wRQ1oJlsW7HaRUVDwa0nj8XdXPH7452cKw=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
