# 25.12.0-rc1 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-s6ghFUhCk63mG6hVeg+92JcA8X+QwYSHljp+bOlIlI0=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-wnh/5LIcUzRwhW5Ryul1K/GLt7800165AXTyAbtgEdg=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-WbIQVglGsqpo88ZAuOoY+pWgLyhgUVYpt7LA2D4R4m8=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-4Y3pfv/Vc1wsD9NevM2Bl8shkwx5Cz6nAZ8VukVzRTg=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-C4FWMnE68rfMQFvRQtoEp//PqSu+Eozf6l7x2xU8RkU=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-QNAz5FE1U/pVf/IjjSpIE/kTCmDg1VEZ64Fvk9EGaCY=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
