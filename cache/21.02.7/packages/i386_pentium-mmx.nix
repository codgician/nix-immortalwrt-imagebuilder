# 21.02.7 package feeds for i386_pentium-mmx
{
  sha256sums = {
    errcode = 1;
    name = "i386_pentium-mmx-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-2RMvwFPmIzmG61ARPiczqJfi3+YhltusTiLxgkNiCsU=";
      name = "i386_pentium-mmx-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-BR1uS5Q2GmMp682N6/ymfeWxsJPdFT+WN2TfxL7+bwM=";
      name = "i386_pentium-mmx-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-aNAQDb5mUjlcxpij/k4Jxi0IlS2FEBJjRDKGKokN9IY=";
      name = "i386_pentium-mmx-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-FGll3b5f4w6qbfo5iZIm2dBQVPoirh2VDa2g1HYCO8s=";
      name = "i386_pentium-mmx-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-BnIjv5HcpVJLaUL5OQ+jEzouE8RG4JucXn9krorW+bs=";
      name = "i386_pentium-mmx-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium-mmx/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
