# 25.12.0-rc1 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-Ol/Xdg4sfTLALpU1a4WWnzE0FGtD57aA0z0GAbvF57c=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-TESlpRiRSYF/zxqtDwAjzQiojNn5Bp06EBxrrrxvqdE=";
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
      hash = "sha256-95PJ0XRe4P6RYab4hw+BaCWwx7AF4UxyftRnKG0fe9Y=";
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
      hash = "sha256-GEF0N+Lj37UGPGMdz1VKQHv3cFMnECSHK6HVaxlDfOw=";
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
      hash = "sha256-C98MSoLxiRzWdjDSBDq/XVYDhJkyH3FQnnAMKjgOkdg=";
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
      hash = "sha256-kMpsNigAt3XQhorskJho5LH437DJINujS3Aa0WK7CB8=";
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
