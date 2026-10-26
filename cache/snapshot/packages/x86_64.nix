# snapshot package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-nyx1PdVwLUwR5oDuPLBJ06j4e9AtMWAY/u8yPMLJkoQ=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-G1zTHz5qYh23PakgzKCmxPWWkclMrhtHKUtKcuMG/g8=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-usTwNJ+fb/DfMJEm7LKH5td9BzT8WVzuBMyHrpWau3w=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-DdBftAhsPodZJG0rGAL5riO15n14txYvjO7sXtWjPok=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-u6wpbRZopVSZBx/T/GkLVIh5GzECULjS0OR1r5NF5Qo=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-q8m7qwIuUoa8FqsA/7RZ3MmeTIA1eve7lk6Rz0CiuAQ=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
