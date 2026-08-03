# 24.10.6 package feeds for mips_4kec
{
  sha256sums = {
    hash = "sha256-ID5UyLtmeMniVt6By5FUdll0SaL/HnlOUpF7qrbelN4=";
    name = "mips_4kec-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-RdBjrwEpza5VXEukrKpyR2+VOgFaVVrNT3L43zzb3kY=";
      name = "mips_4kec-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-n+mqXaGB5JYMOO5G211sDKkmotBjbkqxRBDwc9dUeQ8=";
      name = "mips_4kec-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-SpewQ5clZp8QMNpLtbR9HSTHfdLq30NDtx3AjItIG4E=";
      name = "mips_4kec-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-EHP8bTMnQatL6hNdkg76HmiaZ09tVzpLUQDlv0fAYkE=";
      name = "mips_4kec-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-AEqvu+9OHLA6xyGeWZ2NHbhBUS8079r0EZtNY0sVvD4=";
      name = "mips_4kec-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
