# 24.10.4 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-w4JV5IcqOPBu0fVXti3esSQUYWboyoam8TP5eykVb48=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-wL2oEPdGBwkzpEUvPNXeELwc30TMSHQVlFZG446KVMU=";
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
      hash = "sha256-yJdn5yA9rbRAmQ9tDCkDe7r3t3FsUhA10Cpc8l2nwNE=";
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
      hash = "sha256-PvE3s1olb9/gL1hQsb3FzggxfL65EkdEEIFqVaMg19w=";
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
      hash = "sha256-d0iaCPBoYINCY440M06qyV0UQXxn0UQqWJXLUrJ254A=";
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
      hash = "sha256-WnXAQwZPv1fTluKpmQsIaa7s1Lop0KFVcTt4b8eRF9M=";
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
