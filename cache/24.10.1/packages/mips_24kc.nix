# 24.10.1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-ig/Yk9u+D2LEkRmiO32sx7s/NcKGWmCKERuPAU8H1LQ=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-dXM5xoJDisXKzz1L2wxDnaA0Wu4WXc06n2QWzevMkH8=";
      name = "mips_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-XZJLe2Os9HnwogIhCZXfQxv68vHhXltA7+5cthxOf74=";
      name = "mips_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-9WwfG+vhDe8DVHl9rF38VaCIY4N3khhCr6uSXQ0XueQ=";
      name = "mips_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-sOTYJnOWzquKifP8+JicL2amMSCOOgOt8kmWNk+/csM=";
      name = "mips_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-6FodHSiBmt7df1OGPb1cONx2F0ndpje19++aettvb/I=";
      name = "mips_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
