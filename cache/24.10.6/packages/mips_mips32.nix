# 24.10.6 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-jNfV1/fPn9eU223BoriM3OjZ8BJCxl0K1rMM9aw2hkE=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-yxuoy3fba3Ch6K0IyBPQig06rJM8301jWojAyrzL7kQ=";
      name = "mips_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-PjroAUseThMVuisDp27t1XSBj9xWwRPzeSfqy3PoHxM=";
      name = "mips_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-4yz81m6fGw6kzfhOHYhVDfN/7abbrNtD5M26l+g4f5w=";
      name = "mips_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-J08EapXIytSHtidHpnMdThu7Fjwsg3HaURPySZ8UTBc=";
      name = "mips_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-B6AEWvE6QqGszG2mJPnLN1wRRwBwdD3Fw8OyEWeiLL0=";
      name = "mips_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
