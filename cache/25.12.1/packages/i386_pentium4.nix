# 25.12.1 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-Kxh2MCHspAPe8+IiBTo8f4hJfL0prLBIUvNMc3YDiqM=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-y3tBmCkOmkGlp3yMo42ZqGX1MFyIy4UABnLEk0RwPyQ=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-tM9w1p8ccPgdfSixS2HsOisEDtUjahJoUWxoigQococ=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-t75cFRMgt3jM08/1yIoh1VGSAiQX+vIMg7mDF/HBceA=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-gCfe8rBa0cvrdRsmyitXW5XaTfCSFc5lhFjmaUYzpTU=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-LmzafuvWePCxeV4D7yUlbUim9mj1nZy2BienO753PSA=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
