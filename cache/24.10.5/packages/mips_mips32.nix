# 24.10.5 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-w1OKN+N8XJQxof7tZfikeOAZPWFFD4Uk+vk/qxoD8eU=";
    name = "mips_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-2QfhmiqsdcQJKrLkqPzoBg0l+oaKNU86RFnJjeMZoWI=";
      name = "mips_mips32-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-zh5k6sUXk3Iqal0i36k+R7fUXgo1RO4P3nqq/p3lKh4=";
      name = "mips_mips32-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-LxDItdLMRZUyFzfsMC0ouSp32QgR2qVUQ3AUyzPrmcY=";
      name = "mips_mips32-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-xXl2V1cmBflMgwCeGg16MD//DUUYTQLdtkW4D4dm3Wg=";
      name = "mips_mips32-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-afBosgNo3LgG53SKCgMDo/iH9iJnI/Smx4hgmo2F19g=";
      name = "mips_mips32-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
