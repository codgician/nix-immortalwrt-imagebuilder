# 24.10.1 package feeds for mips_4kec
{
  sha256sums = {
    hash = "sha256-/Dfw3MFEjMX17hkh9pa68+Lk9xBAO76vIWP3pUV0w7M=";
    name = "mips_4kec-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-9/eYHFxPNLFcExquILi1RCXDnqQUOTxakomjhx2u2is=";
      name = "mips_4kec-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-4KY+vMW0HZSiOZ4FNjDUi7bRNciyQ4Uz2ZrTVzgbc2c=";
      name = "mips_4kec-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-YQbSqNYkj/uWhAi0tx9fkVeQAX1lVjH545AFEBx7Mi8=";
      name = "mips_4kec-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-Pcf8xIDugS5R6bTgSTD25pRcNTBEGSaWdYyg8dESEU8=";
      name = "mips_4kec-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-1Suct8I7Exs9tfNmsibf8nhySEoErcqSqdpKxEctaq4=";
      name = "mips_4kec-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
