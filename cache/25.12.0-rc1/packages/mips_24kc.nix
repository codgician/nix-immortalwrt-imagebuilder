# 25.12.0-rc1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-Av3eWgZ5jxVbZwufGrjWugh+u8T5B6OIdodetJdbs38=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-WF0IMZikHnxOC0QgZOP26wfJiet5Bv8wgaEm9/eY8H8=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-nlxLoqiuN4KVttH2Ygzv5WvxR2cVqsaOHax7kzWrd1Y=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-BmerpxouX3tWGzTGfguRQPC+EVfzU51VrgpgxWCrip4=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-Cji9a71Yq/628QEeI8+3Bh5xuCg4EYWA4bMmliWBBLE=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-TvFn38iXPbp8MCG/m+5Li0coEIPuLPp7AJolisdTCXI=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
