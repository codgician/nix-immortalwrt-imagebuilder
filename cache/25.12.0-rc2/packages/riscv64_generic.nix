# 25.12.0-rc2 package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-mWIDTVFW9eJNCENZ9dwi29WnCTIubaYqOS0kEiUWdAw=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-WxTiJYhVNTgjvhsLkIxMJlfxbzEuMWig4+OAP1O/Hgw=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-Pa7CakGkmSnZbGm+VOmsYEsg1bTbKiXVkk1INbPBY44=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-U8bT9ugK+eZf6iJSVfcx9XpW5KtWIgTMY6j4n+ERhaI=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-TiDo9FImXE5T5KdKTpUP96tfrHG7KjXB8WzBe2OBqsI=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-3tTLu2X2nb6Nb93HqsOj4MWrWrwqlC9oTzZzMFTBONM=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
