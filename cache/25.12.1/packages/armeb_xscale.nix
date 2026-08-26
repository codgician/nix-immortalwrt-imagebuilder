# 25.12.1 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-2I6eX2y0PE55UFgc7kDEyFxI38xqR9zQLlwv0wHuiXU=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-jZq0ZmYnRjvuEZHp/59bms/Q9RASgjiTvUjRLdKiH6o=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-PxGPTMuBzvXBkF8ZF2NVUp0vKIUPpClENJ2pgWxmEHM=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-BwiaA1YI9xfdqUiIqP10nIr1+t3zRKSTv/VzQstn3jc=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-yFyCZfOLwWxFQt9XllU0r5Qao3BdIfYN0WYFBJCTzAs=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-bLd3p+5w2P2srENhsVnMmGvIVRVRvDIqUCpUgRvUVr4=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
