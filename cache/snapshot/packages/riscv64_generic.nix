# snapshot package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-5NkcInrfvoc+qkCvgtumKojR3Sm5Jp94nVeXD4sMyjg=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-f6pj+u8wNEn7XAOdsn4pxtzpkL936o9xpuHmrLReFGI=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-FbCIiLVUr0ph0Cm4Tx+2fOcVHlAyVH4G8LcIITXBSCI=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-q4BDgyEbJRIvhkARYLuKGodqDjiERf8+QZLj1OV+jc8=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-TkJkVSW0QkOrJzWmNbxtUubGB/DkNYHCfBKnLNgxfzI=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-ceUu9XFt0WT0ywqEQxvPNSPeY82edtnWUDOGrS/ZSvg=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
