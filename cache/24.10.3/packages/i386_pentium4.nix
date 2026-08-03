# 24.10.3 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-OgEWIwuoNgpYtrTKW31sLjYmbXHofywsNTPgKDCUnM4=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-0GYcfwdvyuMnEaAu7btEJU2Ebxqnn43ImZwEEmocoPw=";
      name = "i386_pentium4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-Q4xUgMfPT7wWNfYuZumkT94u+eA2wTLrFXy6Aia7Cvw=";
      name = "i386_pentium4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-m211l5XMkk6Uqk6iua3qZn9TbfJlRWRt0gFxj/F7pcQ=";
      name = "i386_pentium4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-yW4YoXLgh2au5rbZYjdE0Oe1AedKs2i5qAGSj9m7sLI=";
      name = "i386_pentium4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-OnEDlXF2gxGGL8GSgt7yZJvHqeAgMXTJQ0BLg/knChA=";
      name = "i386_pentium4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/i386_pentium4/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
