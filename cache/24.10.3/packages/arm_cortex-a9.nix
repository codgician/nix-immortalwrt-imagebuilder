# 24.10.3 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-KGoKkgj2+8pggofbD9jGVoT5ZmDwwQohwX+HIsEom1I=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-ry5tfsGkNXB6YLihfr+pJLAJ2YJYg4xq6INbdArQ5mQ=";
      name = "arm_cortex-a9-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-Q9b0WN165apbMbIoUG7leMcUclyZJ/kdf5MWlAjTLtE=";
      name = "arm_cortex-a9-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-mec+c1yGIJBu7FR5LdDylUBmYSByvijyvSiOxU4QYYA=";
      name = "arm_cortex-a9-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-OqwcxPvLcvYeWTOQL9V7Ih7cxOEaVAOzVFebcEsM4LU=";
      name = "arm_cortex-a9-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-ftEp59ly45X1D86v6c5vm87kWHfCX1WjqUq4J3E9PF0=";
      name = "arm_cortex-a9-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a9/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
