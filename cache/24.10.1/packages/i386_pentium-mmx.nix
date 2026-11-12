# 24.10.1 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-FYUvrtjf3qUo1nXtsuB+PvdHKJVZqOdNW/L91mWxIPM=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-lGIeCWBj0DEQbRda+QZMqsqPcGczxi9o0lQHz+Mu0pQ=";
      name = "i386_pentium-mmx-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-9GeKSCWPzL5B2bjmdRVUcNR2LSWcnc+2UsADRi7pMCU=";
      name = "i386_pentium-mmx-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-PbnckApHZnzAKutsxGQhPlOpTEuWpnXwqBeT45A9wck=";
      name = "i386_pentium-mmx-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-J+DDQEOkwEflI7KlTDEWllUhLOJe20TZoXLKK8Sz6DE=";
      name = "i386_pentium-mmx-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-b6x60lxOvxLCUJ/evZzMw8+9wd9qVfBrhxsHDqmgdeY=";
      name = "i386_pentium-mmx-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium-mmx/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
