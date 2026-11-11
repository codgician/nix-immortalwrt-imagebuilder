# 24.10.3 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-qNeVMNn19znj6zUYJfTO46zSg7B7P5J78TZ5+LFTWqU=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-yyWf6zitBo6pPnpnXCbVodmobOI82XZklcJetch/wzU=";
      name = "arm_cortex-a7_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-kl1L0imJ3rQjXvRFVe75LR5V/d20OBE+WtKgIMEtN6g=";
      name = "arm_cortex-a7_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-7M1xEWA6H/9MAA9yrRQS+dgPw5DlLQ+5jyawigfUeb8=";
      name = "arm_cortex-a7_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-/68fOU9PBvrXoVor2i7Zq5FlYEnUT2wKlgfyJGx/7GU=";
      name = "arm_cortex-a7_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-vrNGGM6S0JqV4UBvwA0eYP4XiQOcLgIkrjbtAFS9cEY=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
