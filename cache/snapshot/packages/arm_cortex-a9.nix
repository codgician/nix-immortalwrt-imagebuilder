# snapshot package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-+JvuMPR3B48DwuQPPA8ZRc6R+y3Wf/Inzt6+QEzLeuU=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-993CKYnAxqOaCJz39XtYyCmgx21SmW2dZYoi6vyzx6A=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-7KT4OTu3pPwLqsprSu8bd0BAfthS4sYfqUCrUcUqUYc=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-TI88L9u6u9GNd2VK8oFKMdyQLon5XN9aRSEgkvE886k=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-hBbzapQrvWLaCeGRFliSKUucJkTXvk6FPuO0zs9k0/s=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-yh3z6u+1YluZizvCgncLvvWXHbir8g6Zn9+Hlwq2Aco=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
