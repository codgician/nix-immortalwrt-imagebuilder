# 25.12.0 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-rU5uHD88vv0a+xYDrUfhQk1O5Ds95MOiBsMWfmDuQSE=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-0d6vEI2U+wTrCljqZ7cZ2Fpdc2eHODEyMFxzsa2SIfM=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-P0Dtz/QzNJxr6lPK6e9o9Ou72Ki/2EhsMhwv1JvuKLg=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-btLUNeZZUYOjPA0ghpiUTUMGnTabRS9xfcuIrKBU3GI=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-tsbrCWYYUoIqVlzx+qls77ULezrvCSCQPf0IhaDKsZQ=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-yWmAY1HlsoQmaV8PMxcrkGzrYCADK4qUIPO/t0FA208=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
