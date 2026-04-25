# 24.10.2 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-HZmXxyUaE8syOcw4UiBMdUa7OnaHdoCJ/7Q0aCEFDLc=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-wXrnlFiZJxVV1efQOtJVZQt5uEMZDZ4il+cpcm/7GI0=";
      name = "mipsel_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-P2CPLZzz+3kxlU4hXRp46SR1B7cqbaUPjPkST3Cmyec=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-bdxGLDGHO1/ODpJW6DHYvF7Fc7Th6qH3OO35qFMZiBg=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-MV/VQNmK9CVG1Gf1eAdyjIf9zTWjFIGV8phmXqCDHAA=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-NZZp3dG+L32HyMygNDfRPI0tj6i7Dy0zmjl2QJiiL74=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
