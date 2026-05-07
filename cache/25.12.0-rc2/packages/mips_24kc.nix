# 25.12.0-rc2 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-wQQJp+SVn9xg4xtzW2yHNa87jZyVpgCiUwDkUKdM32I=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-sqG5mpOodgwQ9irXK7ZiNZBgZWU+RQJy1AflGqI0mdY=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-ygkiJopSPZVYnfBMFNx5BolQwu7y+w9x/sk9x63rDEs=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-HyOGnhu2pVVfTdUs92k3RLPt0SzbIEoFMRkk2GhbfuY=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-HvExAMtu6/ZKVFGpAFXkaOIgvgYB5va6w8TehENDI3Y=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-RAUYfpZiMPF8h+PGEOaOYw8/2ZEmUvv/HnuYyK7Ez8g=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
