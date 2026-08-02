# 24.10.6 package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-kac3raMsXfDN+39pIQIoczYp94gOALzX5kRj5gVG9rI=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-/NVfpIq5fxxpGviexcr2dhCzXgX4/jVPPtMB+bTk6HY=";
      name = "arm_cortex-a9_vfpv3-d16-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/luci/";
    sourceInfo = {
      hash = "sha256-shxOQ6XA5B/kkxz1SyzyH3UO349sF59AkOSlDvH1O18=";
      name = "arm_cortex-a9_vfpv3-d16-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/packages/";
    sourceInfo = {
      hash = "sha256-Cv6Zy1F1BwzR80iw2X45UTSz0Wq3f4uNubaiwtNX2LA=";
      name = "arm_cortex-a9_vfpv3-d16-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/routing/";
    sourceInfo = {
      hash = "sha256-MsfQQftVIyLN1kutjoB5l2QVMY1sJrLIvBQXVYbMcNM=";
      name = "arm_cortex-a9_vfpv3-d16-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/telephony/";
    sourceInfo = {
      hash = "sha256-s9NffE4y/1OjoW3ovel9okbXKW4Xo/eVqG9s+jIzEJk=";
      name = "arm_cortex-a9_vfpv3-d16-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
