# 25.12.0-rc1 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-n1OApoobJnuh16p36nxqoKJkMBs16+FXWH7uz2r0FaU=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-oiCqrm9uPRxcpwH7msikN9NVXYJEdMvVgF1P4itdLDE=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-ECS/1a94M9jNk3QE4VaIGj2LtYHgZsEAEcROD5AUHBU=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-7fBs0BHSa1muO8nRPizDxdXfdYOKULvUilNcLYzyj+o=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-LiP92Y7rooQq3QZXj8BxkajV4SeXM2fQCOWJct8qO8o=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-NwcVna7Yi9mMba0op5tvS4cjlf7m417XA7iAq99qxS8=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
