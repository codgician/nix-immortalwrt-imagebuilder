# 24.10.4 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-6ExUk0pXbvZmgPfMg8xml/M3QvzeW8eEbXx2JIckJNA=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-wBZ+bZIB5aBgKTwirLrpqt3EF5nP71GYF1J/74kaxfU=";
      name = "arm_cortex-a7-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-lBWZbTHCfClBuY04VAi29TLbxSf0GWxSLhK4WDHEYhg=";
      name = "arm_cortex-a7-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-Skgnu12T64N5fgO8CsBh5yMAKzVFZARKSHKgTbhL0vU=";
      name = "arm_cortex-a7-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-8SQ6KrNZwbRDH/ZHtdH9fo/PhJXCfKLGeA6/APgC5gA=";
      name = "arm_cortex-a7-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-t7BQumkmSMwZIxRiXpoSksenFLpVPx0p8552GR89JrM=";
      name = "arm_cortex-a7-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
