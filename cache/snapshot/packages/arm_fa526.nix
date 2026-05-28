# snapshot package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-rgqQaguUH+yaWSy/5rwKAR19H2axdRUXGe0QRUf6Ur8=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-ePpmBJo6RXhRkjqqCkC+D7n/Om7zU3q39ikcNZPQ5f0=";
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
      hash = "sha256-pwAvbuOekfpQpmK7aStL52wVlsfmRKxxf7YBBwzIKFo=";
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
      hash = "sha256-vqEFSo+JX2NP9TnFje6LRexIqUJO59F2LPwdJCKoACM=";
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
      hash = "sha256-HoubhJhrXfYThKxSOKPvx7YozsnmNjLuXbCvqA4CqqU=";
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
      hash = "sha256-VjQI+jKFYzqB/cYONEyZlvwQB0D1rWvgdAwU4/BLcfY=";
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
