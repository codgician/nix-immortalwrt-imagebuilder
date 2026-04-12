# 25.12.0-rc1 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-AaHRg/TEMSSniaanQJA2GPrbAQV6yUln3z5kFEzO+jU=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-Ld4o0+r0uSq0mvV0hN1n9Nmsl/w4zqc2SGLyEtJmaRE=";
      name = "arm_cortex-a7_neon-vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-AcOYz7QQ8Rx276GcTHvCZARLyglstfGYNFuMxKuFefM=";
      name = "arm_cortex-a7_neon-vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-84tWaWYRrPr0oMx+5zulMxw/d4oD1ff7h40kpLyCL8M=";
      name = "arm_cortex-a7_neon-vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-TxiAVLAcDNudgKNex1BhZoH3cjhaqj5Q232N6XAlB5E=";
      name = "arm_cortex-a7_neon-vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-ru03fYnXcelzAlyDsGkoGOjSZdU5VGiFKtkJkGurxMk=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_neon-vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
