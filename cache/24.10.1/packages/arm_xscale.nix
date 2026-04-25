# 24.10.1 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-BUgGsg6/RrdwPAJ9VwSU2Q2u2Kf7lcJ+OnhVmbMPM6E=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-fEWf5nfkrk9Ys3TDWs2VosHtT6z5xlNzr+9clKbPOvQ=";
      name = "arm_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/base/Packages";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-xohyfxVHNGnqcp+HBlahg9Fgm/qeARf5MZaucuWeq7A=";
      name = "arm_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/luci/Packages";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-LRFz0MP6Z3zcnoXAiRXlB/FWzlvJaDXlPfS5cYo677M=";
      name = "arm_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/packages/Packages";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-r8OEKkkAuJdIWrPBLenjexdkavabNjkSbRosudYxbKo=";
      name = "arm_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/routing/Packages";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-adUWbTmJKNeyd4mdKEqwWVQ13ms+rZeIWwB9pF64/GA=";
      name = "arm_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
