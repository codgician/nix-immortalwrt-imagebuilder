# snapshot package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-SQ6da6aoW5rJ2TU2v/epbIrtxvUhiw0J/RUUngsk+u8=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-or7VSeemv/jcfhKN5nbvtcZrnu6irEtAZ4V6Y775yHc=";
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
      hash = "sha256-5TFw6jFlxwLW1E4qzXBM/CrxRGdtJTiKPn84GEzpPvY=";
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
      hash = "sha256-3glEErxyz4tJOO9d2ydbaM+g+sQiQmTspobe3CXZ9CI=";
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
      hash = "sha256-nQ7jwAXPuZWV5506oP8xwS1Ju7wGkOB//uhu2kNaajc=";
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
      hash = "sha256-qpPaVl6YgYbWVDbCQC0coTSjRl/fNC1+2BaVGDDUJdA=";
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
