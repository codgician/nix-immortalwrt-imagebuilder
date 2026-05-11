# 24.10.1 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-3ay+Vxnly3h0kem09TDyPqju83yGvbezALcq/m9uhyQ=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-fIG9jSaxrjmEocxRV24nATWyZuGOxSlz09yMcYJiYI4=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-yup44rVgK97xS0bgidsfexcq/vWmvgynL+btbfKsBm8=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-czFxCBFeMlu8Dh+PX6zKUBM6hjWDKrICVhnXlw3yut0=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-s4QmFc/1n7il9eI8HhioyIArFFZrsrH9uF2DeQkvRlU=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-TZk0DypH68Px1fOpoCwrPfzGr9sYNnQwOi69Gsu+13Y=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
