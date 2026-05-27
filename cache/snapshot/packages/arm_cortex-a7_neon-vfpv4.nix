# snapshot package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-ym/m+9Fk/gmS0sdZNhEXmOu+mGKkXoDTvWmjj88sZqA=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-XgzUysjZBrUzHEPLLMlPDamtNhlXvs27O87y3+TjsFQ=";
      name = "arm_cortex-a7_neon-vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-2JrlhM0mMBuhbpN0sPC2E+20DHQ5t+JtP8jsDbOBc3Y=";
      name = "arm_cortex-a7_neon-vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-zsuZ5ZjT7wLTaBaQa0gquOvv+bUFKlRsN2ILE7QC9UU=";
      name = "arm_cortex-a7_neon-vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-6aXqtYmZyGPu/6HgXRkfHal5u95eLbRSI+VEJ83yNks=";
      name = "arm_cortex-a7_neon-vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-g1VFglbKyQpdL/RE4FFQsKihKUL38kGA0h4+LcZgedI=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7_neon-vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
