# snapshot package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-LYhOH17XqZTI13kV5vinmG79EvpLQuvGr6L3V14vUrI=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-JvH28cuAhzSS4Tghb5Ohlx0N0+vuxlSEUQVvsxYhsNQ=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-DINn9CgoKPp5ETkkGt7jSiL271ixJU1CutHtke+rjrE=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-zeBXxGTHv6QwRrH7UNMrKSkQ8YdZd/lZqNZdwyk+Yio=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-PPRcBtIOGZ6UUYJN8ziYWwcKFcAdNtfJKqOsDZXdUAU=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-LnslwVLbAOslI2iHQHx4Zxz90d2ECpq3Z800Tv924LU=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
