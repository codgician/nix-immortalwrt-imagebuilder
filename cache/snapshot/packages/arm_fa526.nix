# snapshot package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-maMR6Z61IIpBewAfgZD1rGn97sOLijYytbwGKbuvtiQ=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-L24yL+AVA4DJCX87Bz/AjvmA0lXev9zw/5h+PEDIzcc=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-wUwhM32fLOnmadrnK0d9w2EtbB+JVbjMxFYK3XHFyqg=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-NqMIJLUPSZ8Vv99m+RoiL/wyF1ZrTnxbmEOo4i5hlLw=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-4o6Ld2oF2b+or82mQKQew6sPgL5U41LKkhmW/GcKjEw=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-nVqY1LbDwIqeBnFs0vTeya2hl3eEg5Nr6taiOYOEWiE=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
