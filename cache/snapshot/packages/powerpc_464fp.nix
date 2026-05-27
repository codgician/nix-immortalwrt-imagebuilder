# snapshot package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-0gi86KbN/zWlEWsmn5tm0pIrdfWiPZzO1N2o8aciu6A=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-bVlRCAq1sPOmoRRFMIChW3rFXOA/3zJG/vOeDKkBIX4=";
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
      hash = "sha256-td3xA9GNpruV0ZGVkBgDL4WJyWS1TKaBNJIk+KnCAlI=";
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
      hash = "sha256-QdWw2nCgF1f8Xg5ukT/5i6Y7DBEwy5NMC4bU3ul9Kzo=";
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
      hash = "sha256-dMLNjwWAmB3Ir+W/mfcz3/wScSS4Yyh8mRS67rta4Dw=";
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
      hash = "sha256-TSGyYjRaoNZebY8QM5XfAB4UGjFqea6LjFTPtuzvMak=";
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
