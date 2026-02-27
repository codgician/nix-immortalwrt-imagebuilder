# snapshot package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-AuWtHtJU85iMzk/vd4EDRtdSPwQd9ABhsxZwnfVAw4M=";
    name = "mipsel_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-m/wSmAbmibQSMEV4eRvVq+PyubaaHaHPUtQ3PXyU/dk=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-BAH6CtrceyP3i96q8u14oWVz6aA3XRY8DDMIVUcNvws=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-XZF1cm0d+6iTxHDmA54pNEKvJWZlm7iNYznJyRHNOJE=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-+zQAZ46qO6x6REGBF/k1a3U/o3mSVG32wqXQh4/hmHM=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-BiMt1q0ncduzMVLo9V4gsbfEIeGZBtYVzVH3UXIh4FE=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
