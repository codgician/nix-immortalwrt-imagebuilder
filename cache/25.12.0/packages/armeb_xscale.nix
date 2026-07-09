# 25.12.0 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-KwgXden9Jh40ekt+mS4uBox9B4pldRuHWio8C7Rl4HM=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-y2N3w9Af6uJ/qKsBl1033sVYCQ6bpGj3VNLZ8TDqkkg=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-nCKZG5aZU9KD2is8ze5TwBJCYZoG3meEHQPqKaM+b/c=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-zWioCyjkMcqADyr2ODckzHV1h8ROR4RmTfNDk4PwYiw=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-3lDJcdq5/7QyD1BS/PjsoZBr+HyEVIlAFA/7URHLcdQ=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-86wVZk7hGJwZqMVkR52qssrJsDREYDcXOiS7kBxmnUs=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
