# 23.05.7 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-ZtOvWpFk0hAzcI02YlWatrbr4cfqS4vBzYhGGUyMReg=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-3cBH800wM+4DUqCWOWJn5XaI/ZTbMxxPcXFlPJ9ahnA=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-3aaAsOgEtvLfhYtn5J4RxQuGKiShLknEGLfejR6kNP0=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-Sgh2Jd7IuMlarP93aWKGwZDX34dSsb+qdOY/ueotOKc=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-U8kFc5LCMSRgtYsICyrlQprokdfrrRsx7FB6+M41NOA=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-XQPM7de9jkCTBtSFrrnaq+LePT166x/Wy8gh/TmsJic=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
