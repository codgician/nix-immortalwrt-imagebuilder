# 24.10.4 package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-cK+a7wJp1QlmVUJg2I/ZoIpKmh2WWxkU5sl8Qpmh9QY=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-DhRzgYHZqd8qaOk6t7960reC/Go5bxFq9aB+ztPDi1s=";
      name = "arm_cortex-a9_vfpv3-d16-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/luci/";
    sourceInfo = {
      hash = "sha256-eTRaDFWHXrs+OTjs03njh6NlSm4yyGUKAWO10g/eiTk=";
      name = "arm_cortex-a9_vfpv3-d16-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/packages/";
    sourceInfo = {
      hash = "sha256-tK58AcFrMF4zP0v5rk+uGSDQMTgfqsk/QZDvcFHFQxU=";
      name = "arm_cortex-a9_vfpv3-d16-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/routing/";
    sourceInfo = {
      hash = "sha256-YY4cWf2WA403lgGnraq1NSGucjXXY1OPCy1jSXf6vSo=";
      name = "arm_cortex-a9_vfpv3-d16-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/telephony/";
    sourceInfo = {
      hash = "sha256-EqEGFgmJX4e0cnZGhn4uN0598Mjjc4mUDFwNdkXp5WQ=";
      name = "arm_cortex-a9_vfpv3-d16-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9_vfpv3-d16/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
