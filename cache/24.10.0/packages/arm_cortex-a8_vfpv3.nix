# 24.10.0 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-02yRE//3BilNFFXAyOHyXNcHUWaZpjXY7tEVduyowFg=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-aFexQBUDubc3vANYjFcJyR14+fhBBflY4cnxz8aJsCw=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-bEzQ834AC2WXRWpfxIEFDxreY1tmafQYcfLN2XSddRw=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-E/qsPcF/nPEJQeNfCLIkqngmvZ/gUt75+dVAFeQhFvw=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-MyfotjrvsMU3ugpVUkd9bE0Cp8SGPuh9Sqp3QxSWb/8=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-gPc+5zjFMjB4cOzLUsSeYUhqGsHpGnw68EorYxkpyyQ=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
