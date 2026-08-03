# 24.10.2 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-DrZymkVO1sfJyQKji/OJaSTl8Ld83Y6ozxVFRYoqG8s=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-9JybNiJIsOsTVowXZYEQdGbo04MGslYkyJvD0c4Fyl0=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-+wfjytZ/N0hXHlG6QV8GtYrZEn1GPiEFYQtdNp2Q71M=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-+tlDLDs83pxdwIoSquOZcLQfjNBJ1tbOMUE7HE4B5KA=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-yxDuHzO/gk6qxzA0wswwWysqbe1GHa6F6iqPhfKI++8=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-VEmMHez+7x0Roz9AGrFZ3F48WCIuGgsq7FaekQWtBjM=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
