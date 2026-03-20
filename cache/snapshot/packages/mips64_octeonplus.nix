# snapshot package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-cUnWxjWt0TnXGldFgk7eqyB/urZ18naTH1pYZsah62I=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-g0/ExwBomOEyYYbdHSTRCz7E97ASAxbtXrXCOeOc1bY=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-V4evj3qwJ6oCLtH5N+MWWHxM1N7ZFw6gqZVmrihtaSE=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-N5Cfd3NXJDZOtvkm908wOCeKRMELtqsWbMYtdq66yzs=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-xCrmLrug57raUpqTtVmgdgwtsXKlpBihaeBUZceNSFE=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-2gaA6ea/O9asOctdxBq5L1DUUorpTFOPE6ZNqo/VXCU=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
