# snapshot package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-XZBxPzjtg8Q78wIBy4y84PL5q669z5xJ0IDLSRLWOZ4=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-oiw91LDJ3dwhlTaoWxAdEXVbMn2fPBLaiCItlTrPZd8=";
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
      hash = "sha256-1OPWzpy0p75TFhry1Ls1KHN+e4TKhTdgJLjea85gbLg=";
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
      hash = "sha256-22IIxN+ERuw7rOw62CvG7hF1Br+6c+9ORrV82oWGISg=";
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
      hash = "sha256-6F9mdQLZ6GvJoli7IoZINMbNKTiKsW1nAI+t/hnDWVo=";
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
      hash = "sha256-oydWKAsNp3fuRhO/3wEtfEu5csuj5Y/3f2xHsdIRZwU=";
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
