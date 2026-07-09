# 25.12.0 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-nlhiaSFFLQByQhtWhhG0pPE/5ABPMcaoXTvkDyY6nhg=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-EnhZZWZBHF5MnxTPwVYmsXjw8KVb+cYclu7aNohtTEk=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-wZKPL3l99VcHaWEUqBaAB3VLtO4V+v0/9L5gwZC853s=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-8Zysoy6OanZwnc0dzzHIfs7mTkMevdH2D3rE3IpLs04=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-uz2oblVFAJ3ooEpAhuKu7gFBUxmFOHvE9sFi7p5CWsQ=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-ttUIe8aajYoFr8c00GX8hoWOgFF9jXnqesFrhnlKAbw=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
