# 25.12.0-rc2 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-oIzRoPlGxH6QZNZbkMfguNI6+2FJ4wRskWlD68a1ZvQ=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-P8O0gFV9UKDXKE3RQeYnspCbtIO6RjDBKwTGbQvmt6A=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-KkuFVJMbHZQkkpR+qrDK2uY/ZMsgnFDQiHLy8nFfkM8=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-Y5aYzgulq0oiI4tvx8ugV29pC5wNugCKTxTREx1qry4=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-9DahYuG+BMbWPbyt4ZHzAv5/VfWtZLghZFQPnYLDxQs=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-zH6tWQVQbcWHE4hCab8YeEVH7X/fhSRVs++ThM6s22Y=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
