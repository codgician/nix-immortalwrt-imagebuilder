# snapshot package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-hWBIxw2Rn0UlOhUHf3JD0prfPPfQJV3ugrbQ7pzUdek=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-eTCIYGFDczrzSCZ8s/vMvrA/yvDRLR3ur6RjDDuRQQA=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-EKPaAnR0+Yi1kuYAKD31d/pBUlSNJbw/UeJjvxiKaZ4=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-0ac6NpUIDl+7IRoe2DZmeAuydMDdSXZkZuFskLJYmiU=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-3tpTVtX9yFsYfw8myFWDmdagJ71AoAc9B4yQPsKLNws=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-L6OVYjyOvbil2p3UIMJNJnrHvE/TFZasV9ElltPi11U=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
