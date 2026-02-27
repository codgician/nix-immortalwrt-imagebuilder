# snapshot package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-6IG28wN2tqvopDGMgyFjlwXDKGKCgVeoVSqkYm5TJ/I=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-0guQlIUVy0jIlhJBflowHUWDOYf/5vczsnFy/m68YZM=";
      name = "arm_cortex-a7_vfpv4-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-jWVoVYYXwbvm28DnAe6BnGCc86fd96e3EEtSxs7c7T8=";
      name = "arm_cortex-a7_vfpv4-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-kV9uiaC4tfly0R6qH9Kw5A2yHlWhMa48dNOnr4nau6k=";
      name = "arm_cortex-a7_vfpv4-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-RLbbKXEZTfqtJY8vtz87ZsFKAquze68KrPiWEV9QYUU=";
      name = "arm_cortex-a7_vfpv4-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-1zXodRBOkhDJu7A6Ba9TDWaasp39DZWj7jhU9xCHFrg=";
      name = "arm_cortex-a7_vfpv4-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
