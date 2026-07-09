# 25.12.0 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-DylpGHfXd1ZSLV/5Qr5FNbFMg8e+5pmxDGWQu+rNzCo=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-2A7ERrNEqJZlp2vKYAJ64JBuYgu7AzK1trQY6/kzpeU=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-A0mPQxHKTaIqNMP2udeVx4lsfZAvgQiz1lAs8qezS9Q=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-aTuw6OjSxu5fPc/SCbgCcveRsElZfkgzYh08Kv/BaSM=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-6Y64ZyahCcXklXvqjVSgWGOZffZSIsUICBk5otBju0I=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-/vG+8QrmxRghFdELOwVORRj2MlvVRc02xRXHfsNb7og=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
