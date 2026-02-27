# 23.05.7 package feeds for arm_mpcore
{
  sha256sums = {
    hash = "sha256-AG0WM8V/sUutYdemMtlq2M99adS0Sg6QQ0A2mmnWLg4=";
    name = "arm_mpcore-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/base/";
    sourceInfo = {
      hash = "sha256-QCCVxCWK6qKxsitfxTdVFmqThYYYiBjqW7LbnOVi9WE=";
      name = "arm_mpcore-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/base/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/luci/";
    sourceInfo = {
      hash = "sha256-bzei5HZHp5i6ypJdoWAIfjO1XEihTCk+pJSJ2JYFp70=";
      name = "arm_mpcore-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/luci/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/packages/";
    sourceInfo = {
      hash = "sha256-SQuWcM9lDE3Yps+xujJB97NGVOeXRdMv8lQ9/mGLtvM=";
      name = "arm_mpcore-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/packages/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/routing/";
    sourceInfo = {
      hash = "sha256-fGWyvxltgiDAJBLMOmSVjvQuhF3nQf5dnOBmzx7jgpE=";
      name = "arm_mpcore-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/routing/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/telephony/";
    sourceInfo = {
      hash = "sha256-b3GGMVhaBC82MPF/I3+hifB6uTXoziVnBRc+Tr93L6U=";
      name = "arm_mpcore-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_mpcore/telephony/Packages";
    };
    packages =
      let
        p = ./arm_mpcore/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
