# 21.02.7 package feeds for mips64_octeonplus
{
  sha256sums = {
    errcode = 1;
    name = "mips64_octeonplus-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-ApvIUSyN5mJjE/5aVy160RzTTaCFswprXr72p2otljg=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-xuSTCtWQp+K2QJh4L18TfGPe/xDHjt5rw9RVO6MSq4M=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-GCjud6HjRRJnUu/l9vnGa5EpsV/DYztShs5uuOUAXXw=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-q1nqP98YaZjLghuVM1RAsUE+NJamZ93PaualaWhK328=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-FUOr3xEqHQTvi/qHHQkd+BiMV0aa3j+mTsRA4cDzMNo=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
