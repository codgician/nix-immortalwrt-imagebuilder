# 25.12.1 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-bqqOINPykJhGJDBgGRpH75mSN38gSpmuHLTMbSAvOBE=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-VNv0MeYiP3sZviXHGjQKMGjTUGRBI7IdQSm09cYlSXo=";
      name = "arm_cortex-a7_neon-vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-yHgKlC0I0TNvOtMraPfI6BQG1MQ38RuU5aG1t1Piz+o=";
      name = "arm_cortex-a7_neon-vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-WiZLasRApew/nLow+CdVuHyW+fvS8mZNpMJwii3ecpg=";
      name = "arm_cortex-a7_neon-vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-5h4KukYcvH7nYRSVs9vsl0UzOXCFJdC9Wck/521L10M=";
      name = "arm_cortex-a7_neon-vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-DUNWtqizInTe5ZayIdCR7jnqXaMcKpoEzF1kocoWuKk=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_neon-vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
