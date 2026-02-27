# 21.02.7 package feeds for arc_arc700
{
  sha256sums = {
    errcode = 1;
    name = "arc_arc700-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/base/";
    sourceInfo = {
      hash = "sha256-ndx302j7UiV1TWNxufJcywefFvWH6ruygb623l0BC6g=";
      name = "arc_arc700-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/base/Packages";
    };
    packages =
      let
        p = ./arc_arc700/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/luci/";
    sourceInfo = {
      hash = "sha256-IhzZOC/nVbRC6JeXh6zOQmDcOZBkH2wex6Zce3rPm9g=";
      name = "arc_arc700-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/luci/Packages";
    };
    packages =
      let
        p = ./arc_arc700/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/packages/";
    sourceInfo = {
      hash = "sha256-ZgQ8c/IPZgV0djzX9zy353+03z8gQg0MVql08aZBVtQ=";
      name = "arc_arc700-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/packages/Packages";
    };
    packages =
      let
        p = ./arc_arc700/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/routing/";
    sourceInfo = {
      hash = "sha256-siq9CcTUVJLSyEMOsxqgwL7t7FYXp9KO3JgP04sN4wA=";
      name = "arc_arc700-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/routing/Packages";
    };
    packages =
      let
        p = ./arc_arc700/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/telephony/";
    sourceInfo = {
      hash = "sha256-kA1I2zq3sTXwRrV52mu3ommpxCIB6Rx3DSV24vlys+4=";
      name = "arc_arc700-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arc_arc700/telephony/Packages";
    };
    packages =
      let
        p = ./arc_arc700/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
