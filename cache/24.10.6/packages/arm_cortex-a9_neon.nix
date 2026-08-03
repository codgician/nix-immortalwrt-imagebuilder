# 24.10.6 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-9FS/cbh5xZt10wfGzdAEW8y/aAGHIQZXP3/vfqT5feE=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-MVZwioN5rtUcTYE1Bxn/p6k6tPq2A0fCFCMTl9/h2pA=";
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
      hash = "sha256-frfHAisTnp8QIGTUGEcMPXwuo3u3KcInINBX2uqe4Yg=";
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
      hash = "sha256-83pco9MzOqveO8hbuXjAkZiGUVKv1LdHbxE1X0+Qt28=";
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
      hash = "sha256-Qbq+UTgxa+h9v6k1TBRtnUQWRPoklqAuKNmwl62Bemg=";
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
      hash = "sha256-y+s6dW785X82c/3yKLkiwpMCIn7ICYglRxI9MBB1Egs=";
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
