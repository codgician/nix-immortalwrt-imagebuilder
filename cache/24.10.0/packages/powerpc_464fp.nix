# 24.10.0 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-A4fHcR0zk5Xh/E41CU4R286qp1Z/mYr7BWltBIUGucU=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-0Vw/PKMjWJj0sQpeBcI6Nb2JfxfFrkAyrxsYhinR7XY=";
      name = "powerpc_464fp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-nxbwnyRxLhP3Ic9uiDl8tCHZNdBH9v0eZ9GB/JyI0iQ=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-TgbvPifRhAdLtkQSxXzvwP9rvzBr3lIz9ci7FL+zEJA=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-3gsEF3tHIzRZLfSrjins6me9VtfFXdo5L/bznvsHS/4=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-7GK7p0gKHMioIwQeIk6NQd6UlSHfoKoknfo+EyDD6PY=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
