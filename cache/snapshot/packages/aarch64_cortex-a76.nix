# snapshot package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-ATcbKHb9RkwPSw7deKWI8lhdFjKMbyTboo0I41ToRCU=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-byloPV+T+1Dyw55p2Tedj95pRe97PKQCLinLo5jLGQk=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-bvfvlXAvjWiysnGEEKHLURwJkrDP83p0hgowldT/ubI=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-5ZgTgqVJWh6vcaPwT5Q7buB0O+OxX0XGT4YQ5sT/4ac=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-tFSO5PWQWc5olpEgU7fJV4lICbOhHkGjaXcWgRm5zHY=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-2pGeof/yr4htY2Q6mki7cqu0l3k9nP2hsIAzAHRhwkU=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
