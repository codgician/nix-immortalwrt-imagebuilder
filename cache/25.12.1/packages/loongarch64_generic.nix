# 25.12.1 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-vF/jMVsCJYSKgnhfO+yIqG+BbJ3Uf9bVNoFFEJZs4VQ=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-5ZokDO5wXtDaLCuwjjyWCDAm9GpWDOrGuj6+RGOwcYU=";
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
      hash = "sha256-yym8UkSc/OkwQD6UBmcXwE6WDHhp875k1JLuElxJQWI=";
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
      hash = "sha256-kAZZgVRiUjvjtPRScPr9DEh/+F86gn5634SoPU7IzL4=";
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
      hash = "sha256-DSKjPqveZUiFWIhVdmDOGDszyaiPb+yniEhh4ubjiTA=";
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
      hash = "sha256-IyoR+NkU/u+Lma0N4X/uypxXZEvZ8HVnj0s07kxMAj4=";
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
