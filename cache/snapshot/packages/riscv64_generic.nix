# snapshot package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-F7coL6rK9AwMgsS/1LZ6AVZ6isogQUtzNgowhuwvZo4=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-Rlr9U+sxoeqRC5wEZivD//a7NKqIIIyo5Z4/s1hBNcc=";
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
      hash = "sha256-SVVH0OzOdat4ie1S+kD3l6ngd2ZnFkTkFKJIK6fbNBI=";
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
      hash = "sha256-eBrsSf26K9I5XFtsNqnLp77A7asN7t3u4ngTAFrvCn0=";
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
      hash = "sha256-4HRCJZCQH12HId2WRTtk56dEnmH38Q8W61gPJCFcrac=";
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
      hash = "sha256-G63jAIuylwRIxEEM+no8ug9qmp+H5jyPt/K8KH8smls=";
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
