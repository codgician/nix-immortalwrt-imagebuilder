# 25.12.0-rc1 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-F/ENnGIMEbCo/EuxGD7fMDmNOHWJgMWTsnaWNI2dTy4=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-Lex2/POQSyAGoZgD8CLqY8Xr7HfVd7/iariuNQjGmLE=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-CIduEqiYwAt+A4EsoHU/Fw3xFPc18ks0ax5277yuI0o=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-N8Jv4RTXl3td3JYq5rc6dOBOqnCMPNKzloUrQvWQKFE=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-eGQu9A3c9+4p4/x4aV9lHrxlvGISE+cApTKiIqgHTMo=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-06X1F2yQmJVbPOPMKULLZWN7butoe40myLPDiw0rVs8=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
