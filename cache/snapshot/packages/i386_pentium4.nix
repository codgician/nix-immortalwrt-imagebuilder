# snapshot package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-VlnVcb9nHDD1wphTSv4rlOfW0fiQebhRo5vCInbVvqs=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-TiJHaLAyZT2mgPX8pZQ/pOSTlFyODfAAcz3wv0tb5Ko=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-aET+msd5ukfRIRTIbuSB2Yk9nkjzH3ISEN27M8vte8I=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-aNYFPc9CyecIZt25HvU/1ecIBHcQ+//P7zDaeo0kYGg=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-0ioioGvg8UFgcdy7Uq/Mb1p2xJx8IZa056T7F/A7V80=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-nm8eqJh8kAmZvjzonbguWpKV+NPSkKCfdzWOllTqhL8=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
