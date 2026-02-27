# 24.10.5 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-hrTYQ/BLnYHBSVQ9u4+QtFUMNQfxS5oeY/Hd2ECZCMA=";
    name = "mipsel_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-Lse8D+pClBTiYnALSdsENCgvvlNwbpmachxwyJvkWZE=";
      name = "mipsel_mips32-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-fNiPY1oFT1D/806+luoN0vVPsipz5QaEMsW6iLCcnGg=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-vs7Y5wCfRoUou46ORbVsq+1alueN6Y0g+vBQc29qKCI=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-3glAWuyaSrRTSxGDpZKArO5NhmZZDhuFtDKqLxU/KP8=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-NfR9QfLc1oEcyMFuJV4fDDDFcmkK6jlq76YsXr2WESY=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
