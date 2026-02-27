# 23.05.7 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-eNsOvhV4C9pBTCVoBn/kq4SXXIsOztn9lWQO1YtNK7c=";
    name = "mips_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-FuNX8UGIKhREBNJy6ZwZYuLWGjZMdHSmhcUka9w2UE0=";
      name = "mips_mips32-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-kmjLxvM82hyDgcKr2OeEsQkrBz3JQwQ+IjBKWPTh5b8=";
      name = "mips_mips32-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-nu19/lG19Xc9L1yYchfmrGCf8fb933l8aBuaBSuQuuo=";
      name = "mips_mips32-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-tq0rse7pT65HjPdFKx9mrDfuW/DdBozFJLOaJiz5pOs=";
      name = "mips_mips32-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-fbLeW8Mq8P838U+nneQHMkF+5ApYQRZbC7Aot6ZONE4=";
      name = "mips_mips32-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
