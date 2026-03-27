# 23.05.3 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-5H5Tlxth174gvOb3QVln4xqLQuVljkLMhmKeR6yRINE=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-6zy7zWCfnzVxPlLrbhvMZvbfrzVXLxM1K/u07Q07DB8=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-dFfXpi0VjcD4P5SrxZYt+S6iNQgYw/WPnarYdRRnLYQ=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-WrefNJvN0t9tBLIcD1WlqlgD8mQLMihZdWAPcZ/UqqU=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-7RtdCwOYEktghBHISqdLfgfEkUJyHZK4a+YbF70O8sQ=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-cG4et0+6ult0MrSMdcHSnF01fbGRhfFSbuj7vccCgzE=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
