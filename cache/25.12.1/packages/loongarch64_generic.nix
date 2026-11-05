# 25.12.1 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-yeL0KjwJKRRAv9Y7fUOk8HDtRTeQPZ17Tjm8S2dGthc=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-lo5XslKXpWLScelujVmG5eqlFuapV2xQcs1sN+EKFgQ=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-tFD6JpWGR+fhxd6Yx8g8pDyxYlL2KaKs3YyfMht+QFI=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-Y5+1Xc1LLv+wu+syyQyEsyalz3w5H2UStOSEUc8OUys=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-k5InIKxUjLbmhI5rwLE/jqjic7HK8tZiuyRU8NRMpL4=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-GLCJ344sV1hNOMtF0e3IgDOkJJR/07X/K/eiIoKbl5E=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
