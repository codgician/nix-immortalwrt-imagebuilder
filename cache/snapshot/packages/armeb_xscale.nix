# snapshot package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-JtSAJ+bmUogn9O8u92hOatZ8EpJwYyyXOi7Sj/75BO0=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-ZhHc4Q5zEDyDe2oJY2LEJcjgR680sKl6CAFGLCm+dOw=";
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
      hash = "sha256-S2oCXUZnQ1Ki4Kv4nJXRCr8R5ioihzw43zINiHXK9gQ=";
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
      hash = "sha256-yNoYVs5BwsojeJiXxJ/SncyGNOx/xBAhCygyZ+Rs7/g=";
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
      hash = "sha256-t82nDwgl9rX6IORN8YvL9ulhAbDMH5uRIq0xb3oJqH8=";
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
      hash = "sha256-uSZaOrfDnUA5sMeIdIvxyZCNViNPj0WI7pzCm4WeTCI=";
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
