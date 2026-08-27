# 25.12.0 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-jpdpvYEma7m2TDhw9u+qh5MTeo3dk3Okfp2j/vMIoxM=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-a/Kg5l7HrOcreVk/YGGBPVDokE6bUlWGzwKFiYJCMZc=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-AOTH3KSN0cB9ylnofhkJWNd2b8FGE8omel7cDsno9eM=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-hwyuQfgU9hFij138pV2zOCxFZYjCUrJcnfOpQD+dHqM=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-oqh3z485gzhy0XoCUtice8w3VPEHZINCgeRKD0+CDN8=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-wNj9AzwJ843Fad54x+yq0Wqt+3HPRJ9DrCM3yZRrN8w=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
