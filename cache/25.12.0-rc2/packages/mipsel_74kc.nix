# 25.12.0-rc2 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-azR2jTfvW8QPhChcbq1R6OeU5Dt/1RHRkCtXc4qXdn4=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-H1Z+jvubOGbzQSoMdvtBh5+czDO5WvGlWDCXus39ngg=";
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
      hash = "sha256-fPFfIUVSbretnB5x8pRlHSqE5J9iiCDvg6/3Q0RKVUE=";
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
      hash = "sha256-6QNLpZTtEqa44UUKN0XdTuMX31juv3/XhzELj8Zmb9E=";
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
      hash = "sha256-+NC0st6g4VGoZjTEpVc5Mdt/DTERPQ+C+R0e2YVxwoA=";
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
      hash = "sha256-5pbuLlTXpvPQTSUOmafIfPsrEYxFvvnZPYLaV2QwMx0=";
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
