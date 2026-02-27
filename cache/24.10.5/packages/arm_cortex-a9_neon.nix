# 24.10.5 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-u+StCOYcEpAk8wImDygWxymLcWiIeTymTbQxn1NXmRk=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-e3X5InfmJKslpdVmUF0FmsUdu7Kf57ceEDz9/3NZA7Q=";
      name = "arm_cortex-a9_neon-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-uN81IhB/0JtAD7cF+hp2PDBWVjeCy9qFnQwhZecqNAY=";
      name = "arm_cortex-a9_neon-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-Igux0pFlyl7xgXXLz1CJ7rJujAb+mYHe3fuAzc/7Jhs=";
      name = "arm_cortex-a9_neon-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-WKudazfjLxc6u0HRadN7ncN5dZb0jyV5EkyI07eGYTI=";
      name = "arm_cortex-a9_neon-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-mYbX3fwszMpeDM7y8PzuOBc/dpX0YdbLZsOLU8migmQ=";
      name = "arm_cortex-a9_neon-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_cortex-a9_neon/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
