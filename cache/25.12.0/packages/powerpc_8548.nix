# 25.12.0 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-ukOM6EaheKmQYEjQx7FMiRKHVFbFl+qjdJqQTBQV1Ks=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-kh4eYiae9+jES2fuctqoXpu/lsTRDYPY5iw7flMQe3o=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-AZWjxEJTnsUPNWsT8E5fGpLxcv+vUOJbsieo+HnOVag=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-KcfMCsnnPQOysidaFvZFB+VGnXMvWE0LpNTbSQN1v/E=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-XYFHoiXP0yhOFAClfmFIDRm8wxlBY4PtwmZP0bXBKhM=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-8U2hzsN6wV/cthb75iHtLPA4NSTTVz7KKqVYeiTtSn4=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
