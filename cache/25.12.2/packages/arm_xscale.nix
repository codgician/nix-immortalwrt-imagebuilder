# 25.12.2 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-wkUbQk1qRT02SV8Zwoziyhb0elz+Kah9Tdm3asNLbEc=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-mex87tAriVbSmE7Ewor7iUlTBulhXv/15knhKSO8kkM=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-Ge2WqWlm0lqO17SgiZZ67BMpCWRFymV54Z6aaild8bg=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-0l1F31ivNG9JVwYarMyPCNmQ4d+WVdOocmdWjPfHFDI=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-oKeTpht2YorzE9v3t9LZmxZrZKTQxtQ851lbAt2n0sc=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-9+6Gw600uMSMMOmSAF0TUmCqiDKTnQ48zruqxLeigCg=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
