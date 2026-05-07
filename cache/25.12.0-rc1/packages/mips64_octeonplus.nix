# 25.12.0-rc1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-RlHEIjYwJJBeOy4g2rBMxmRI+Nji3fqCA7GGhIVxHdQ=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-OI/Of8avJLtjY6PsogwVAUb1UI5ql9EQyAV4aENnrQw=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-3P+I0f2SvyJKnPi6bKuXLtkVVA9tEOEKT6uJPDLhO5E=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-Sm/HSEMregjuT2N1eehQX1ltxqYQpMaSQ/FPjc1yq6E=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-oj68oE8QWMBnYnoE9+j3Mi0YvyQdfLYpUK7AB8NuPyA=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-Xt4lWFw9wdU79R6Gn+rEkqvCC4w1x5J5HEYxMmiZSP8=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
