# 25.12.0-rc1 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-A3a/XpZMOqi6Y+biQFJD4dtTRSMZ2304KfYiUF3LOS4=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-ASHds6+qX9lCeOKs/Ejlky/9A/AGSgXQ7lxhxqUERBM=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-I8KnayH5EeWMNQY6ugQe3pNsYT4JT+Jc+Ms1tAWjgUc=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-xeoyDBaOf5jKmznt4RvD7e6vHUgx3WxJSzEsHLqu79Q=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-Y2j6Ynhvfao/7ohvs/sY7/qtgeljBN0pUFBVYLClSdM=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-6A2zXTf+NEXvJ23bPA1Wn9a9m5lnR+PQewq1ejSWJMA=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
