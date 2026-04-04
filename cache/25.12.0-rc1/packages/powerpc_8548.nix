# 25.12.0-rc1 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-gVK/O0qNQo4dTwBXmfGMqqRX81IMpo5plChWS68atd4=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-c3FKFMHeJBSNl8Brt5O26+K/vujCTSqxwdALH+Wv4gI=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-M/moPdvFQ/A++ytQCyGXofXORn+Jf9y65bR2FDkiDNM=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-96+rAaYWwraz9CRi3cjkgb9ZkaWOgCwqwxhU5xT6CA4=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-DODmgeXr/+tOMMuWO0ih3A0Q7bFuPZkPBobIqZXiXY8=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-VNs53dHt5LJDTzcnwUqkrkDr2MWqPYvtTtwJ4h7UneE=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
