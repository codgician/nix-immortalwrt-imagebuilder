# 25.12.0 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-rTPvGlXmGLObhYdxZ4MkZ6pQRniK9ioLRbeEBlzIT/c=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-etrR44XDrEWARnXE55CjzuqJGomlnP64+Er/SoT7RxY=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-ETiYiQuEJvFvuBpMhAyqwa/NbsWoAbDH8wHwGBZtw3I=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-02Ri2lUov0mWXRFlbjCxOfDzr+lkSXK/+t6A9B3hra4=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-Jpkdiy2b/YKhWHCfOAUu+ib6ffWU9hI/n/QOyqOiFuk=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-Wfusr3p7u5fWfJwLor0PIHV3vkAnXsXKfea8rzWMyaU=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
