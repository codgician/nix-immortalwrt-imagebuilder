# 25.12.0-rc1 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-4LvzxLtHbjmQefFfbhpMig9b6BtnRcTcutgMH+VrO+s=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-CdsHXETmp4M8rEzTm4sJtAH62x/5S4NRjwsqgZUHH+M=";
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
      hash = "sha256-8dr+6Cf4JExlDdD+o1O6RwbxCEmmrbldMt5Sosm8gEk=";
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
      hash = "sha256-xh9CyzxEZObkz7xVoqA0XGa4dFi2FkxxvTiWIAPrwzo=";
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
      hash = "sha256-GNszVHoUwnCe1ResXu0Rv6FPpGn9OAZdJziP1bQ9W44=";
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
      hash = "sha256-qmaKukgkdwK8n2V609aOKt8I+hpgC7vZconRrSrl/uk=";
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
