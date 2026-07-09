# 25.12.0 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-Fn4df3kx+LknmbsaTlBbewUcinejHPhnzDIz6G2rU4g=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-2kY8/6fv0uXKUUs6LYM8Nr752KhDPlKgDkVVz2IV+kA=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-67GDwBVULGuw8Y4b7JjyfN9T1eEg8nHM0mjG+O7j4pc=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-CXRlg9aEKhM413UfWjOa2mjsfStA0iHIRDg3H4dxlfs=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-mOu+RCcFdAggbp10vKyJFHKREgpNgszB3Qwe3AJzd6M=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-ub92EO7+CBdlk82/vCVIrPDP0QUkaveGugWipMr6F9E=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
