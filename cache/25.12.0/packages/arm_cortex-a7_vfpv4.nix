# 25.12.0 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-Qw8VZg7LNg7fKqTGZppMSTD0MmblrwQzQxYestvqoFM=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-nadTCSqFoAxGs2+PMPtpUOSKk9YBEc1bx21pErKqfkM=";
      name = "arm_cortex-a7_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-Qw//AeL+eHQguO31dklxyU9Qzb7EYPVWwdrgpbnTt4U=";
      name = "arm_cortex-a7_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-5SJ2tR1k/UhecvH+L0JIvZbxg5VAw+d/daLnhYfSaVI=";
      name = "arm_cortex-a7_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-j3bOC7QhUVvVANdUu2lM/zWi/kVXub8BjNt5RwFlkW0=";
      name = "arm_cortex-a7_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-wDBTxwiCC/RuvML41LWU7ptlp8ilt/N/vv9fd80lBk0=";
      name = "arm_cortex-a7_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
