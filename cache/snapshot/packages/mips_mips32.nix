# snapshot package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-+su+EKfnhIXKgq75s0Suvuu2JC3Jc0BdM6ZDk1qEow8=";
    name = "mips_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-OyqannYbi7hlX7zCGRBYFLUNBHOonf1QHM9hdDMRWac=";
      name = "mips_mips32-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-z1+o7Y+I7il+h1kaKZRMiaLfAsROyA65ciYUZaiMxNA=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-QayY3PjRbB5DBScZYQ4x/FM7OdyFXHHEFYGvMwytIus=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-XVhvKrtXJxnOJH3/MDXNIc0ufJD9R7//sojb/k2SvdY=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-UB7R45VnOKYEl7oKhymhWHW40fWLicf6p3qcHluUaMg=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
