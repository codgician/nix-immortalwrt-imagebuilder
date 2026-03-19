# snapshot package feeds for mips64_mips64r2
{
  sha256sums = {
    hash = "sha256-fDPzzFBz6icdfx7VtRAN5zZJDzuJ+H5/Kii8gd7CgUE=";
    name = "mips64_mips64r2-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/base/";
    sourceInfo = {
      hash = "sha256-2XgOx1wrjCNcZHp+SufoYvszKXHdcukJi0RaOAkgbSo=";
      name = "mips64_mips64r2-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/luci/";
    sourceInfo = {
      hash = "sha256-0EWtXm/T+cOn3wM5feBxp7qqrTEYza76YZP5ukMi1nc=";
      name = "mips64_mips64r2-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/packages/";
    sourceInfo = {
      hash = "sha256-RA0Oen4QccCmsPEvu1elYgV/YQNGd31zFkef0tBVjpU=";
      name = "mips64_mips64r2-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/routing/";
    sourceInfo = {
      hash = "sha256-RtdxJxbyG93dIj062DENbt4a5NwIv0qVWgUfPETYIA4=";
      name = "mips64_mips64r2-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/telephony/";
    sourceInfo = {
      hash = "sha256-VJHPYqfpiplqaH6nXNXzhnjdGfLiT4ND95NUjBlzEm4=";
      name = "mips64_mips64r2-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_mips64r2/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_mips64r2/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
