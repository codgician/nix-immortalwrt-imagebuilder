# 25.12.0-rc1 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-a90JuSytfXa6QD4kret6QsUyq3Wm/lMUn0phva6S01o=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-DsOhnacRvkL3agO1HI02kAV0Yp+yPr9xP7LX2qNp6Ro=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-zZfgI0bhBLOxgMRf3NyuH/PRfTu205O3XDuMCIa4qNQ=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-IF3g2yRyWkECRbR5OaJ5RiSSIeWYPaP7E8y/JCW1h1M=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-JuyZQTPMyK4rgaX3pNnGLpC9W2BPVk0fhVj6t6V5yH0=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-YRriXUC0m4MZTmzbTRdApqrnUAIDzG/brmIlGEuAmu0=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
