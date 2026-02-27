# 21.02.7 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-zn9QtWEmgmGecaMW1y3zsIh2OraVGU8bvHZNfv9jGLI=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-/pbNeuCrRsOuW14TlKoBeKt346X6JhP6mk10GGx4n0c=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-cHhTJ91RkJyK7ZVGRPDhjrIloL+hGKgMgn0bkzpZlcw=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-DOvRN/WwKywZ+N96cSoB8Bw7Y9cg8IHF1nPt4FOURec=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-rN0k/WuGuCNCl9KsrNzFJ1YQ0jQcOKArKWP/Am0dLNs=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
