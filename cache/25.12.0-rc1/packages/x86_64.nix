# 25.12.0-rc1 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-NH4Im7lRUjrBZtvcQ5GN9P658kxds43EpnEpvI17xGc=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-1ltCqznkymHoox25LZsQHXZNM0LEDOJ0hV2sJqacfm4=";
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
      hash = "sha256-3jY+3bd26+eH8+YaukOUZ47MJlYsGmuKAjda1l6Jy4U=";
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
      hash = "sha256-MwBrsYsx8rCSMtHT02NF9v1CztFtBxzjf3iddAhtJnw=";
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
      hash = "sha256-HUaltY0emTu3LCSMiZwpyU9F6yNAkf74CqPmbcS0qcY=";
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
      hash = "sha256-GbPczyxzEigW8tYkFaL33PH8auz/c6PogDXyWlv0Wuc=";
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
