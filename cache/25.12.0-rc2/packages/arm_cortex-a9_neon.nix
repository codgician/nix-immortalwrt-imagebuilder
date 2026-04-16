# 25.12.0-rc2 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-CAQW+oWgOteXVFx5K7Fbqv3/Bh7kc3SZ6QXvsk3uvVI=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-5GI8V8pcAH/BiUt47ezhf+07eLpc1tN9fi/ecYHO5dc=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-fRRkRINlGS+AfI95MXMUWO3O7/QDZofuqXI9gBc3j24=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-OBIA0K7dye6XMnv+8Mf+/d6D8MKhkpxPdEb5Z2HlegU=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-XjCZ3QyylWN9FjesHwMWfq4oZkw/IF1nT8cPrQtzBYA=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-SP8K67Zr/Mc1hLeVAodLLM7VPYhgm9B0BV4NdCAnS3w=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
