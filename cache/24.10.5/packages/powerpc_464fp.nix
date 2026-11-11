# 24.10.5 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-Vg9KFjoEmqrYpIa6hC3DzGclPxVBWRKZSpptZc5+Rf0=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-k2cTifQGsbJT1HqOIEUixfBgODwWXH3h49vD4fSLzhU=";
      name = "powerpc_464fp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-z0IKFtombsJBQ6YhKi9Ugk0dvMkDjZpCXOIicRvOULs=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-MPqsRv2WHi68Eqhj94lpfuDMbilgqp3ugoI0r7yRG3o=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-1rdhxOGUfak93tm0+ucoKy2QfYGe8S6NHutwOFtPP4s=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-OnUIVsfX8cQSei0zkVC9VOc5oH9HawSPkpUAlZVE2IY=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
