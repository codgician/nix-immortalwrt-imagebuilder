# 25.12.0-rc1 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-AdFsR4uRag8Y8iyL1yRVsn2zqoJWtC+GfQTjWhnsVv0=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-iSMjPaYTZvJzzoUnZi1B+wcNHJmaVzAojd4QjCnt9vk=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-xKemn6oozG9V5earST/G+Pl3lGn0ZnCgi8VP+0Ixq0s=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-MR/AjLBLYaKMLX8+nAbIzF+WN7hkup4unXXXhF8RebY=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-q01pcw0NswnI8MWCq0QaWfCrrUtaHmjeP9VMF+rlaNo=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-onojy0tVE++wzJFQjrjyVgf60//CUrqTATDF+JR2+ZY=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
