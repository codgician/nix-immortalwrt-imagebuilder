# 25.12.0-rc1 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-xcV9Be10cTWv3ii3UnvWhcEZkiAOdftavgbk5mU5qnc=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-iamI79Zmk3MwL4ZH7E/QAukSX1Pyn3usY51HZy0Twd0=";
      name = "arm_cortex-a5_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-JlUKzu2G2KGmjsxJvioQCMi9iJGGDRJn8twtDFy8pg4=";
      name = "arm_cortex-a5_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-L6ENS5arWSLa5rtMQS093caceCg4XeCiolc3Hy47BWM=";
      name = "arm_cortex-a5_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-5H4gvAWTWgPUZ1nMoNO8r3Mo9xwoKTHmv1dN8H5m/YU=";
      name = "arm_cortex-a5_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-TojzID3Q7Aq1ybKMgC4YU2WrpjkJNknM7hJLdK9tORk=";
      name = "arm_cortex-a5_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
