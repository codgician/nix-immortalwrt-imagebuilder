# 24.10.5 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-36lIFfCNJVlfw4NE6JBG6YR48V1RrSRZb5LIf2pbRRw=";
    name = "powerpc_464fp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-bmXKGB4cbJdXuHXYicvFF1+p00S3mFCIrPhmzlOxjgc=";
      name = "powerpc_464fp-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-mHJAntErfKgfQfopdeIzFQkBR8ne7jX6wfYg0n0LdJw=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-+PvL6P7fKodMEuL7nAPqSox631FyEdCZpPsocV0Wkqk=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-1iAsN7uDAPD8agH5rWwgtQ9mnDAgTUjaX9JpHQhGc1I=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-9E6rP1OsAK8tFLTO2/rLx32bTNF2jJWgsqz/tjLDC9E=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
