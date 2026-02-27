# 24.10.5 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-vVm1LVkOFObTKhLTKv2l9LKx1okU3Ehl+MTO53ilg3s=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-W3PXNO+c+v8R2imkvcaboL1wQB/JUA+qFJi5oDoaWeg=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-5cpM3Clt+OxctoD7G/hhA87wdUaHrhH0C4KMo1EBqiI=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-gFCyK2/erIqmn5LuPDDx433cQcGdHJyF4VDeqvU1lIA=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-1Ilz70z7N79GPrAYmpDMwLUCnG0TjI+/JGBVkJ3NW0w=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-OInkze43qIk8DlblWemC5fD9WcO8dfX0r7Nrdk9pRNo=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
