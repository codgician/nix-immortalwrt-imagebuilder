# 23.05.7 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-27q1i0TyfRI8+rrgPbJUC+IFUB1cZBeviaLS0GW4fkY=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-7htLXrLOMxpu6I1+69x6qFsv2eGT+qiARfdinNhJgls=";
      name = "arm_cortex-a7_vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-bQjsj1C8twQiCbVvxe2yxaeHbR6rAeYmvows5XtEbnM=";
      name = "arm_cortex-a7_vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-IZ5xuxa/NfGYtdgHz5S47E7jNVNujsMIZq1hJMFAEC4=";
      name = "arm_cortex-a7_vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-WDUJRV0pX0usHI8jY1QviXXA1LIyWe1XEru5zL+67Ec=";
      name = "arm_cortex-a7_vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-4OUty1a2TtpAxpan+fUE1eITyJUehPg/IlvFpMOsri4=";
      name = "arm_cortex-a7_vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
