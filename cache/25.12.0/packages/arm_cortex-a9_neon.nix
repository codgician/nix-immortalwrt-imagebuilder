# 25.12.0 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-7kre+Rsyx69jtd+l06O05jXxlYhjk9QhPrvXcBpjwMk=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-GxXCoP4X2DjpWxRKsnSvujzXVq+cRue8GvcRCDCPi78=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-s0lmDgc5NgNV/RM+icSwogCp3ldwUwrF+QmsBK/lNt0=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-YktXkXPsQb6uWZ1F3AYeEQBNcZ8KvLZEvgADlspdRbo=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-yAhXwL+WS+yTcgu3OWiDUXe4fTcDH3BNHgePWsr9zq4=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-wLdAbvQFNrWoWGVEjmtcKvyN9J1mhL1SvxpsymsT/jE=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
