# 25.12.0 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-3AqyJxBfLTYZyiN7tOVgobyL/c6WHqmSs+xHvPeGKTQ=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-QQ4V+vs+AFRYsbvTSw/jjKRlgEtfqNUDs08Vfxj98c0=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-/P9iQjqGi+/QEUrORenaj+9S2jQsvSPXiWdgin2VqUU=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-uPDnyWbA+AVuc7aDhhf7xCZgaJB+f4mS2a7L0Gzcark=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-eXSWmpSm6s6Hi593+oomv1xPbWl+hEr7+k9KQP3gmrg=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-L5wSgyQDdb+DxDXzmUEoxS3y6p2moQThninWfMl/pT4=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
