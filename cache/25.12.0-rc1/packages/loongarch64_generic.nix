# 25.12.0-rc1 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-r4goJ2WplBR52vmQxVFBlqgEK+fEnUsr7QVWnD0hthQ=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-nY7B2gv7r5qYB36cPTVXEmyOPyfbxfyXcZCKO+wxfFo=";
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
      hash = "sha256-obS6APRFgAyPaYuy7X0dcNzMOL1Tbz3+UXscsNHzm9M=";
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
      hash = "sha256-Dct7D54C88Cid8KeGnZzJBk+KdIxPKpl3FUHL6mKPY4=";
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
      hash = "sha256-naFjAWYsK5gP6APXUrQG+WKq/D+WRqZyoNMPSCfojj0=";
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
      hash = "sha256-97MbPCJho4JJ61shptjYDBnoEzWbIvLIFTWXjNtm2SQ=";
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
