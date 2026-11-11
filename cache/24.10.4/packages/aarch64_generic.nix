# 24.10.4 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-q9KLkHZenlhcmcCYH5OQlcibxrU55LwKNW3Ih7Eep9U=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-uXqXs/15cMSsMOCYTWw9TWOM1GwZN870h8W4xI/UOk8=";
      name = "aarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-s0D2xdWm3pndW0Lidq3gp8qwKAx0z3XpHEqZvV++F6k=";
      name = "aarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-kayqk8XlwJoY8wQkqoVCuq5mx7sW2/EBrUlbips7Fa0=";
      name = "aarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-yO6H/xC2WmPxHkcEWPxSNz0BaETNjbsfqO+/EZ5u65M=";
      name = "aarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-JlA0HdXNwBR8tVG4wb20OLL3//fX8Oy2HIC9FSfyjgs=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
