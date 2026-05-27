# snapshot package feeds for mips64el_mips64r2
{
  sha256sums = {
    hash = "sha256-AvwyIAdtQOVh83DxvYs9sRocYT9INVRAx3wmKD4pBXg=";
    name = "mips64el_mips64r2-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/base/";
    sourceInfo = {
      hash = "sha256-8LIrnPHlU/+mfo4vsBoakdnCbLcJ0nGPmv5HCS5361A=";
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
      hash = "sha256-JXZulGgay65Siwxmno6m7HrCV44ICpaOqOHWgyVARmw=";
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
      hash = "sha256-YWKscpdVi98HxJo39J45GTHBjJwK1L2WHy4R9rgqYXQ=";
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
      hash = "sha256-YcgHu+K3vB3LzetulnXcInpcrgUFbYrnzi0gLqbGfzI=";
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
      hash = "sha256-4DumuGWHzmdoeaZdc5Wv3sZJlz5+OpamzOvOmfs/PdI=";
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
