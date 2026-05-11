# 24.10.3 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-IyteskOYy6NTPmQF1i25ZkYUOptz7DKzGuQif97x4AI=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-TJ6vZ2nU4S/vrxN85QCqYz8Fr72iIX1Pha6XhY72/1o=";
      name = "arm_cortex-a7-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-BmBpOI5EHEjZ1G5+7BdXsgOsnJ7x+O9iDtK48DpppZ8=";
      name = "arm_cortex-a7-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-3dnSoprprAtmUUUXYIJmE8RkbBRwJTGAbhuihMLT8Pg=";
      name = "arm_cortex-a7-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-FMTyrfpKugj9BHSNnLU0B8gHOtGL02jUm/kSA0r0M8k=";
      name = "arm_cortex-a7-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-lV0bLdstTYsrEv2py74pmE86PX5lxauKW0yWdYK362o=";
      name = "arm_cortex-a7-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a7/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
