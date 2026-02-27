# 23.05.7 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-YeEY7nyZeJVxryrB8ez2Nv4QxUC1m1p27XCShMUhWQI=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-+Fs51A6Eh80JHeGHMUAAmpxhcZQ38EgAsE3zmI3zczI=";
      name = "mipsel_24kc_24kf-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-Hj/e2FUuDvdi4MAfIrvUlwAoDXzvSmV8M+ngueWTQfk=";
      name = "mipsel_24kc_24kf-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-3Mrqg/uKHWhDW37AeoC4QxVST0PM8QeizhVs0pZKNyQ=";
      name = "mipsel_24kc_24kf-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-WCgxjsfS8A8zv5gej0AJnWnwhpefUTdamganGGP9gIQ=";
      name = "mipsel_24kc_24kf-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-e+WlJ9aPwRehLWBSiAsS+8yVgk1pECFDq9BJnQED6w4=";
      name = "mipsel_24kc_24kf-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_24kc_24kf/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
