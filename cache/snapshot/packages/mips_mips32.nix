# snapshot package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-woDm5M/uXoOfoCMkwceq5lxH7/Gj8f+xFBj5T5ohPbM=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-jvbzyqwocqn6BsVyuQYYAi7i9UI/1k8h19N2PeLZdQk=";
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
      hash = "sha256-CjOJ0OXZUgiM5bUzhtrTGekcuqXwM+SumcY5tk0CBGU=";
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
      hash = "sha256-1HRbgPLqUd8DNanW49miX9YdO8qmI1s1P/Bznno91Kk=";
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
      hash = "sha256-rB0xeNxWaWnbV7PmhYg6qxjtJNE++mdVbXqh5e/uwaU=";
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
      hash = "sha256-tI/jMTYR30gShcxKAyzyA+VGJ4GRgKDiyYqLm4+94Bs=";
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
