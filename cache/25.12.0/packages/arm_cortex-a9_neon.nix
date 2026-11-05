# 25.12.0 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-FYE9vxACTPiHHkDjTcPqN/A90iabG8osMEHrXCeGi1Y=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-sJU+oMIRC8QMEIe8BDU9wtAq+/eMdMXwKtf8VjyDGDA=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-SDOBjv1YseJCcyyPcDIINzGNJ/VsJzRBWuh55TJG+Mc=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-wCINWanpGHjMR+YMm7n53Vl94qUqk/SOn8ZC08fxA+I=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-A12VuTtOb1p87joLIV7hSModH5eLT22u4xdVoX0gMjQ=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-P4O/fwHIHlqfgGDf+3ib6JDA5kDWssoYoGCiNBbAo/o=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
