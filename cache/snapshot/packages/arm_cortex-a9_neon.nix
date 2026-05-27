# snapshot package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-LlBy5eeTg8KREcOk0wU+Fkgx8p49O0dBMtnDKQaXn78=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-QFLsS0dGN3NjIQ7INmlw5Q/TVit7U1gpvusS5ix+5XY=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-zjsTvp80iNZr/l/vdrE1KnA3/1JvvcSVt5SGI62jO+I=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-a9erMru5D4QP8pKVu/8seGTiJqzTTHoZlgecPRchESc=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-w86ocNu8BdaNBu6qR9h+GJqTK+L1pXfco6t6UxKXJvs=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-nVTGuf3KQlYWO9+hP1CJalTWr3hBSHqN0TKAHjRSIi0=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
