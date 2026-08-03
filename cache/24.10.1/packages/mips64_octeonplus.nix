# 24.10.1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-mOGlcoHH7ApqUjXLi6UoVMGIoa+PBzq8kzh9fdKxleA=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-78yflfG53TRoED67xmme9KvwvWGJVUzTb96la1fsjls=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-On6LMDiwTD7KKapEEE4slvf8xGQ2owpu6rdxChC2SZ4=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-5xvzoEr2R98C+Tl5ggbwxmyprK9WDIJ8g9MM5zRFDFQ=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-pYbZKrY8B/bKkufnTG835rVd5gQJB26SRuHeOPEFKBE=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-8fchjsA9veI2MgzMbKkMEolJBTJR9nOH8vtOPWfG7TM=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
