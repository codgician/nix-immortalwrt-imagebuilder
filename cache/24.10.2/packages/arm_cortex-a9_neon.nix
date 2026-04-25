# 24.10.2 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-Ox0sSfb8ca9K8nC/gcB+aWdYjNHFrIS8AswZmBc8f9o=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-noMtMLlLP77o4nCsSC8rMrn+2A+Bs3BmlWolOFYmvoI=";
      name = "arm_cortex-a9_neon-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-LecoBASBLyv2wyWJeRAm3K63+uieRCPYOh7cLbfyClM=";
      name = "arm_cortex-a9_neon-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-L5G1+o/JXGxUzuSHnjjyw6ndOa6hcWNGzzWcG8Js5r8=";
      name = "arm_cortex-a9_neon-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-zR8UPBUF2j4oI+PpV+zGTSGtdMcGFD7AeJgd7SRfEXs=";
      name = "arm_cortex-a9_neon-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-8WD0ngk7OdG/2roneAJabxw0pWmmfwzA6NpZ04Vhb9Q=";
      name = "arm_cortex-a9_neon-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_cortex-a9_neon/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
