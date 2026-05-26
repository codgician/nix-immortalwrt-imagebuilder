# 25.12.0 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-Km0r/Yn/jAsS2H2BAiql5rzYE/ftyYLTpTKNzEmk49U=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-NN+L44h0pgMT/0r443auDQE8WPnJeHcPTN/3wOJCUv4=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-wM8zpDFxyhCSI5SSB/U0Va7PfU20D6PRyECYZ4Jw0AE=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-U7GoHiyxpng7Q4+ibdAH1s2VfWBnhhtSuQeXLGHmLaE=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-bXdURgBC1odOZ40r99WbctHH924r25hMcufq0hEYOgM=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-SLsG4FAS4TUFvB8B5rnso6asXgRHyERgnXvC2MNLX/4=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
