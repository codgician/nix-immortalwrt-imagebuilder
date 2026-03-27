# 25.12.0-rc1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-Rr3iu7Ho7o9kF5+z49/XBD8J9wxgnrb8sQcTuPu1Zbo=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-U/d+7z13dUGQ85MxyMr/6RwLHTDZBubSKQBRyIZp/Vw=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-8SXvMKK9qbm0MjOsEPmQHgKMSxz05wavU8xVyoFEJDY=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-UOl0Sn4g3JvCubqAyt60TNdTC3/Q5+ka+JsVmJDPoKE=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-/38bf+oKAFcPhzmUewvWR9gOfvhqVrCIoPd2JMiCbkU=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-n028itVBIWNZhn8hxsHW8g2WCZKw+EhQWENYVa3X1/Q=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
