# 25.12.1 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-bkGF3Pi+jEBbV31MPQZs3zyhJryKoC19trMp7PIBYdM=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-F72b/TSrqbKz/x/DrYlwGjWN5Ra94TEdXqQ1ewjL7/4=";
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
      hash = "sha256-NMOfSgzXfnyFNVtyBZZJPRVO/dvGs4C09YcC2USI4hw=";
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
      hash = "sha256-ePwX4m0cD4xRcfp9f3htbjTJnfknUj1aPc6lun/gR/k=";
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
      hash = "sha256-Wf7xDqMRmSLmpHXao4Czqn7mbQy++hKT2UyuU8AhMJo=";
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
      hash = "sha256-7M2wr1VBt+YzWnClfIF0PpAid403auK130vE8VfXgco=";
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
