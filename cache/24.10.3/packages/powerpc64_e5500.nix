# 24.10.3 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-hRIyXkXm5jJa6t78nFSIV+vH3C7C0XLIFiARFzkYjEM=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-mkQ/N+81mzS5BFR2Srihl9zngq+X0qDfS3RJFXyPmBM=";
      name = "powerpc64_e5500-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/base/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-ETkToPPo9uXxkESqXDTiC0o4kKVlETM1U203qAfLGdI=";
      name = "powerpc64_e5500-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/luci/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-/d5+/kglJABs+TnUG8Hc51+pil+FDvrjanJ5pf/3cas=";
      name = "powerpc64_e5500-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/packages/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-gpCFCJ4paXhFysUWFV8kaN7dLOSK4MHwni/yELoOpQo=";
      name = "powerpc64_e5500-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/routing/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-mWVM6iXdO5f7tk0IUZVVtT0u+WoRoTnye0akzdXn/LU=";
      name = "powerpc64_e5500-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/powerpc64_e5500/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
