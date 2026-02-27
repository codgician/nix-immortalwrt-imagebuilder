# snapshot package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-kmKBwFjZL57FnKZyLAFab6dwzEU4gvcwCoPhC/owsBU=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-NYZhdCqIxptIsahYNt0GHUZeTQ7EazInM9/NYevF0QM=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-qOaCZ1g2Qzcirzu+arnD+NebZ6ldPc1cKFH06+jDGZ4=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-/oDMVzKqwzMOTtuVLAVHxiXLtvpSN0XogZvrciBoSsM=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-K89Wdm3ZQs8OM73/e1dN3JohEpr39rqfTa0sNwkg2qw=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-6AvB9+yJpQEItptqK8i7uWJ7/qFvpqwD2rEiPJSe7Y4=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
