# 24.10.5 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-fTmZpM3fR/dNd6V6bZKVvXDWJpscKjfYV6oSnM9/blQ=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-KoxtfB/4HPLvcc8Xrdb+aX1dkO03JFs87f6dq7+XmJY=";
      name = "arm_cortex-a7_vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-wy3jBq2Lcxz466VufXOc7JOrF/wiUjx3P2+in8vDLRQ=";
      name = "arm_cortex-a7_vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-+WSj0iP1ON3eiP96pv4iltp/LILrLPyRIwGsOq4RW5w=";
      name = "arm_cortex-a7_vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-8cxDbf4FRm8/JExsBdkKZXwE85rDSj1k8Lr2ZOKJU8E=";
      name = "arm_cortex-a7_vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-QG2mr5rsw3hZN+EUiac9zFixelDpLwxu0NTbvE4XTqs=";
      name = "arm_cortex-a7_vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a7_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
