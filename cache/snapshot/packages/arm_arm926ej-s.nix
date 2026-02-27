# snapshot package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-TV02Nxo4oH5e/P2e3R4Z4JdBlPLHcU1RP5tZKoFEeiY=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-KCeo4EHasQ2jATgcxWay54Wq/KpnJwqnREkF5BJ+RRs=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-UczOOFwSNXyQrEov6jZv71SeGDwKkhDiaEz+5DW7X8A=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-9/h2r8C5jSmzJxS5yNLzCFvLsEQ/odxm1thfLNmj7OY=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-L6wUGTC0s7HbCrWX+UT3VqUm9HHC2pTxp+JpZHddMDA=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-EsjBsE92fQ4j+6xFgbKTHEGGS8JQWKM72b/u21B3QVQ=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
