# 23.05.7 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-QaYH4reH1keLqFOP+t0iHhkOkVGdylMf0wF2JjE49tA=";
    name = "mipsel_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-Imn3ZgY+6j4Jgd8j8B4XLXc9ostGKRUG/63vx1+2fI4=";
      name = "mipsel_mips32-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-MZo4mubp3kJz5Ran6D89drm247sI17rV4mmCY14jdRo=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-qWRwUHgyMUtI18riVMZBlt7xKhbKy85gkgDAiQt2BFc=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-G9xWdrv9SN+Yh3x0tHzfXzigRVqxa9pQh20LJpLdkW8=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-KpLEDZciiqIW7chRmBK/JDKXu6waxmdjvwmtZoorKQY=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
