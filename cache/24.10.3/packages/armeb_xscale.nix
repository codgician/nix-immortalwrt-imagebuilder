# 24.10.3 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-gmSR9dcU5LQV69qzNjsHwUlJMDSMGj6InlwKWZhY9i8=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-tCcX175s9nCHWgIwex6Q4+UopiryCHA4+qgiVBHScaY=";
      name = "armeb_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/base/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-AZKAJHawHC6bfLoUSXUxaDzpHbhtsOktsTse1g1Jkx0=";
      name = "armeb_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/luci/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-N7V5V8Dzz1WSF2f3ngIZJJisnW9v9i8K/uLi0SIGw4g=";
      name = "armeb_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/packages/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-erm6RkHV3qxJL69DZMtFc1t+wO46YduKKFxGNQpMJLA=";
      name = "armeb_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/routing/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-vMvGmvAV1Li4LHn19qDOV6C5aZ2gLW91Xk/WX9go/fM=";
      name = "armeb_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/armeb_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
