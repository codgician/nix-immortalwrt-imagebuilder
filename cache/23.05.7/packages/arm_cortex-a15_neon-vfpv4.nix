# 23.05.7 package feeds for arm_cortex-a15_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-Zzlep0EgP7gxTBaJegKYipfwMUZVAlmi3VMVdL014Mo=";
    name = "arm_cortex-a15_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-R0WA/P2iHgXQBCjzds+g0EpCSuw+Xd8xNFca1aTARAk=";
      name = "arm_cortex-a15_neon-vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-tK1bY6UCQwD4SVpcFKbw8g14dgdi/aK4TXGntS5zbAc=";
      name = "arm_cortex-a15_neon-vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-yHAxH0xiLZ+JalAzTdNVsIkVsGI1vOqCEipA6GbEiXU=";
      name = "arm_cortex-a15_neon-vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-fuS/c3aDA3Evn5iIyhBVKMYSGc0H8pPO/rW9u/eGUww=";
      name = "arm_cortex-a15_neon-vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-y7uA0HQEKZrrXSZ/OJvGn6xNgQZAOn/wbPKCpzrHm+U=";
      name = "arm_cortex-a15_neon-vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a15_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a15_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
