# snapshot package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-OLVJmgZI/kB//s8oM0RRgngcPRmreYlFFCGidgRho54=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-97xm2up8lQvv4YcRQBGfqnqJneB8QHLNOcaUm4hHgMQ=";
      name = "arm_cortex-a8_vfpv3-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-4+itG0w5gY7TZvyES0210n7SYN+u2AK15pBZWBhc2iA=";
      name = "arm_cortex-a8_vfpv3-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-veVmjf3/rfuN1y4QJQVlQp51cy9A9inHVQIOJYJy7ZA=";
      name = "arm_cortex-a8_vfpv3-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-Zj9qM6Yjd/FIj8LlwLvXlCJ72HUPdxxOxi9rEbvl13k=";
      name = "arm_cortex-a8_vfpv3-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-dtXXpE7yvy/0GOgF/4Xq3P5EEE23lxq2Ft4C4dksYnM=";
      name = "arm_cortex-a8_vfpv3-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a8_vfpv3/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
