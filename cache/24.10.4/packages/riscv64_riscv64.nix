# 24.10.4 package feeds for riscv64_riscv64
{
  sha256sums = {
    hash = "sha256-GpQTcn8drmBP3gPoxLadONtNDZnufZZA3n0ew2Hqhp0=";
    name = "riscv64_riscv64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/riscv64_riscv64/base/";
    sourceInfo = {
      hash = "sha256-vJbMsZUVDB5WJuy/iOF3mlhkFQMPmIDiwftEf4NP0WU=";
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
      hash = "sha256-eqL+y7iaPJV2GrUtSMIdSJeonnk//J7QgS3T9/YWOwY=";
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
      hash = "sha256-VzCc81p/ZUZDP1Nbl093mJ/9Yq/Ckl9l9fzuAUQAmww=";
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
      hash = "sha256-C61b9xXYp2Nl0GWEJntmirCXCL9KGqXqGNH6+YACeS4=";
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
      hash = "sha256-hqzMeXcdLfnPThUYPKAlsU6NHRD+cVgxRozVzi0R/XU=";
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
