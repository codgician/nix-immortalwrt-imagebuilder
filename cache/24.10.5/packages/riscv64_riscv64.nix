# 24.10.5 package feeds for riscv64_riscv64
{
  sha256sums = {
    hash = "sha256-z4BoQuNxMtEnwymzSNBQckr33lj5cHDNC2OggdC77ek=";
    name = "riscv64_riscv64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/base/";
    sourceInfo = {
      hash = "sha256-IkloHqY787hQF5eXJNSiJIMmxNfpK2yWACUJND8xwDs=";
      name = "riscv64_riscv64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/base/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/luci/";
    sourceInfo = {
      hash = "sha256-DFg4O5lKTT9CDlPWc5Zl4XIOyiPsRcAREAwpj8Dyecc=";
      name = "riscv64_riscv64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/luci/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/packages/";
    sourceInfo = {
      hash = "sha256-Ga7gFLf7UfftuiGrr+73rrH65SzvI74UsUKiWbjzqu0=";
      name = "riscv64_riscv64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/packages/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/routing/";
    sourceInfo = {
      hash = "sha256-ghIhZzzL7FxHn+bEcUdZnzledUUCBnNcvJ/zjLIsGjI=";
      name = "riscv64_riscv64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/routing/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/telephony/";
    sourceInfo = {
      hash = "sha256-2JBxrkJ5jRxzQjet7+kyjvwbuzEZYCWn6V3bEVwb6ZE=";
      name = "riscv64_riscv64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/riscv64_riscv64/telephony/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
