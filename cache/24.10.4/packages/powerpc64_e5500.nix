# 24.10.4 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-sCjEl39hXa9+r7eo6LfLxbPFahj+NrWOIExOwX3S/98=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-1AmJDe1crE1/UXFvdqKeXkdLk452kBiHLGinhOd9Geg=";
      name = "powerpc64_e5500-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/base/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-81HQVa3ql3bLWLkUzSg8gepuauRpDvrA69KfPLUcpP0=";
      name = "powerpc64_e5500-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/luci/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-x0Yl7G0uBbmpzOnsf5ONMrrm+yjMdyej4d1h6uKuOog=";
      name = "powerpc64_e5500-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/packages/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-2IA7NRBZlXqE63ZVEuAXwZKA/ticpqQxalX5KMCIbMY=";
      name = "powerpc64_e5500-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/routing/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-8uoHXBmqA8zygLPk96XSoQMwKdb0/YpNKz416LqP6lg=";
      name = "powerpc64_e5500-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
