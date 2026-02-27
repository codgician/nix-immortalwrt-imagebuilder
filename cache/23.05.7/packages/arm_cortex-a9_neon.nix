# 23.05.7 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-cykMc0WFf6pDEqUHsf3naIp/TzgOjbYEgD+57qenXh8=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-zavYn0+gbYbD2czK8cEkwMsuVDiOgtcWXhlIohPO+t0=";
      name = "arm_cortex-a9_neon-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-V453a/b39UZiOIFHGBdcQDnBb05e0iWSviY5SH+81xk=";
      name = "arm_cortex-a9_neon-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-c4HB11pj8otQKMw4jc6DMI86Os8wf+tobf5J6bN3NTI=";
      name = "arm_cortex-a9_neon-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-w804tY4GafZcAnEcUFCty4fl78Bo0dge7BokjFc44Bc=";
      name = "arm_cortex-a9_neon-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-67yOyJS72Dx3tNU9ZJC6tpvjIfITsXcAg43I2ZARt6Y=";
      name = "arm_cortex-a9_neon-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a9_neon/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
