# 25.12.0-rc1 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-4tAEU6rTVZH/6BLfw0g8wTmFDXwkHBssjAcNIfYhB1A=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-JKycHwESNIEuE9MHC0b5CspLjo7PHZBO4AsssGW8anc=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-wQGEjNPNquvYDRJAcPVRNDpNDoryaiI6kIXunkbaq54=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-8gWLv+/rYH80VH4bDxfp3fbaRGrTq3Q1uzJUWlYG6lw=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-xqRz5hNjH6X4ZO6CROJGF/k1XfoK+omp405uU02uU4g=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-V8mJVEsDDJUsg9Tevv+KreWm46ZfMdtV6zmOdrZt+hQ=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
