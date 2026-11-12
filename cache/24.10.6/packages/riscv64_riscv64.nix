# 24.10.6 package feeds for riscv64_riscv64
{
  sha256sums = {
    hash = "sha256-aIUCwWE5laoAo+tiv/HeanS69AI2h/0X9GpDrQSxd6M=";
    name = "riscv64_riscv64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/base/";
    sourceInfo = {
      hash = "sha256-QPSzU91Qxwhbo8cT2qMRL4x0e/FHHC/3nfeJDg/kTEw=";
      name = "riscv64_riscv64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/base/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/luci/";
    sourceInfo = {
      hash = "sha256-0JBg6hkeUjI8T4QrjcIqkn8H7wY/5BuD2uOrnFxvHWI=";
      name = "riscv64_riscv64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/luci/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/packages/";
    sourceInfo = {
      hash = "sha256-uBS7PsTs6uJDUW8ndwob58qQOZ7oRGnvZLsBACSBV2o=";
      name = "riscv64_riscv64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/packages/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/routing/";
    sourceInfo = {
      hash = "sha256-XUp6JsEGdlRtdwyUTlLEujlQQd1yMhfKU8y86H46lu8=";
      name = "riscv64_riscv64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/routing/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/telephony/";
    sourceInfo = {
      hash = "sha256-5Lcipo0UXM7KXfgXO6KioY4NVMOCVp8B2i/mI78m6Y8=";
      name = "riscv64_riscv64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/riscv64_riscv64/telephony/Packages";
    };
    packages =
      let
        p = ./riscv64_riscv64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
