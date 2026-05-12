# 24.10.6 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-V3B7jRRf08Ugn1M/a7IzHG7dSWp7FlIkLUHxWoJUfoQ=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-C/SXMLcvgO7BcoOvXfHZKK71IfSRtQH6p4Hw9Q7H5ro=";
      name = "powerpc_464fp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-N8SlCwltpJKv9xoEGFHVIS0zhTziS+9ytKiLhxTvm8Y=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-AuaeDD5u6Y1VA2k6i+FaQ/K0CwlPjXsr+PnZ6VrYAkw=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-cGRej+ZRfa+5H01i8iWBEICbwveFjKtYyxm+Ta3Yy9s=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-QX6oTTUjEqGNQ0yFKjuldxv0newMmf7Fc+51ojj8rNc=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
