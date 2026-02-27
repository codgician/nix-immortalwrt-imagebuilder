# 23.05.7 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-076l40Fr6cyEF93zgoxprKKN6YtPS3zO0KQ/mGFczhI=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-Sjlb2gl/lMZ33LWWKRrsstPioUxvZ51xMzNStIx6SnY=";
      name = "arm_cortex-a7-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-HiS6cq1pPWyWBnoh+SYqRuiGLcklVmbNaLhSF+Z1cKQ=";
      name = "arm_cortex-a7-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-dkfIboiwTZlWBi1mTzaFuiJAmjF9mlniyf2wbWSN73g=";
      name = "arm_cortex-a7-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-haZsd2wFVOeCzQmNBrbF7RUPc88pqAfBcqr91ecH3vE=";
      name = "arm_cortex-a7-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-7xMfLpLxhzRA1HRIXnHWpEzbmxaqoZTF20EJfHf2pmI=";
      name = "arm_cortex-a7-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_cortex-a7/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
