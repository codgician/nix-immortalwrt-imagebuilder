# 24.10.5 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-MVOF9bLumFxM7fv9BRvsW7oikwr6JSNpxpB6SFSiZ6o=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-zmPqnD4Tp6w6cB3ZjMFMrvxgYb5qXNQUzqlwwMFWSQQ=";
      name = "arm_cortex-a5_vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-BCLR+pje63uGEyWsaZDzm6Lt8jlnf/OQeBikeO7apWA=";
      name = "arm_cortex-a5_vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-1E1nQyu4aSkrgs6H52hOBWFx47pUkfwnWh8+iawhKpM=";
      name = "arm_cortex-a5_vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-QrdWVjTZuiTEygSYmePqrBx4bc8FBxHmBblSNVH3oyE=";
      name = "arm_cortex-a5_vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-dH9GucBTxdOD3ZQifXsPDRFjozK+5oUlxG0NAEXy248=";
      name = "arm_cortex-a5_vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a5_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
