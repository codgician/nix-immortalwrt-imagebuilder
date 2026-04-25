# 24.10.4 package feeds for riscv64_riscv64
{
  sha256sums = {
    hash = "sha256-R3fHG4HesFMb394T9I7Rc9WDf1y1/aCHm/V3jbyB+R8=";
    name = "riscv64_riscv64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/base/";
    sourceInfo = {
      hash = "sha256-gQbOwIVACzvAFXbvKKPRouvXvgHGlt+Lr9zNQJ+GK5I=";
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
      hash = "sha256-zQkm6JaTP7X01BgftXV5PDGxueVEbnjFcUKjrLqaL7s=";
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
      hash = "sha256-OqA7+6FG+eK0PaIVaDyI1aKWMOa8lBxi4FU/qS7Bk90=";
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
      hash = "sha256-aYPt4MreP4OSGCDhL35h+Tmz+AlqW+rlUY/BFFYcpxk=";
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
      hash = "sha256-xVhRIHY1FfSwsMYCvWJs7nagBDzJw1iTqJ7JZ4BkcjE=";
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
