# 25.12.0-rc2 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-f3I1h6sbqfwk/Jw57qgB2oT5kOUwS/uhmnOr1vt+Pgw=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-neazfPtDjuhY1y9T2PNlm1tXKoOGm+ChxmSA6FyXk3I=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-eUbpanV1TIt6MMlIZ5Ru7UvsABlhLXmONwHsXBCTyU8=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-aJ4C6jteWi3d29RI8qghmtI8fD1McLS9Y9Gz4AxEj+w=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-5lQQTQxLP0qEvgwjXJ+6+MuhICRraaHYkEGZzjzfEyc=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-mWdLTDAuva1xoujk8kAEbuBGWth2EtO/MgBoQ0AuNKE=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
