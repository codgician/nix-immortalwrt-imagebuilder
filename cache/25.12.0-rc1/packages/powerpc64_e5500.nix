# 25.12.0-rc1 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-PHAwgZSZUUR99WKPuPtM61e6tU7sXkpOsHKRkouvmLA=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-dO58yKmr5KILE9/YlfTuSI0XHyAg+QC1TTKnq48AXhI=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-mOaL0KVbU3EgzCqHI0eHx8V1rjvxdZETWtY0XCEwzy4=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-uVM21oY4AzPxSMnWcO3rQbqxQplMJChogAD/W+dlQMI=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-Ot5I8Mpn4AehYMaagI3zn4mDE2IvHtRWbhZoAFnyy2Q=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-eEyERDzeqeaKSNI95jME61ghynRNdr6dyk0FpRxBpLw=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
