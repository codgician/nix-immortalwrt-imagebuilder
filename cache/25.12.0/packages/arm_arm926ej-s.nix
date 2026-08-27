# 25.12.0 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-SRngg7JbpropelGYun8T5uDYSOiD979yka/IuiFep5w=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-yr5E/bh1SfAhB1fphaCWooM7JKBhvjMVsnf7EsG2LUI=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-Zb0h9AADHh1S8U2xJUOSYlIH+bf1CcRCDER3EdfNDyw=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-YxLfQ4VS8cqCNpIwUHDNnVMyzPjeIHArFCy8b/4LFME=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-FxJBJ/Qsg1wS2vtpTlCO538OW/SYdc6VGUs1M+8FZc0=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-56NnPNtxpl9eP4ESIpDnzug1TCJIvL+qttCcm+/xreY=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
