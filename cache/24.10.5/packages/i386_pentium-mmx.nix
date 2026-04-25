# 24.10.5 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-i2k/Qq+NfnAzgB7WYi0vwhr9LNJYDTQLzUpKon0G598=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-xALtcOrRLjQFpfSEb3uuguDabCEn0FTcikR3MpdcSv4=";
      name = "i386_pentium-mmx-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-TyvFcfSe0gbf1+XlT7p8yNkiQHFhqhvTEaBTLDOmTQw=";
      name = "i386_pentium-mmx-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-zXFXwduVIEd5ygqaQHoex7joXsfMY0OpdXkW4qxMnSE=";
      name = "i386_pentium-mmx-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-KF4+d0fp+fomBEAr/Ffv+zZCofKzasRsq4JXz8JKFtU=";
      name = "i386_pentium-mmx-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-i9N+qVSIWlOC8OAoQq2yHUt2y4soCglnUof51wG/D+A=";
      name = "i386_pentium-mmx-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/i386_pentium-mmx/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
