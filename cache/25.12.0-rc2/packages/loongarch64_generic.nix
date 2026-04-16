# 25.12.0-rc2 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-ZWYjzVelhLvkjzWIrZbsFj6f0OcUFfXlWbq774Td8rw=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-SniWJ/hhFcdsKPjCgJfTAThRasKTKyD9kfbEbpKAP78=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-qafZMzwynLMoVaS/h63taRR+YMUSv4r/BTfD1peqE4g=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-lXEGMVIga/lPKNdZDYzqObU2H3wPlpbNCj+2D0Cbh94=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-Mm+sA8UOTH5pZQGkSzZUMJIJQDojiXc+u8AwE4mey9w=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-IhDvlsyH599LGuBK9kBVWWnjddolpEJAagA40hUmV8w=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
