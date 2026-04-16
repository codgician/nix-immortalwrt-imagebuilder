# 25.12.0-rc2 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-qwX/5tyzgDt5CPdTt/3MPGr1gEkjrxvMrp7I4otrnRY=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-wZUBjEeT7gXI+n6+tcQhCPEd5ed52eO8Pdoa9C68+jY=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-k6cRSSD3tjW6UsLieaAFkj+5CY7w2FgQniOF8xC3M1I=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-4NwhPrG07+4FIZlIvlhbOeU/NPWxX41PuSxpioHOjds=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-sSoDE3YBa1fbxaoem0D2jkFv1itlF8VGyQqvczjvkd4=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-jO1OPtDs8K7I7vmjHQ+SqgisbuMbYrT87Sl4uGF6h1c=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
