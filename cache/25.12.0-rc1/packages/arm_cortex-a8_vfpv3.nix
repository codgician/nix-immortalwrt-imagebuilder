# 25.12.0-rc1 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-Wt52N04/WMXT0Dc7Q1tPJX98nAEVuWFRPuq7QdessyI=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-uASk08iWPHO8s5HpkvQxjbgwxUTitQGHrorabkaTEJE=";
      name = "arm_cortex-a8_vfpv3-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-OXplEAFV7HlwsLYYlGNytf7VGSWgMhMxoxk7M7BSK7g=";
      name = "arm_cortex-a8_vfpv3-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-tkx0rB7B9Gq0cCuPJBJ5aADz7jyHC2q5f/zzzKyaKLc=";
      name = "arm_cortex-a8_vfpv3-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-aJ0j2yEddgtiKgom0laRvf/xcOxCw12bSYQGjlGt7hw=";
      name = "arm_cortex-a8_vfpv3-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-1HN/tiE7UEiL7/j1XuEgRag1ALeU3iUr8jiEjpN7y4E=";
      name = "arm_cortex-a8_vfpv3-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a8_vfpv3/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
