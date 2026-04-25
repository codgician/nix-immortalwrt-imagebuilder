# 24.10.1 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-1VPucNguLdjZ9SmYdkXKIB02g4Yk5xkX/TIwbFbuuSY=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-EcouRmoxcWymXAFXfzE3ejkycEo2MiEJzFPr8we5hks=";
      name = "mipsel_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-KpUGRY2aBnwsTBRfWMmbuCt3w+TAe2nsF44j7OGoRH4=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-CXpbT13GlHAq8SfqAfbGIIW+GKwGg2FA4ZzGAXVavWQ=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-euHZDrcbGrgBUVvGI8J87ViEK10Ryk1bAObusHvkj6Y=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-EMoP6t0CEjR294M2UBDzYkL0voBNeqqpnahIHjdY34I=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
