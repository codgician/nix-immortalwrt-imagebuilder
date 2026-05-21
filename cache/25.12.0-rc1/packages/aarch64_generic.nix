# 25.12.0-rc1 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-OntJj8H7Q7hJGttd9F0xZjU1g0vU/wvUP6WvpdHmo6c=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-wKUVXhM2aL8h220/BeSq0LdBX4TvcuQ0DnU9mBxC6DY=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-aXeTZXARHVr9Mvx2IrvG8Cm5Kib1mK3bY7fdWkHg2ng=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-H/b0Mbw0SjZMIfR0wzYXGc0a1Cl06Uxz5FbtNRf5M6w=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-anmeIa4aeYnN+qW9+U/tHB1XcDFUMpDq39S4kSpoKSs=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-cb5ABGIN8xvSZzUnq6+UfHqij2mYH7D1mrv+WKU3b2Y=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
