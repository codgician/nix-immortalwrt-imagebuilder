# 21.02.7 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    errcode = 1;
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-yeltpYVnq35+f/DLbS7zL9jfGdpfQ9xJDbtCD5ZpRKQ=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-XpBClgeyKg+bZrvDoxFPH1grmFJ8bUqZwzyN1H359wU=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-OV1/7mfGvu6IKJ7UXU89fI7kcNW3OTdvjFVgCIBhoJ0=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-ND4xn7KTiV4Kcjo4P1/LeaNKTeV6AsP7cGapSaqgoEw=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-+wIA9yehLFy8yWVPCX8c40B6YOqTEkGLd2j/+f53ei4=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
