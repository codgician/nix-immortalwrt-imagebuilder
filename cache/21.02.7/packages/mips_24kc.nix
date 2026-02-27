# 21.02.7 package feeds for mips_24kc
{
  sha256sums = {
    errcode = 1;
    name = "mips_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-z3bDJY57dMEdk3sKyY4mL9AI/4P2spiOJBlq5aXZ8LY=";
      name = "mips_24kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-WcwC9QDJzchv2TCLym7iDG4sn75X939Yz74rs1efsfk=";
      name = "mips_24kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-Ms3sQsZTjApGlLHdvavwGavZZQoSiiMkl49Lwa6lStA=";
      name = "mips_24kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-Vg5m0wie94dZxbxC8FAQ3e4/pNBlJQDNR5mbv/NqBB0=";
      name = "mips_24kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-s2ru+LYZV9n3ZTfLFfDpdUhsfoQxF1X1KEb/Cqz4O8A=";
      name = "mips_24kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
