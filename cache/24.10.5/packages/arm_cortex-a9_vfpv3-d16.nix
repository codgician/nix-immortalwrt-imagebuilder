# 24.10.5 package feeds for arm_cortex-a9_vfpv3-d16
{
  sha256sums = {
    hash = "sha256-/3mTjS1pvUM2gOFSGvm485nBmOVNsNn3x9m4wHnmENA=";
    name = "arm_cortex-a9_vfpv3-d16-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/base/";
    sourceInfo = {
      hash = "sha256-1iHl/VUPxObdUyoeTT1gvVpO3PQFNoxuLktInFAx0hw=";
      name = "arm_cortex-a9_vfpv3-d16-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/luci/";
    sourceInfo = {
      hash = "sha256-S8zeIOV5/6970qdHEGKfuI5/tKmjpOz4Fp/a1aP6/Sk=";
      name = "arm_cortex-a9_vfpv3-d16-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/packages/";
    sourceInfo = {
      hash = "sha256-psdP/c+X7nQbwDuB6G0+taiqjiPzam3RhhVW7XD4FUI=";
      name = "arm_cortex-a9_vfpv3-d16-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/routing/";
    sourceInfo = {
      hash = "sha256-11gsUCxc6uSBozPaIjEiAhPojXgDgpWEPvOG6lRTBX4=";
      name = "arm_cortex-a9_vfpv3-d16-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/telephony/";
    sourceInfo = {
      hash = "sha256-juD4vA/EqA53EyFoo1FeRPcNHxLIX7FJAaGJQNBTdi0=";
      name = "arm_cortex-a9_vfpv3-d16-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_vfpv3-d16/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_vfpv3-d16/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
