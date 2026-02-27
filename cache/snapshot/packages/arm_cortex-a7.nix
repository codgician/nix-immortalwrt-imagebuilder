# snapshot package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-fWAASzTEQHBJ4FiIXuh04Z//PVuUQ6XAxxIpTCS2jTw=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-vBwP8S90/zjv/2GY3y1ltCApwxjiiVhMgeTAFnGTG/w=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-nK9alniq+XS8YHq+lJlk69essn0MKDFsix11UkGBUYk=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-9ejvuGTlHkwsh7ZLknGSAFxGY5bdFMSSIR01n2euKXs=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-NJ1xXNr+L+SVkkZcQHFkJtYHkkvxQ9JZ4ne7mDhs9PI=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-kz9KKDxSw9QO75YhxRpnGuucF0FMeagbkGZIxpb+w0s=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
