# 24.10.4 package feeds for riscv64_riscv64
{
  sha256sums = {
    hash = "sha256-bapHgv9z5cr5LceDmNdowjh6ZSn79juVRpSxO2/9JjM=";
    name = "riscv64_riscv64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/base/";
    sourceInfo = {
      hash = "sha256-4QGKCUWlgv4ivOtNT3u2xr6qpPsNXeMUR16tpe8EUA4=";
      name = "riscv64_riscv64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/base/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/luci/";
    sourceInfo = {
      hash = "sha256-qFWKP6suk9VDmxhUU61+uUVileDtPJU1oqhsJ598ux4=";
      name = "riscv64_riscv64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/luci/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/packages/";
    sourceInfo = {
      hash = "sha256-PtfQ7hRA3CMMiyoK9s6yHd+BCbslyCZUwY2j2w5k15A=";
      name = "riscv64_riscv64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/packages/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/routing/";
    sourceInfo = {
      hash = "sha256-Yr0PJ+30aL1YhqAKoFx7+OIRy596C5vDE13XgQ6R4Wc=";
      name = "riscv64_riscv64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/routing/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/telephony/";
    sourceInfo = {
      hash = "sha256-gq8Qg4ofNGzv/Gwfi1NqNJEgH45GdNk3Hpl8XY12ra4=";
      name = "riscv64_riscv64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/telephony/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
