# snapshot package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-pbveeJ5Hs0CpCsUWprW2LH5Y4tb2anDUk3kZuG5ULRg=";
    name = "arm_fa526-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-W4ygXEqN9hBf9KLSzcOml2hC9Pt4HHQ2Orh/1CAVA7w=";
      name = "arm_fa526-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-l9PPuXqt2kPj5EZUDqr0m0V/hm+G3QJWhjvoEUJncnI=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-8PJ9+G7aqeeD+AM1/6c0GYbtJKN4dgmu+LXDvaoQEks=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-4e0OZbwtUVanGCIYzFgujvKpCtAGD12GlnGvo6aR0lo=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-8oiSJs+TPlrT3NurB4lnZDoDAG0B9EgFBNhqfBg2vRY=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
