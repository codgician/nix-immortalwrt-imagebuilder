# 24.10.4 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-zb+2++M4neQ1B7Bd0+TwxJwHDwrVSswFhfRwX3jQ+DM=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-IFdX9fPuambDzIXKsFSDswcw/SlRa5EChl8yuqU/OqM=";
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
      hash = "sha256-/b+7s/KMBhOpskFzsVRfzarR/cEm3V9lOPIrdakExcg=";
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
      hash = "sha256-70ww34KVPPyVLbcaqyVnqJAAIcARKUdBcCNZu1bqtSg=";
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
      hash = "sha256-ri1fAYzZO0n3lhd/wPetkksTT7cZUxIUkhkqKo6e7cQ=";
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
      hash = "sha256-EKu+tlGcLIYl49thGZE6qAiQNH3Jxdxk6nJn+ANLI84=";
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
