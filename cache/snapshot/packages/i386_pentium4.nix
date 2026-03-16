# snapshot package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-Bv0wxk5TDmLH3Ee4VFXJKB1ONKeJSQzaI3D6J/FidP0=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-P6gJjdrZnMs2PEwX1bK1P1rWJ5aKWeOBLATXiRe2KEM=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-Fenjj2BiHtQOpyPrBRVp18EYRS98fcXUpLUXLA6Fr48=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-2BE8pw/N1ZFWqwNNhrDPpl5FjZFgU02WcPlA/CDnsr8=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-na034hL3Louvl3K8dJVXfZDQMAdBHCYCx0gy1N1y9Bs=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-v53JlWj+Ncl+0Ks4Jds8x2iaEZdSsxa4ebaooyRqfgg=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
