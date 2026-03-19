# snapshot package feeds for mips64el_mips64r2
{
  sha256sums = {
    hash = "sha256-nn9VSR1YTFbCGITOrteUEpgwkDQnB9hp0+p4Cntbf9Q=";
    name = "mips64el_mips64r2-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/base/";
    sourceInfo = {
      hash = "sha256-ILOSax8xq6w0l2jNK702VYBlvaVE7VTDLdMJBMnW8X8=";
      name = "mips64el_mips64r2-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/base/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/luci/";
    sourceInfo = {
      hash = "sha256-aB9YkZ9eZjeFFt65SqmlEIinXX4lBxLOkjHUDyVohX4=";
      name = "mips64el_mips64r2-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/packages/";
    sourceInfo = {
      hash = "sha256-bwZYNqL3vwXkaWKl6meUPSQwLODR4cY4Uubt6JNBhZI=";
      name = "mips64el_mips64r2-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/routing/";
    sourceInfo = {
      hash = "sha256-7yJHh6uTouCfvBsJjXl6rkopnDE4gixwQYXz66aD0nY=";
      name = "mips64el_mips64r2-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/telephony/";
    sourceInfo = {
      hash = "sha256-EvHk01f1maMA5iWXuj5rbqEdBhO6E/JbFLcl2rKvb0Q=";
      name = "mips64el_mips64r2-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
