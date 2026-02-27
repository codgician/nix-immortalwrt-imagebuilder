# 21.02.7 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    errcode = 1;
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-Q6S9xdQbMStuG60Qqla7NoEx+Ys2rcBmTDmuTkUjkwg=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-7cbtJH99qARCoPBahKm7jaF5r4IzGWdoZs8kLRr2y5w=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-LL0CSS9D+Qr+7VNJL2Q7uM+PF/r0p7z0zCeRciusbPg=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-7p1rtg4PlIgb6YXpMHudxxsrUNc4mR1S0Zpf5t90JM0=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-6Y+FdrXQBXuGkAG38qYfRL/+LTH0y4XZXwqRkfktZ2A=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
