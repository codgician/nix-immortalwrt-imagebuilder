# 21.02.7 package feeds for arm_fa526
{
  sha256sums = {
    errcode = 1;
    name = "arm_fa526-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-TA66kQ2DWOZEnKaiiXkoU9lLYp90SlxtBebaMv/QLCE=";
      name = "arm_fa526-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/base/Packages";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-NsvLO4puBX4M5qEFHsrMRLZ2OedJs7Y3L2t/Ysn8V+Q=";
      name = "arm_fa526-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/luci/Packages";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-5KneXrr5iSWthYc8FZgjCQP86hdHL+igbmWR8tgcKX4=";
      name = "arm_fa526-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/packages/Packages";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-UZELC+LymlAbN0ZwkxulC3Y8AcdBXf7NBfch0v9soPE=";
      name = "arm_fa526-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/routing/Packages";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-srNRvHs8OyWB2OFeieH18Xb3uf1E8Zp4DeX7OqUTRpQ=";
      name = "arm_fa526-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/arm_fa526/telephony/Packages";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
