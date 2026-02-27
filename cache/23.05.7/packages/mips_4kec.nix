# 23.05.7 package feeds for mips_4kec
{
  sha256sums = {
    hash = "sha256-uoh54Ca8b5W9D7VjlCuFxC8Mw3o7hQRxS8Lb9tViw44=";
    name = "mips_4kec-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-UnoHphq0skH55bW9v5VXjtRysTTMDsiwyWvG8brYGMY=";
      name = "mips_4kec-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-bx8faAJ8Hl8FelbJiohJfknhvHK8LLuuoX3+KFuLvj8=";
      name = "mips_4kec-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-iWLWkWxsBzM2/hG3ykBB8aN+rtZw+GxfeefLOB/VS3A=";
      name = "mips_4kec-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-ljFQa8jcfKZMyyIUS5tFtVv/HX/AZCsa0eiQjlgsImA=";
      name = "mips_4kec-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-ke3EB+/cF/gnCaQrg5txIraUgzC7ufSDTI5eotGixW8=";
      name = "mips_4kec-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
