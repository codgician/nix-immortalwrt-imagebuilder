# snapshot package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-gO4uIrscNUW2JWrWqRCE2j9NKp8hVL4Ejhldp5vYJG8=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-rCGTI4xPhS/00zpiskRc9q3oh1KsI7chpA36+ASkres=";
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
      hash = "sha256-3uzBJzf34/V/ODcXVqWETLZ7Hy/a0fc5URPIhECRdIc=";
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
      hash = "sha256-O8vwiwkBphjzne5+GFS7kDld3lzLO+/MJacoOFtVXME=";
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
      hash = "sha256-zSt81WUTrxvWHo209NV5ukNPATMmZBdKS/M3thG6f3k=";
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
      hash = "sha256-yyDlT+K6bw6lpLZhGYsb7gxWTCfrUpKcxEsYf7vmkVQ=";
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
