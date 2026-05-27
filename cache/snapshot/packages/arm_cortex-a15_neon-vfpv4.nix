# snapshot package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-ArcimqZ+WXRKzU/jVy4RfVuV3XY7ucSKo2BbCC5FbmU=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-cN34sMWZJDzuhxZQGW7CW7Nd9Gz4y7TMPe8um1kTJ8I=";
      name = "arm_cortex-a15_neon-vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-U/eL/+DbAEKzOt3JEzRy8pBoio2rz3/wkp/y2BNGQL8=";
      name = "arm_cortex-a15_neon-vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-VBjXlaeW9KhM81llEfLHYwR8SseFTFsQS2YEV4dpzg0=";
      name = "arm_cortex-a15_neon-vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-u9226LPsLHZ8HRQBuBzTVtxuiM+DGFORnL3k6AXauXc=";
      name = "arm_cortex-a15_neon-vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-zRGOpLQ+PFBH+NkXMALBv9Px+NcHUWi83H3U7/mi4YM=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a15_neon-vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
