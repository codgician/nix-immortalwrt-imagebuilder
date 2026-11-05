# 25.12.2 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-0oJWYGFH2C19CcrawcHCsUO+/IbMcReV0q+qkPmbL0M=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-xPWRSowLTXI3UtBumlNO1ETNUAiNA6ffKXo1b06rS0g=";
      name = "arm_cortex-a8_vfpv3-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-7g8rknko4CfeUxV4Lsatt3XnFAGOwpx5tjqHtXeKw0Q=";
      name = "arm_cortex-a8_vfpv3-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-bIT6l0/68v+aUsQVrFn3YQWU6YFuLUkMPsQSMUsypnY=";
      name = "arm_cortex-a8_vfpv3-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-90ed68YueSNy5z3dG8cW/jJEeAsRtLkzkzVbYKkQVQo=";
      name = "arm_cortex-a8_vfpv3-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-76Ng4XbDM7WlgJCqsbHVqDtZUZe5wfbfYn09W8bvUoo=";
      name = "arm_cortex-a8_vfpv3-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a8_vfpv3/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
