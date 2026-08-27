# 25.12.1 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-aHvXGvBwYtyKVdygWFKzI10dC5dVBuhDovTGxWDaLNk=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-Dn7VRjiVKABVcKvX1SK0a3ZR87f5B/JbUZOWKylBU8c=";
      name = "arm_cortex-a7_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-ncJxllYO/hrPn8wSGaSD93pQ+UbhFQObyGum2KNJBP8=";
      name = "arm_cortex-a7_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-28RpYMuQV2ndKeAIvLnNFwP+sM+mkYyCOfEYqTP/5eg=";
      name = "arm_cortex-a7_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-TGSaIeSBi5bLahZOQS+WulL2hlSs+QoIZ8QfY1hTMeU=";
      name = "arm_cortex-a7_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-3K3ulmR5YXc0c1HTjlGzlvBI7ig+u+NisNdY/ijnrs0=";
      name = "arm_cortex-a7_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
