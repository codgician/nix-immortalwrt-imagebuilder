# 25.12.0 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-aNA+x3BhPMS2uAmQU5h51IDFXDsc6UOw+yKstA5Fcxc=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-6WvXQGChT7vcFVRuT8YdOk3QxN109KHDsvbJYvXLOPQ=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-WyIT23G7afkGUyYnTXPHp4IXNKiZ/MxDgUGJX0Y2Nyc=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-qdsSvbz7MKSHjKXvlKbtWygM5p1om9QQrNcuj1JGu34=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-/vA/oNu1JelbemP8WO4OnZxhD5Zr2Sjl8MImsqy0X8o=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-vT+nWR8mdnAhl9yImyDtpGrLrlCUTodEEnxS9f/0VyA=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
