# snapshot package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-bZoFwnKzA00SAwm1pPmfGYUdWr6t2B/wQXk2a6Jqkok=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-pCYHqO2P/wSzEwXGfftt1ehEkvzFDrxT2uriq3jCBus=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-1OHBcCj1rTrl2xmrBlBG/p+T2ps7MEF14QcIOVsiBYc=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-tn9TDQWvuacne1bZXy36XdXq+Tbi7ru1pUemSw6MSJo=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-X5hitBdY/lI6Nczc7+y5WM+VlsREjE55GAC0g1gOrLg=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-GGHYKlcEPyqxYVWQ7qW1ZfkUESWEDYV0P7QuU2l8hO8=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
