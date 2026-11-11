# 24.10.1 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-0t8jJA6fxgGRTyOaLkEgdXOFraSgbFLa3tUEYML66Ew=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-yc9iSPSwkZiFXZqSdCOiXPpIzmAJt6pNwPaLkCHaZFg=";
      name = "loongarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-TYz7h4pO6g7GwYKm61wC640qzAZAHaL7WNlAghp2sZI=";
      name = "loongarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-vv3Gk9sJmICR6dpnjwhlrXrfZOgwg6Bb5abSuudR/14=";
      name = "loongarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-ui6j8Wp933EqqB38Ylg0tyw50bUODpthBH9zk+abO/M=";
      name = "loongarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-WIOIDD3eEQhDflgvlRIMLFGqJPmx9DMnEjsvy5Se5po=";
      name = "loongarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/loongarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
