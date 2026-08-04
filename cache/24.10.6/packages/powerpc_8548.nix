# 24.10.6 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-8DVyEIKfXlG5YlGtlrD8rUUyp0Zxu41h393uBV6tUUI=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-EUsoYGohL0hW7OfidyU27H54oYABs6tuD+nyJWpAnA8=";
      name = "powerpc_8548-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/base/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-CI3ZSoDyscl1uKWN3iBAvRLFjNbxR5/F2NzSHhaheEw=";
      name = "powerpc_8548-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-4giwfOLPEVLbWVSw8FoIuxaFyCct4GYLyN8FKxjj878=";
      name = "powerpc_8548-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-8BLjYT+WEDOqqE7FEkukh7NhN8MwjGlM19hS/DfFU24=";
      name = "powerpc_8548-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-ecKEoDC9OgfiRwmQh20T8Oo06iQP8lG0rUFz712IJjI=";
      name = "powerpc_8548-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/powerpc_8548/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
