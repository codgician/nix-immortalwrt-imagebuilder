# 24.10.4 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-YNNEtbIUkK9Uh+3nkc/7/yzqreKz4HruRiQQa9LvQh0=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-q4j3ev2FHZiqXjFk+/aFKfCwUTJNklUM9jAtuZAt2yM=";
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
      hash = "sha256-d0jCzn3zzbifEpqusyqF5Eqo841qmOl9qI9SOyUq2QU=";
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
      hash = "sha256-YiIBy2a92VVrYGLZWf1zNvAhS87uSoqr/h9XRtkgyKM=";
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
      hash = "sha256-ILVzwjDLupqi19gWm86rxqYYsM4S2pVSLZmj6afbRxQ=";
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
      hash = "sha256-9AxN+qlo+bzKkL4PKI5PUpjmi754xsyKoaVM4uMmV7A=";
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
