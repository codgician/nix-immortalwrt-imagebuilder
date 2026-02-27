# snapshot package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-Iohya47Idlv3pElgSBMpqTUckMg9t74HKHPjFQH26t0=";
    name = "mipsel_74kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-3EVRQcKpwH43KODiuoJ8WHqNDihtxHpMaNsY9ONnQNQ=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-f1xWdhDwrVMf4QYIr8Ae9+QmJcZICYoaTPj1PcbNmyo=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-TqKJyWjpBj3XWjyqwHrjEtEqatuDwpf9D9pva8GFoEw=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-fCSX7k/1G9HspRqNTZlQkyEG3psBm+Bq9p/JWw0ydKY=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-RizsHb2bcQGCaNpuujw850w1TXN+xPDQ+KXYafZtt6A=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
