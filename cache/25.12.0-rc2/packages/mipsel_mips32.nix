# 25.12.0-rc2 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-ltkyzf2G1WRtCQE4PnwiHUpK6i1akawd1o2XSDc/Zjo=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-3b0QQKjg5QnxRl48RhYDLJrr5wrjqQcjVZUQ0P+qQZ0=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-zyR9c/3WFWqkVcP/Ym6wCvZhwyYkoV9A8VcXsrTIoQk=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-aQhLs2A9he4Uy0zjSr8DwqMeEPrGNGCbfBB7rmRWDus=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-SK25FsZ15TXs1pwbblMXZYImEgGR7JTUdCeqsW4RLDQ=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-r1y2v8DQcKJ39WB+EmKI9su4xcbZobq/CBzjcv3DqKQ=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
