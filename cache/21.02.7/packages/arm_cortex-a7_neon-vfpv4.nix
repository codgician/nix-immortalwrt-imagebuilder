# 21.02.7 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-Oeit2HLpcKSG3Fm+5AI7YMGnbnwXv4rgxHHKSj5psFU=";
      name = "arm_cortex-a7_neon-vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-qXZ82cvLsU/VwsH+AwD+LrRrB/VtPbRO8HFmDa2uqpg=";
      name = "arm_cortex-a7_neon-vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-DS7DuWlMzUou1rpTfYgtHtAs5nM6SlA3q+Lbe6GuC3I=";
      name = "arm_cortex-a7_neon-vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-tCdkL1AixcfyJZ9VyVJeqPX6mIW0Jb4L3VNSj9YkcEA=";
      name = "arm_cortex-a7_neon-vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-04N9PBLKmdgWl1tb5+8vaixcLuG2Cnj7EEk1m0k3PLk=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a7_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
