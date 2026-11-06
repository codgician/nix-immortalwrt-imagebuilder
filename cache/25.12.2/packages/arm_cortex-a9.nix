# 25.12.2 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-OJp/178iDnPvCUOqMpo+CXsQvKCnDIbH+ghnJSWRFhA=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-AQmOoVGOVnyij8+DVSG3f5eLmiAFdxHx9/gOcWx1JKY=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-JEz/SMCRHBpRGzk4GmZ5N4rq/dzCCMdIVbEaQb8Y1tc=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-VCEwDSGrL7QQ5WndJTVaW0GM7TH1l5xJ0v6xWXx2ZFU=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-9R8no/5qgcHikkNgNkA9LcRq4h9Io9q7lfeBDKJ9w3k=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-FpL80kQAZR/A4O8tx9e0N58aO4RSvgeThb1dIVAhjkY=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
