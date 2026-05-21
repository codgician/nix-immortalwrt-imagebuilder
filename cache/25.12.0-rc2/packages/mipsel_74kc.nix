# 25.12.0-rc2 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-h/6RX9C82u0AZkHzQWgM2ndavhEp1i6wRZUgCifSark=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-geLxeNrb2ADPeCoiixIUEQRvtSuN0fZzQQ1qPVFzvbE=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-FPo5rYJAQdOTE3drceRUIP8ARWx5oMpOYuNiR0RdKjc=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-w5tp2Qa8lvjvtIMsGfjST6k/SUnRPkKo3Wv3PUrv+VA=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-2xhtlK/un6OJ3te6aHzRTgJLDBB6zPd5RwkM/nY0FX0=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-pajkH4oaLAoHoLOb1+sqX3M1XZ5ncvsVGoI+L5l0AeA=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
