# 24.10.0 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-hHrbV154IZtm+Ei1R2Om6NIwu+JzOPn8/O0y/XUfqo0=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-tqE4SU9NyiQ3JZC6+zaQBLGPL9vHPyCLIH+sNucsLQs=";
      name = "arm_cortex-a7-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-43RhUdqA9dMlytqF8pITxnLhzRaadQELxa2oC2FMspo=";
      name = "arm_cortex-a7-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-0acb7ClnGTGq37hVD/jrGGCPENjtX9dZUO2Wk+0HIWU=";
      name = "arm_cortex-a7-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-jgRnlIAAcCag2ENJ9FHKZFfUA0ziwjZXap/a6n1OuX4=";
      name = "arm_cortex-a7-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-TZf9IVpeDyBi3m+CakgWWnEgcj0lN8FUkKPo89GFbVw=";
      name = "arm_cortex-a7-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
