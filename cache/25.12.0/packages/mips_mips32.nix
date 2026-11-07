# 25.12.0 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-GtmLJyikyLe3ohGqXfQjBC8IOP1nGuR34ttB4Bt6afs=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-ICKVg+xFsIWRUBmtF3U+kx9VS4EhWEMBllZRrlKEi4U=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-KiQOZY41/gafQ2wbVBk4+vx5yjtXP00cDfnEY5cDxks=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-ATyy8Br3mGC49LKzoiiNrw+WX/+KcPec8kZ5njDuC4I=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-2CaM9ibBtafh2YtwP7K1rbmnyNcMoIG9jfjlt/Gb6nI=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-Z3d/qlEJeXi627Ah/1HR3XHiILEpnIOVNg5SkzPc0Hg=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
