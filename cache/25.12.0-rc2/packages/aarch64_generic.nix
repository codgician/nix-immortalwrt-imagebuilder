# 25.12.0-rc2 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-j1vaUTSA0PShcqqIh11JR062wyyBvu5//ti0zUHSkMg=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-SUOsLD8QiOYsWBXX3N11BkLMeabJ40q+JBC6F5wcGtE=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-YaX/NouzRZCgQ5J3ZITKc77WhCOe83oSF+e6y1mzcUw=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-r0m7Zo5qCecaxKPJbHwnpMMhES107lMYh0aGGMr6Lng=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-VC4eTjLFqHfY/9yhAirTZDai/ErHCdT61NdnqHkia3Q=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-+i1ArX9QAOrHlgOkWdSnmIKT1QZiFIaaaXym9qR2uxo=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
