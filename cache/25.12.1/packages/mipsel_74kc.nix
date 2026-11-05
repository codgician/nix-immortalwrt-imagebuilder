# 25.12.1 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-i84uDqFJy2Y8IhBrS1Lbtcf3E+Ydeod4WtKE+mcEi2U=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-qpnoy9Zg3/t1KZH3GmFTTmyFOIc2ewWmN0UjGvFDJ1w=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-j7I9kUd4eYdWs71j+gSKp35p6UGuDhoVvr+pxcS8on8=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-G1e52UEGKQD1HQ6ll+lH8EBu99lcL1l7CEgV8Btm4E8=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-BJmZ8ww+WNX0n6FIw9wuY8uG3CZ5WZzf5MP9LmfPPr4=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-O4hCsukySNkKIz0KbZDiSJPqHfw60EDU+6JtpiTywX8=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
