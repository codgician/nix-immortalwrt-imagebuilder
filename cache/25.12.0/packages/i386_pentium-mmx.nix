# 25.12.0 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-Llx7wYEn9EICSvIcJHwl0mO7+m1oPNfSY/b8DN+O578=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-SMlQZwXUHK+7OEwCRHavcuS2OhFpnt10cjRZK68HqnM=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-9sE3M61M5u9WgKJ3ufYb05RlzpRAR/kjazKlAgH1CLs=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-zHbmBiQloTpCtBeHD6S1MZQVGXUtzqpqPezY5XDnXvU=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-OwT/NIuEaWCIDmryoS/QfUzoZlAr64L9IUSK8P+S/go=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-hOboFVt8rBHxZ8KoEJQ6zHnqK3TMPKUJofmciVehZTA=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
