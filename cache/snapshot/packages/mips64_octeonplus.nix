# snapshot package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-lRNw0pj9MtlEojfR5A61foNBo5dvLwt9kb36kcEDS4Q=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-olTawJirbX8LaXmzyIUuNrHfKeOvo5+FhmJGE7QecaA=";
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
      hash = "sha256-AMBZMO+mcesC8TqPeM/6shq+BafO5gTvf61fkzTD4hU=";
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
      hash = "sha256-93PPeD+XUOn9LR2i9rLRitTrlM0qqmFbtIxCKNnTmuw=";
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
      hash = "sha256-LhaXYS048rnvpmg74+u16oT2ofI6I/dr0D2+wmyhsMI=";
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
      hash = "sha256-glhYzeDI94gqznarEBh7/tyHF/iu7ChbS/IRLhqK53c=";
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
