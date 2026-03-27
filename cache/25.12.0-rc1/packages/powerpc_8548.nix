# 25.12.0-rc1 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-yAsSwVGF5J52QkoGF3s+jUG9ju8wlDjXBuDNonuP264=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-gTEeEnnx5cZclCr/9EwKITaGea1e1CTxtNvly+RGTes=";
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
      hash = "sha256-WVXLttlDDjHsUlp/2x1J92nsDJmmzELt7JVCTiLc2BU=";
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
      hash = "sha256-XGO2DIHllKCu51jcwUTWf3L+gy3lvIVz0cVg6nC4M3c=";
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
      hash = "sha256-Un4Mzw4LwWmyMVpDw+/btTgOo1l50hs7wx6RtOnVrLA=";
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
      hash = "sha256-p2t4a8UpFbLzbzhEKMsQgF9a1j8k1SD0WMc3SAsJvw0=";
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
