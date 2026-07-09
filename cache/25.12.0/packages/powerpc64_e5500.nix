# 25.12.0 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-qJ0xyJL3Gg0HRQd/c7vOVnAlQBdh08X+8VpPqQHPf0Q=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-PE6pFRzFbAoGDmR9CEE/LKSl1Jy1TzvSXtTlJlDobCk=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-gazqJ7LWhtrIEX+FlmxLrAQ2KxLtWkhp7nSDmXqElLk=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-6ur+FDwR5CRpI2kc9W9TAJGunGqS2tIpzpTlGANZ87Y=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-yayfCO3Hcj1KTQZq6KfOITtVkvWAflWiBYek/YUy/xI=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-CgSk5vDGPyAXrIHH6azwBTGpHCg6B1YOi0i47YGGWio=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
