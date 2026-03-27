# 25.12.0-rc1 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-kbn8jGbqahoYFXOprAcI4oWNjwKfCxqLqLXaCrTVSWI=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-twTPcVM5KlAV2+rjL3UDMPDAV17FD6r/y+GvOgXY/s0=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-1pL1PwPV1N1aGf0hWfAbsAPbQMywoOqe2t578stetYQ=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-wm9Jkztc904ZTd36y9jlWc9qBBc4P4l8+Ad8G3wRLP4=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-t7PlDXqa/glsnZcxzCw/lVVhpkD0GwDQkqDvcQmJr/Y=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-zD3nF9EPZxzcnHcttrZU4u0bJXj6OsJOx3mAUP4HvTs=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
