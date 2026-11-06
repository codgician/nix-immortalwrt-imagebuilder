# 25.12.0 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-eB6BO2YAYoYPt19KS1ko2KuLyIEyVHcZb2yOlSVLVY4=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-gEh/1G9Y73QyFzIbMupP0r4gxXm5xblRSeTqhSR5hA8=";
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
      hash = "sha256-OPxysE8pxDL3kP8/LLCwnhkpuL2VitaQa7+E6qvZme0=";
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
      hash = "sha256-YhOYAbzb2wkpQsqtoZiEgejbZ9Q7lgh8BJj37/ncPjM=";
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
      hash = "sha256-eka+1GaMpP/l5F8PCfkBX4tXzo8tHfn7iuA6tgec+CA=";
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
      hash = "sha256-UZeOPrnUkcpI5Xxc5XXMTGQ9cUGg5jsN4en8yQ6re5I=";
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
