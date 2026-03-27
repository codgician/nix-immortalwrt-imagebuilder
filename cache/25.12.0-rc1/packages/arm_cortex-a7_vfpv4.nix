# 25.12.0-rc1 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-K4o2MszHrwWIFToeiPffWHT4EdDgIlyOOfRgn3mfO+c=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-VP5Do6ViDgzk/j/Oka6nOSH5iU99tDKGKYRpVtx/GzU=";
      name = "arm_cortex-a7_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-Mc4ZeorECi6ADP+MGSC1N18XdZjSor8qD7ELWACR990=";
      name = "arm_cortex-a7_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-UkecSLLQO9JgzeHxXxaAs41rIWL0S97M8Ok63i160ao=";
      name = "arm_cortex-a7_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-+tNjp509KHq8Kq0qORKGY3YVp/di8FHrjMlbtshPFwA=";
      name = "arm_cortex-a7_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-S5ZZo7MTExQFZnJ2lnSPo50opzItiIGTBiZTLBpOOT0=";
      name = "arm_cortex-a7_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
