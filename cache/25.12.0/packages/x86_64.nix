# 25.12.0 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-x0SNIEBAOMwyABvjo89Ymsb7yMdgyZ8aLtQR9DQUF/I=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-NvdMB45KwH3MWVW+2Id/CYllmNMuEa25yCW4nZMIMxg=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-WBJVX/LBs8fhmUgBdullwlOI/gPWbTpGqTOd032mExo=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-Jb6xPUDIgEpiS7FeVcJdTP/q7nRxP1DdUrAJfVy4TIc=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-uQ8xVNnfmKi9LMqp1iF2y4kWqNUPjNWA6xPDbHCYoRo=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-KUW1Ohu3gnpGLxCS048zx/7NyzlMSbe65V/VDPpX+eA=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
