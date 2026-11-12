# 24.10.6 package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-O6LEOZyTI5yNYM7IqaNvBQ8Zz2WmIvTdUw6UKGEiRB0=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-CjrLVy3qHYwtGDe70P39nX8KofgqdHYsv0cmmBJ4jWA=";
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
      hash = "sha256-nRgHWB4AAU+Nl0mITgb8z8Inf8JPPI8aoOIQeWYkMAU=";
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
      hash = "sha256-u19KE5TZ1tc4nhAxCFtzXb6ECjGxoQ25A9CEpwojbBk=";
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
      hash = "sha256-KkWH4eiKcxbjRfICp9gL9okbNJUT/ijjaOSesalSMr4=";
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
      hash = "sha256-87H9ejrxsQsuifs/xUgYmud71cotdmcY+S3KKNOE0ZY=";
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
