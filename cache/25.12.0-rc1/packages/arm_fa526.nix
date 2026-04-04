# 25.12.0-rc1 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-MBKCJRAdsbrC8pe9kRHTH4fY90CNWIlz/quKFks7v7M=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-GvPRmSxJkJC1ojNfN/yx0nvX3Qq8fzdUQBAnyGldMQk=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-D5WgNqZjdEk1xNKHFlrhzAOXPnEPzXLV7lvBKvR857I=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-TL1JvLT1ZPS0Tv71u0WJLNcvI9vx3ZCRyIY4Fj/JNB4=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-DFqaPGuzmsOdcq6NCQahaUROu4Y0AIQ3AO0mIWL+xKM=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-FbHe83eq1B9T8GEsu72w0ke/OFZVXsQJu03yors5JNI=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
