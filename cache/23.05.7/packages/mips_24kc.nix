# 23.05.7 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-sLjBXVY9dzQo/UtM1lQ5hVQRrAbBRePCqg5hRX+eVhA=";
    name = "mips_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-vr3LIAQ/bvZbsZuNQopq2WUI1esjkOl9mjfatrt/gAw=";
      name = "mips_24kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-2SJcX6EzJUDodv5kwyhusPuPmWfezq74M1Q2yb2GLP4=";
      name = "mips_24kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-PdQ71lJ6wQ/pWnFxG17ylcwfTWC09YFviIpEiWk3w50=";
      name = "mips_24kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-ka6vl+87+XxCckzpGqfmGruzauWglYQ0CWlXERE5WJc=";
      name = "mips_24kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-VIpBw0mqz0AygPKP8eG0v8CGplfvfA7RrxR5Fwccjb0=";
      name = "mips_24kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
