# 24.10.5 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-iayblegb8Gku2yzJuu5jXDHHqKzZj38SCW0nNCMWZMc=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-qIX11OrKQ2WzR7z8oSSTC1fi94Hte8J+dCf3au3QC+o=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-trZJ1hauUOEvMZOD87yVcqvABXddR/zsczUFj+plNTk=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-KFR/gfUw1W+QQGaxq7Xjp6Lp2jqkicmMiaxJ8cR3Nu0=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-i9zQKVWyZ6tQzlRQpXN82lWCZxaMcnvDK6wdntqV0+0=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-QWUxCegHG9FbISfTb4CUkeluXASZrNky5q9YxNhG1eg=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
