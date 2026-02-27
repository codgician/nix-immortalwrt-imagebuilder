# 24.10.5 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-QeydxVLJaVn4fUS3Lu/qyiyhTOOSyA1RlU3KR48ln08=";
    name = "arm_fa526-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-km28R62/3hzGXSk4CKTTEjAuO/5VtpgZjEtmD439XNU=";
      name = "arm_fa526-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/base/Packages";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-9Wjn9gjMmITGvHomBs0ZggHV1eSWAKKXawQoVcqyD/I=";
      name = "arm_fa526-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/luci/Packages";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-0RxPjXvWBBuU2w5v5ng+p7oZgdgmaM+YNOM55RFH1ag=";
      name = "arm_fa526-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/packages/Packages";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-NCSt6U26rs4wbars8BKQeyGrebGh6d5iUFwr3nOXZsE=";
      name = "arm_fa526-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/routing/Packages";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-6i6DbqndCbABCi68DoKSCDk219PIHAHOpoZOEMepkcg=";
      name = "arm_fa526-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_fa526/telephony/Packages";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
