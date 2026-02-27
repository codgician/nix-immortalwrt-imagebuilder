# snapshot package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-5WVVdtUq9cC8so3+JcZjsh7hdaC9JidATBVQiFYT1cg=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-V5e4+LwA0gc2Uvoiyiiwd7ccG9786NiKtNMtQIenasQ=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-yPJ0DvekbC9NYsaPSACADlelMhAaJTQLcjyymeB8tOA=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-APNim6hGyykBMgBPqU2Tf4FBt7CFeJPUWtCuNIAt3TA=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-MCrrYlTfD7i8438wzeoJeK4BXFmwhwOn/vm41TKE9OM=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-gUzwPSAEWhuBCM49rxNlTAzOyM0JpvtEcSOlp5O7OjA=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
