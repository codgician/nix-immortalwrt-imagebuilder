# snapshot package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-4BKd+CAQ9kWKeu0FScegqv67RtBLiUapc8QUdICYcRw=";
    name = "i386_pentium4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-RMK2RpNMgooOQguer1kjEJ0zFm3vI3pfE3JOulP2RyE=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-TS30ZFAzOz8Mb0MzkDcrvicrzsl8d/Vv+XekaygT4jg=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-57R+E6poy/vvf5YNOQzmrPSggPlmzyzxu8sQCWcmlBQ=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-KYvDG+z+gPRbzwybWa2nntuplCAGHuUYR2fBW+ILMhc=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-jprLI7+rFiO4XVVzsz2JKEQTeoaF3ey5O7dhZh1cM/0=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
