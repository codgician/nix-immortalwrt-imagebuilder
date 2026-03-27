# 25.12.0-rc1 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-gKV+3GaRoSvBXUmh2e22jReA+M0zg6Q2J9MipZMEoy4=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-o0X2BuDZpiyir8UVy0vb3FY00JXmKc4WM1Xbihlj8hs=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-A5QXiuz49N7aZ4Ew+JiVj2+lllVwIgN8kbC+sYXYFy4=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-FQAY8F5/l+feVqGBfpspYyIHeoYziC3CkUqZ7+8ipyQ=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-bAh+tue8DM3wuA3f9CTxzoN/C9aqYfrfeaLmLp96U1I=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-iY1w3B3J+ktn2IiZ1omPiOoPXkYPjnePHZUAbrW+6Zs=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
