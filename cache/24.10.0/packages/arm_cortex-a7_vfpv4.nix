# 24.10.0 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-9ueRkzinjgEJ2Tdf4TGnfo2dj4SRlbAZ8MOz+4OuxFs=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-LH2tIv8yV7U3NCQGQQZ4b4Zaa/KHNlDHJ9QIKzSiDz0=";
      name = "arm_cortex-a7_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-MAk7VpYffrfp75O4UZ5G9W0zyT2SM3j2rvGGXLEi4iw=";
      name = "arm_cortex-a7_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-84ecPzBS3+c4ASTxKy8OuYx3tZ9H0/xDS+AZx2hRfPE=";
      name = "arm_cortex-a7_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-h99vgVKy3KPEoM8eyRmWpoGN6TkI7h8AncdKu/j49B4=";
      name = "arm_cortex-a7_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-PvhyWve/1jTgnCUuK/oA+VR0Iri8LXcS6QBksMfFmbg=";
      name = "arm_cortex-a7_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_cortex-a7_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
