# 25.12.0-rc1 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-Iaf64Z2xdYBkRogo7sHFMohZJ4u4Hl8c+OQE3Bkwcjk=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-xMgvCaH76LT4yswMLrfgl6qpadVhSiZQgTUSoYcKwdw=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-P2G5uTnwPQaf13T6U5X95lnyYU/X0gfVL+DulKtY2tM=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-9DTeNGDDuZliHkoyGFMYEoX5OIhhz4uKJfM8jl7L3TQ=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-aq5nGRoYL27cStqvQ2eisnIZbxbx2O3w46Vlp3gx4ak=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-i7qQTMbP0RdhZhSGjDFCPAGBsn7NRZsGZMb9JVNzMRk=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
