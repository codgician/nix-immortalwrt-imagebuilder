# 25.12.0 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-7B62X+txgOPHjlVJyjGO7+NBIIkjDU5U/rw3ZlxzzD0=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-ODyRiHG+NbJjiqcyGY+D/oRBq997UfpwzMfMbUKEV/I=";
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
      hash = "sha256-KFR1Qkq7q9i887bag6QXzLAUg5/ET8mWU03zbqq22RE=";
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
      hash = "sha256-Uu/LadNOT2lcvZcLnoZzu2qZdNjB/cFkdrkwoggotX0=";
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
      hash = "sha256-9L67Zqxg2rQLRyodb5iDty7j1ssXJQn/dTnDxUjjbZw=";
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
      hash = "sha256-ot2HS1Kzdxg/8HTRNuNFcaHeB4BG7XgxHZJb2DN6Y/w=";
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
