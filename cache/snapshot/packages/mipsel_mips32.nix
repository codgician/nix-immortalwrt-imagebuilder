# snapshot package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-Qxc1u8E2Jr5odFmrZPEzTTb0xF2NMsC3vbQNv51VJM0=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-fZetOCJo2qmM59+wSysEhAxk0O71HpH10MyY7OJBilQ=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-/pZ+X9+Il1f1Sn2xOoQs04+3z+db+OYuCgAT0sWicr0=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-B7TUJKYrkoM8xjGRujDFqBxOvyYSgqlrYj0kgiDMpmc=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-Xo7n0WabrFUzsSx2wXr5NSR6UoaRzdEirMFF0YajcGc=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-Xh2A78ijOOuakyblV0CLufJbSLR2acDjE0HXdBSxrZY=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
