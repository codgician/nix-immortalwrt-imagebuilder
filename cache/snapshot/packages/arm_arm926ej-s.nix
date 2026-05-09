# snapshot package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-khUE7ztNQVfNfc+5ql8hqYSIj8j8Naf4aV/JIUGGKKA=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-gfbxas+X51hMqowt1Zv5aOatACger17RC5ovBU+eFqY=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-Txi/bMfv37bG+XVYIt3X8HT4X4F9ccij9K29SGfiQck=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-e/rSTL6mlW/zpa3BCJgHNTheDBec5LpQTvAmWHvokCc=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-c/pTcQKAnktGFRHhSpX/gqVMH7+sf/OImUy6wUS8U5E=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-qksWp7Uf+MBoBqLRaB27/Lb1zLEuzmu3giaFbJmtQGo=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
