# 21.02.7 package feeds for mips_4kec
{
  sha256sums = {
    errcode = 1;
    name = "mips_4kec-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-dkcs7S7u7oKK+b2tj0ylZVvgCmdi2osnEfnEJ/VrBD0=";
      name = "mips_4kec-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-4F0aSEuDNWh+2VJTM8uCL7uj89Kk2ksdpRskhr/6Z8Y=";
      name = "mips_4kec-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-RoXWnkCt1YEOEBgtTXg5bVQjI9nuaFYGYFeZXbL0QBA=";
      name = "mips_4kec-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-0XwBpTMES7ExmlNbOOTly6xb5iHer9oHnRWBbhunE48=";
      name = "mips_4kec-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-GEn7wD+WLduBhyNAdgTbH0h+nveGnT579jUbLuyAZEM=";
      name = "mips_4kec-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
