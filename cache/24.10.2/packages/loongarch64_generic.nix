# 24.10.2 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-72MxwoyBz5lX8F+j9Yawt55nj/pzicK08Osw88pcwAw=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-YT9jwXjobOqTrz4T+5DvozgWqeKHr780su+M4YCZ7dE=";
      name = "loongarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-dFI6Yt1jzE9UZayWtuS8xsZ01VPDIG9oWVyTk0TDwEI=";
      name = "loongarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-lA1qE51LfthyyIe0Wfstf2l3U23x2hI1eGYtsL2u8wA=";
      name = "loongarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-WTsF377KPaYY/PA5R+V6N/v8KHmCcPTxaoEdaDbBp68=";
      name = "loongarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-UaG3ieC9BzAtRyFm0ESRNv4fmpBeBmW0qoPyvpgR0sE=";
      name = "loongarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/loongarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
