# 25.12.1 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-YbES8xvRozFLiu1XF9cIJLkWwfrRSYXe8L9F6TmD41s=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-mrF1DaP8/GU20ipw0c6kj8mjUL0AYuaTx/FDwEgbXmU=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-WnarpIwZ19mXHfbQYctS3ePmREehewTp6n17Mm3iYo0=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-DytQ1ZisjtOXCCRAgHwkYQF6pOUF+OzqvL7eO/w1SRo=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-F8cXuxG4Wrk7nQdyIc6t4U3TX8Ci03EzS+Aj6fXebbI=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-RQhmEAqRgr+3Xqly/Cu4qaIquiL5tUsXEXRT1CgKh1Q=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
