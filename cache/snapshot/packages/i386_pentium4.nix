# snapshot package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-csMK1YPYpSzJiexJlFKPoKTy/E+Sm6oHiSsKUhHrGu0=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-v6dLV+obUEZrUOjEmoyGihXtQYks4+oJ1ww1wwsjBZ4=";
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
      hash = "sha256-ZwXX1rJHS6GbRp7YIn9Tyl/jGjPHQJ35uAcyNn12NUA=";
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
      hash = "sha256-x3toBqWOfExUD6TYLK0P+ZrK8nD29ImvDgIHSJJW/sY=";
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
      hash = "sha256-N4aBogi/NFKSp5+VJjqgvZrVb9O+YPJn1yiGfqWIj/8=";
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
      hash = "sha256-2vjy5BZpAQIzw9Qphbpa0PUGQT6RG/FYVW2BFKuCRk4=";
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
