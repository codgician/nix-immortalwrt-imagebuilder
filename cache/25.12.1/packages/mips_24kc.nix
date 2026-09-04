# 25.12.1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-J72PPmT+K9IboE86L8Lm9KAG/2+tnrw3EiRbiOtg29k=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-UCxWQLt7fJ63l55rLylj0uhG7BWEjFecS2nzqd+Q96o=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-4++hji56ZMEizJvyY2PvVYTvyEE4PN6OTLPIXdcl0JU=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-HP+h9Fh1NtkOEW0vwL9DAJADGxn6/E7LYNfS4898ioc=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-KEAA8Im0geS86nNP4pWcE6fSpFCe30MkYnT9IEbxtqA=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-9vUrnbzt5BODP5r6K1S5fDK4zV+eiIEp46nunlX0DP4=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
