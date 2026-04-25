# 24.10.1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-IBEypU5PHs4XWghsUU8SzFgjEncnPspy1fwkojFOuSQ=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-LtFcddKe1ZG2cnNWTvoJq4jUyW65NZQxYpcYudugf1w=";
      name = "mips_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-YaZ2093Rw5X/nJW6ZRKOMivMVYRuocH7vmuQtyBXCtI=";
      name = "mips_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-ltfZT/l7XMJlsPsoZAkyOImsw6qZhQZEeVyc+huTxjc=";
      name = "mips_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-pW6X+3FjO/ZImbP0PCMxYaof8DSAAMls3J3hz+gXB7E=";
      name = "mips_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-hC/PpfbMR0VatzCuQXAPTEGo7G8NTs0pbtE9+7KX61w=";
      name = "mips_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
