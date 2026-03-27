# 25.12.0-rc1 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-gDNlClbyEkOb8tQJij8jUfCRYlPJvW2WHqvAGSCMIjc=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-yNLrNWD38c15da70K3AzuzdvW7v1F9wKNFmButjPV3s=";
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
      hash = "sha256-+p4UyxI7vsw2n/OocdPql3W4Oxo79YnxvKCYFkQ5iJU=";
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
      hash = "sha256-3tEGFhm40od/WzxhLqc9QaMHpgtXX82rxyvbr5A2f7s=";
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
      hash = "sha256-ZzLJAaYy5hOZvvFkaRy32hCxG9aLzXzX4l5Fji/cEGQ=";
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
      hash = "sha256-Y0nXtOar3euVnECdIFmDaB3LDspmco5rIBwVWMCGbGE=";
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
