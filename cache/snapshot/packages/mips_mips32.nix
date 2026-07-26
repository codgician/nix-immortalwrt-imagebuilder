# snapshot package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-mSVzyWXDEeLMrflISe6Hm8e49p9qYAcsLFy9nzraHp0=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-unf8l4GjWGdm+h3xz0809Xi++1FiNIvAmAVuIbGfMWo=";
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
      hash = "sha256-Fq5nClJ5vsg2agQ6qYDv0UoEnd/2FkyVOywYpwUaECQ=";
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
      hash = "sha256-9MeqauotTcPIvCdxxdhulhCRLTW//JOVtbjSx24xcA8=";
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
      hash = "sha256-wvTNpc3m+4WEEfFsprgYz/Zg1I9IfsJ2KrxFNrN6iXA=";
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
      hash = "sha256-utgKn+17BxeexVqh/UE4lbgfqOHzpvn6cOMwmQeLNnc=";
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
