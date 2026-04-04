# 25.12.0-rc1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-99bgzlyYc1qcrctVhIt69C7y3PTnxSG362BAgdo6tP0=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-y4Ya8Gj/DHnkqKanlb0eVM/12HVXDC8evIRh9/05gRc=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-FdkQHYaT+f3iHQoDEWIVxOl1ro+Ir6mZ/8+Ju7qq6FM=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-L5CAVdKTotD0jGRW/KXjmql3/oGujYlcw4/f88ARQbI=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-H5/XbAsxrOyqg8KLHfeZzIvHXquSNHi+1ojNxJFThek=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-8e2eF8rvpJMtYVnoFPV6FRKM/XP0KcKzLlU+D3EqDHY=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
