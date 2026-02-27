# 23.05.7 package feeds for arm_cortex-a7_neon-vfpv4
{
  sha256sums = {
    hash = "sha256-E0s677zmKPhxpvfiN6/KdzgncUCXsoEKBt+0PTEY8gw=";
    name = "arm_cortex-a7_neon-vfpv4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/base/";
    sourceInfo = {
      hash = "sha256-GCpd24+G5RjOjQZKslXZBbdCqs7wraRGS8IB9GlXXFk=";
      name = "arm_cortex-a7_neon-vfpv4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-B9TI4NshF2fB7TYdTIh0dYFxydIZLvNmXh+hp+MAglE=";
      name = "arm_cortex-a7_neon-vfpv4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-be5XV1jh7hxZvlh+4e976p64eZMqoGrjqYigXnhfuNU=";
      name = "arm_cortex-a7_neon-vfpv4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-5piYWxlbWxR1+2BdDzz+o0Nxa9PgzmycJR7vqoUFB4s=";
      name = "arm_cortex-a7_neon-vfpv4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-NEvS2Inkc3EdBx4/AhmJlN/uVhwdrSSnqf6DtNbHJx0=";
      name = "arm_cortex-a7_neon-vfpv4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7_neon-vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_neon-vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
