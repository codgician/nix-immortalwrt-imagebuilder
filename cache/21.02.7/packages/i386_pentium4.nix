# 21.02.7 package feeds for i386_pentium4
{
  sha256sums = {
    errcode = 1;
    name = "i386_pentium4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-TYquDiwghwnJsQ0IgLXhh3P++OHqduxlCaolkRXFWak=";
      name = "i386_pentium4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-5Y9gcCy4FsQoSRDTTqg4IrrK220pUvIAkT966SYcg2U=";
      name = "i386_pentium4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-nGLoqaaF6eDvOW8bQSc6+xqFBqQwlRbGcSIB7UBx3rM=";
      name = "i386_pentium4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-R7RfXZT+LyWMORZY2NeWa8NhGBlEYVwOMUJtEmxhXhM=";
      name = "i386_pentium4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-2qnILZztnEkpdQkZGR8JB0glqNvix9fyPAqWa0xI0Kw=";
      name = "i386_pentium4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/i386_pentium4/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
