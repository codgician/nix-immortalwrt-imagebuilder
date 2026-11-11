# 24.10.6 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-aesv1Riwwr0dHi6bZGRp3BLPxwqePH7/65ouAoeh09o=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-oU33eDLZuoIE0WHbI4hwBT8U2h7sxg9tn8d5ss4vUE8=";
      name = "arm_cortex-a9_neon-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-R3nrClse+qfY+Jz3enyldTXHCD6qpZ0koOubWCxbfI8=";
      name = "arm_cortex-a9_neon-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-e1yervsK73W37sA8cboXgeQqTVlvNTvWxHi6GRTjsXY=";
      name = "arm_cortex-a9_neon-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-fjje19WIzvSI5L7sgXIO4ENgg5QPJFwqFG7/ON9uCS4=";
      name = "arm_cortex-a9_neon-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-iRNRZaAezdHFm0faZjkp59Xpiplp+rnskTIof+6QWLc=";
      name = "arm_cortex-a9_neon-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
