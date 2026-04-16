# 25.12.0-rc2 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-AdbRNdICd7XdgtYYvWECbrHrnW/9CYlqrgUuUda/jRI=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-XEkmaht0OEK/y3fC10fjapcbRcyZ/lWuZ950PD74kDo=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-nDZSBWGeTSe+wRZW0nHsWgqyV9KokgDpbo8T0CCHlL4=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-ezRu20dNzONS1ecyRVE3is2881sox+HsjeHWOeTH3nI=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-a2za3ryBdUiV8TXAxfOeO3WdWfOVLSbSetpJZy6Avrc=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-kk2NQZbg7wUKnO5t5hDo2ShEw7kMishkqC92azWbfFU=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
