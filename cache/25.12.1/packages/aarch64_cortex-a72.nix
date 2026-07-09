# 25.12.1 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-rkDa1o6R5Ycv1044BGtTXIMkMRJShHlknLKG3TxhMR8=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-yeK9PUV0YxQsCrSXJYEllBshkbQfSXb691Jmg9y2q1A=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-i13B+kh/zLaZved0Brm2EzBwpLfjJ5sWLOWwfyeBHdk=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-S5BXN8GKmgyzSi17YPpKiThM2vxpZ7s+NrGCLf4naw8=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-PnYslRuhhdS4FQWJ9NqCmzbtu4eY8ny7ga2Rh9e2aDA=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-frAU6DRSwUdtg+vR6nbNDDjPTh3Wwizqi5YRe9xE+bU=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
