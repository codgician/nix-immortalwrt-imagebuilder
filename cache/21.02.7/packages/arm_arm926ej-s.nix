# 21.02.7 package feeds for arm_arm926ej-s
{
  sha256sums = {
    errcode = 1;
    name = "arm_arm926ej-s-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-p/lR3kQIosXMMI3v2w7GLVL3mK8QkhjLG4qzV8qqXOw=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-Su1Z/iybIEqJyqSFmZAU6QtbBqSdPkZGpXTWfuWNy0c=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-w0jstCqM3PpFPP8P9pdpITGM+Eek5OSKs5jfM4+hTAo=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-53SrB19l/dJIfprTe4PIlaCqI2sL7/FEzJar7oylEgg=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-eCBzsloxa365hDCp7DQEpjCkCHyGa0Fq0kbErRBlsbo=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
