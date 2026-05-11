# 24.10.4 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-VgYxxqy/GP2MNCS1OJO0cUu1Tteq0S/va3eerGEqyes=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-WwaNyzgc3KyXV9WVlInDFA3o4j7kWn6DU5SaoT+SJq8=";
      name = "arm_arm1176jzf-s_vfp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/base/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-xWATlZBFTCRzx0NWsiHAr9eMmH0bh9JqBfUtK5cvyHA=";
      name = "arm_arm1176jzf-s_vfp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-eCEp0REMcWti/5y1c5tn+T9sS1Q1vhSrphJsPZfhUzg=";
      name = "arm_arm1176jzf-s_vfp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-cBSW1oX235sKJS2PsYs/1P1gen89zSOfabGIDWZBrh8=";
      name = "arm_arm1176jzf-s_vfp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-uFqvHixNoThDsOpNdL9OfPrbA9TiwtBPCDh9tRzClRk=";
      name = "arm_arm1176jzf-s_vfp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
