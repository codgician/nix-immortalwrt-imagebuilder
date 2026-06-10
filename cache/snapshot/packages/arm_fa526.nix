# snapshot package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-WHTYI7960CFam7C+sVV2u2n8E3jgfFZcgzsEEa3Ff8s=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-E6w4furWj+ROYMgB4109hi70AfetMB7GKZG6e94u6lc=";
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
      hash = "sha256-AkngHw3DM3FLm+f/bSbCsxDDPcTywi5UykWe5dpLXXo=";
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
      hash = "sha256-HB9vqu/x9vYVtKx82E/lmBgdA3HQimC1h4naSBdUWwY=";
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
      hash = "sha256-Pu8mPkToCva7+GQr+wvV0C9Am0A5JZPCfLbWMRAz9vo=";
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
      hash = "sha256-dZn5xS2yDC3WV1QvaY5u1nl1s/cT24xZ6PweMItb6Uw=";
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
