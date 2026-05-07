# 25.12.0-rc1 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-aj27TONKeqtx8rZ41l675UkTRQ/Q6V9wG30BmeZUOys=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-w04cHT+08TpeyJH5h2hYj2oS1mBn7kKZX4FIPpm7zcc=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-NP8L0AozjWShZhiqka+jUkatKpx2tVDymBRbKGC6RdE=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-Vkdi6lGNqCpqW6D2A+ow8KU9CB/BZoDT0HxEf97Rz9Y=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-O7j7sEbIzSbVXNBYnbuiK+VAnyLzgDTdaP1PdQIpjCI=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-Bu9fJQHJPf0oL+iB4X0ypl3J1SW9xvzos4uEMKo5OZs=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
