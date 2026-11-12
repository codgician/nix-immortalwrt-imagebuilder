# 24.10.2 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-OBa1h8gQkb7EIXkuYTvBVOTl4fIfw05XBV+yba8MxNw=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-8cp9C7GQX6cFBS49XgaB2dtszAD0tmM0klsvfj/MoFs=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-c/01syWMawHFxENtUThUkfO0FpHldwioZH7XvlLOUmE=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-E4ys5Bee66oPJ5CK8VDQ+gk/zfP9JV3Ker8vikuvOe0=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-y4+IoY/50M3A05nMRsSIQxdXZpNHXfsz1LJiKq5hmUc=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-kns6tKPDdBiwUxyVgmAuoNZimC/XYhKLBecsamQ8RZI=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
