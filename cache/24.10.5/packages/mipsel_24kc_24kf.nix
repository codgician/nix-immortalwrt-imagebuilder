# 24.10.5 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-ZJ2uEvLHpInuWQhREttU+jiE7R298J5jcFiQ5cLHD/o=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-8Ee4PZd+10CcYoL+KU7Z//Ab+XnSMoHVkBEj1sehs4E=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-piTEXIBTY2abpFWHpYsEub82GxbQ2sN2yvCuz6bdkUY=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-fh+frgN4+sYxWumuFQsmQM03Ie4GBzq5KRqOYwJwV4c=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-0c0468tXI3w0QreMeBlJ2g1CYqh+GsMFulDw5izmCxw=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-6BmIqf140G/kQ9AChJLooL6ca/99DZsX2m0i4xeobtQ=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
