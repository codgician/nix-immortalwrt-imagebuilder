# snapshot package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-K24i+mv+qmlXIGAMwKMOzIBTGzSmvLpU19Aowsx/BZk=";
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-iTGP05vw7jG/Yhwwz7XEdxkdpU2RNOlNSg6n7ZfIMgo=";
      name = "x86_64-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-EeE+g5MbjV/el6tbMmS0BJYo1erT4x8aKgqlE3y1y7w=";
      name = "x86_64-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-wd6AfanQWgGa64e7atD8HXL3drVC7uM1p1699q8aZqM=";
      name = "x86_64-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-Ez4cr5/9Ka7rG1PryG5hlW80LEcckb28T7vCL0D8tRc=";
      name = "x86_64-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-agdXwuzOtbKkT0NufkUNK0KvsicbjpPSzo+O3Rm4+x8=";
      name = "x86_64-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
