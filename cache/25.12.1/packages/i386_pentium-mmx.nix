# 25.12.1 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-3EonlpHJo2wHGAxL04/vPo2C/JV56z8lMbvb34geNvI=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-8fspyUg3NNcJtmXB9guWSRiW2vzguc9rUNL+7BILjdQ=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-dpPNoooawOHKTmV89Pb3utmJHsiNn5ohNIsRfNigzA0=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-BoawP9O1G3JGGlKqXhaxLs9962ryEJ5vEwwT25PhodI=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-skvEkHUP0/T3rLBsfDSO0M6D43L6LOIlJSISIH1I6Ag=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-IsYb3SxmxurZiwm0snTnGcrIEKsI+9oPFV9igg1++oY=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
