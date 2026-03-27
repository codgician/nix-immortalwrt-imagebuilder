# 25.12.0-rc1 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-o+sJsUPwgvhcCIXGX+ihHIq9eAPn9DyMhMrxMP5lrKA=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-B/y72+GE9Cb3ta5AMsSxwNG8VlsXzNvLXOjgbVDW6PI=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-k4W6j/FplH0NM2BP3Mx121Bw9Ghqs6BCcSn6iQ84SmU=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-gLwEj+mJxB9rv2RllRfE+9MpM/+7h2UqmsLYsCJIdho=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-MKtlAGeSiCaTj/EiwqCm89H0vu86JvzRGxmvuxnEDA4=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-EUZ9P/+s9dCTp1S7mODCFzo4nhEBvqOm8v4YWWM2e40=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
