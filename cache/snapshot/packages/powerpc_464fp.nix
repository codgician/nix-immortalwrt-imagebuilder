# snapshot package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-hEhk/2mXQxxWPzVS2InPBHUZF76RWMCfEX5p624SMFQ=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-okYJdWSVxk4qO8bvY+DlHIygI5+/yJxoEEV/5yIpjM0=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-N9mAsVzuDDBwZS20bREJUVNICxhhZudAQzNBrZwiRzo=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-lDZCyBO9+jCHUfmxZsaOhD4nVLSKik+d+ZGwoelb2jU=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-U5HY7DJvsVPPTqukHWnMK2uxCkCUM9MTXlneYpwBIHE=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-CdxyQaTLlaI3a+G1R8QCBQF6fmFLplxZ06aUDQodnIY=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
