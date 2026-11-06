# 25.12.2 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-RNj/9W0Rqq6B1O4sBOKLiBr0t4rG51QsbNFfvWw7mTQ=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-6dYMy4IveAEYWRG0Q5VWPVsKUiSGQpGpvO3dFZ4EkUM=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-s72LZC/Ee5OqIQ4YPuuTMvEErJYCKYRWbnFvmjJbShc=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-a+l/QPvlmifAxAKXOkTp881asQ+7nuI8EaEoAtHr6gc=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-o+pdiibKEOanjxlnBImagqbLddt2aZTeQ40mA78vHkA=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-P8dU4Ihu1xEvHyErwnZI6/i5ua5RCT8HbY+7ddL/eQs=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
