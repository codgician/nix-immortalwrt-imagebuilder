# 23.05.7 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-eRuYvrZDht8gwBNDA9nnEE08Kv+moo10lLxed7iw9aw=";
    name = "i386_pentium4-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-0eElJQIImSPC47NgR51PAE6s2nuKUdeUtRa51Oo/4Ug=";
      name = "i386_pentium4-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-U0ec2Kod1KQ7kpLiev9HoURY89OyuiM9yhO8rO3EjDE=";
      name = "i386_pentium4-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-WjbWoYTde+KRt2I7rhN0ID6SclAHwk0KuXIbGxv2l3g=";
      name = "i386_pentium4-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-QXXoOzhckRH7ix3sSgvbtX69QIQqRXUnSo19unyBUBQ=";
      name = "i386_pentium4-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-n2l/i9r4PdJmfNHSLmkkC40p5nidxKOQ89hCYZh3yJg=";
      name = "i386_pentium4-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium4/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
