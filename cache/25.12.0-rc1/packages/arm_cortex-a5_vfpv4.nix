# 25.12.0-rc1 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-Lu1AFb+tp+pGI9iB4GV0UL0mfRV5AXvLL80V8BiuEP0=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-Sl2ud77WURKef/8U4CBhaAUc7rMBZvtW/vjiLqGS3hc=";
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
      hash = "sha256-bEhBs4vjWJydggU4BxoHR0ErfX1OBdDJbd//7R3Ci4E=";
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
      hash = "sha256-JICX3Ut8EQn7mEFFDyE0j//PYdBZSC6YggHhlRvM0XQ=";
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
      hash = "sha256-bTyDmkupM+gN8SCYp9J5f02chURQuzGRwmC5XG2j4IM=";
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
      hash = "sha256-Zmk7BDiLhVj6caZUiNnZs/RWrfsLQblxfTZWQrKY9oI=";
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
