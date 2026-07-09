# 25.12.0 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-yKUvH25WJYIIHAFsEhtkYIxDfZIHeyGvhWgzs3wTvj8=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-HeUbDCstSbwYbc4/Z9EnIegzMJ4SCQKWITu+oJgWj/w=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-23qufKoj2h03SWt6sEovaG2HqbP/0PYOzs+QHQxCgJU=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-+DBhEcAoqUpOfChqkOArIBD5m5flSmtnpU12161L4M4=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-SMYwXFUtL/zClsP/9u5Cnz1V9AhJ2bXtcVfyL7eTMH8=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-9nq2Wz7L3qAO9e9BFLf3C0YBifKrp8uilnfgt/jcxVY=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
