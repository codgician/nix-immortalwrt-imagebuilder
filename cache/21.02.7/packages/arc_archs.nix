# 21.02.7 package feeds for arc_archs
{
  sha256sums = {
    errcode = 1;
    name = "arc_archs-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/base/";
    sourceInfo = {
      hash = "sha256-+YJNRTrcF2YQ+sVf1Nwgro1lkQuGTYZi32XyQmj6PaY=";
      name = "arc_archs-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/base/Packages";
    };
    packages =
      let
        p = ./arc_archs/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/luci/";
    sourceInfo = {
      hash = "sha256-37Su1UeuqICMQJtpoHqEkt2jKkI/zxy45VEj84BTmSg=";
      name = "arc_archs-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/luci/Packages";
    };
    packages =
      let
        p = ./arc_archs/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/packages/";
    sourceInfo = {
      hash = "sha256-lLyPp5bYLmcuKJZp90rL7ILDg2INSvBwo3azCB4h1sw=";
      name = "arc_archs-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/packages/Packages";
    };
    packages =
      let
        p = ./arc_archs/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/routing/";
    sourceInfo = {
      hash = "sha256-Bkc983qLIXRZ725csUFdcY+/8t2UhbU93bQljxlVzMo=";
      name = "arc_archs-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/routing/Packages";
    };
    packages =
      let
        p = ./arc_archs/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/telephony/";
    sourceInfo = {
      hash = "sha256-xxofM2bVOSXQ6CpEGnbPW5sAviiu+N0uJmT9FhdiH2I=";
      name = "arc_archs-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_archs/telephony/Packages";
    };
    packages =
      let
        p = ./arc_archs/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
