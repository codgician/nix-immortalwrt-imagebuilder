# snapshot package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-c6FUQds99v2grnhKqvMbVeTLmaSnr/Pfjw4dyXhSpuo=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-qjsprgopQc0kK3mQPXX+nvvox/AeA6l5T3E8xuVWPSc=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-CnuRZpBbWVd1ItmlZoL7yWJvidbSSrt/vrWQcd5DPJ8=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-hbO71OKqi3vCDsr+oJlb4O3sGtIb2VEYDQriKfvyLjM=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-rsvtxzrbQEoiH9CVVI8zRFvLsWCjENZu/aMMFRb3nb0=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-nU9vMklW8gKkaus7LKIlBDkZ3Bnl/LQQuHgKZd/Hpv4=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
