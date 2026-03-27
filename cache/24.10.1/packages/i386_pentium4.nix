# 24.10.1 package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-MMywfoDfUEYuDk/rY54Mz7lxUGAIxw96QNjOyHZ9X0k=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-pKhrcgoQZv5MCxRAY+WK37GxvoeCRjOdP389lEOq/RE=";
      name = "i386_pentium4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-UcGb8S+/Dlt8j9MUsru2a+eLt094Jl5ZscdrGwCpkUI=";
      name = "i386_pentium4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-+83M6JhDfB7v8+W20I33Hb0ouFm/2q9jLpDOzI3XWHg=";
      name = "i386_pentium4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-6Ul8z9CDxxHHhaFmRdwobJBuApRwSBorQnMRTsgWjbU=";
      name = "i386_pentium4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-DbGzVrcV8ai5+Gozw5a3tk/6qgKoxJPWzsaAGIWZkAU=";
      name = "i386_pentium4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/i386_pentium4/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
