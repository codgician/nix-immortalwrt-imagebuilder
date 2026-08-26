# 25.12.0 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-mchQewGatwd+VnwGLeTfHkwZ0v1H4WbhrRfzRkSLyfI=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-+GYIF+G1zHYFRx/b+369SApm+/8MKnhqB7Mabi1hRzw=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-oZ8npD/M2hL29+BPfBIvmm6FQb71t08EvHYDQL5LqGQ=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-ahVsbV0t+ixX5UOkf0sPTLRq2g95zur2Ns5+hBGJu60=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-RMJY6NiEE/7i9sMhNv0DFZoHSoIHaOsyi6AEMvTRawc=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-jFDsrbBYa1t7se1RS8YseTBUa3ecQjDSLF0D1HALb8I=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
