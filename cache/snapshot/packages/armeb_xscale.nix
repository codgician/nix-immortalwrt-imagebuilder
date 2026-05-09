# snapshot package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-nCwRcKhEyRLcVVEIi9JWElKiHvd7Bvqa7wKWZPZ6lXk=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-BG4PhjzCt8o18foWgDWNwhtglXVwsQGPn+gxG+it84I=";
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
      hash = "sha256-EK2MP2GotwhG0UfHyH3hk+A3Oa3iCQyipUvdkYPk4Ho=";
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
      hash = "sha256-nAH0aqado6k3AfLTDuzAjxshcapD3Xt0DIi5WIlgMQQ=";
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
      hash = "sha256-UKq4KK9LkfDUI9sYFGCRfr6nhJ1ISO0fBKgCD4rjmGs=";
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
      hash = "sha256-bCBGzadQx6uTEUdkvluhYTmkuCxrnIJJIutALOHyXnI=";
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
