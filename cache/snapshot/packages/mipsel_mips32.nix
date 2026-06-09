# snapshot package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-kzD5ayfXwlGQ6N/5duAgcn6foj7RJVV+tkzZUNVYslM=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-z7tBtwOB+jsUQWXlYKM3LHZKQJcybTBo+m+qCFf7/bg=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-o35t9+EU+b+lU9m89UGdaF1fSGFn3mXmXJ4PefFdLnM=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-u8NxTknnn4Yhb/87FgN9P9phba0LxjAAzhLcU+J+HYk=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-4sDw2kHWSLMWhxPj/tZa1tfHtPb/ABS9LBXKFvpFS1k=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-uTFAUmWrhV5mTGeFFcIPwJdbesrr/5+QtfxlOjSG0Ws=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
