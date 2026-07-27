# snapshot package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-n+WyuJJh7MZvtjNpZOcJ0vLuXMq7VoHyj5Mc03gnBgE=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-QtefWTY15LYiBTeBSui9p9yb9z1chjtL1aftkglyyks=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-la/XTsMYbyD2vz2Lo9DJj7g9WshYTV1Mg32a4sJD1DM=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-RitMnnlcD5RgTKgmRJ5Dxj6ZwwyVB1EIKc5liJJrWHY=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-u/+Mv7p+WrAmgs+KQSJEP602soJDODsD1LyuyfazCrU=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-j6tH926cxtcUKO/c5WZIhat9MwpuHCFfyHprgZLPnjs=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
