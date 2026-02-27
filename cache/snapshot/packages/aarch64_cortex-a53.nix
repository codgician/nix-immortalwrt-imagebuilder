# snapshot package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-R5FBYMxUhbyxFyr0PBgrkd6ZsbMuM0atOTe7QwJom/c=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-Wyu00ALZ6mcJHtGduAyzeeHApz1qQ7aLIwIhDPgs4kk=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-hgWChMbvKfCeCVwVI+sN8Cbyqjah24TiPvGqBYpcIYM=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-4efVe5bFn8d+2XHDLhBRorv7p9yg/zbSFR/YBNOCIv4=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-S/22EGNsjpuE/XmV8oczgsNgYwCR/g2ZLMXY6hjZbuQ=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-c3azW1JoNXjMmjoQNnfwqN+a5RkKAfMPdAKKa4uKOYQ=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
