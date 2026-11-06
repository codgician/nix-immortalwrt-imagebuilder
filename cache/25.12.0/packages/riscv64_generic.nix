# 25.12.0 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-DRbBYGGkMNFQVjvZ+WPiJgsOYiJI06Smr3lB7HjA2iE=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-Y/hBxe7xVRd9yBcHWOt1qACy8zZcjSJ2u7O04N2FRbY=";
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
      hash = "sha256-xnRanAX29n5fXpMBa8BSWsxdtJkrbzcsXxr6cyl7Tg8=";
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
      hash = "sha256-qQkwJZ6LXMe3wtyJEG0dkj+fYIBmd8cUCqoK1Uqx1xM=";
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
      hash = "sha256-Mhqu8gLjj/aO2hW8PBQ5HbnN/Hf/LHFE1TIV9JPj5TY=";
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
      hash = "sha256-KCpVnegMcFz9YD/5nf423V4LRNpiXBoE+pMPPPBhM7A=";
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
