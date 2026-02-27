# 21.02.7 package feeds for mipsel_74kc
{
  sha256sums = {
    errcode = 1;
    name = "mipsel_74kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-s0IqTZwXhZxZVAqtpkMvKU06YeaktfwWwPQD4ROrv1Q=";
      name = "mipsel_74kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-2QPld4/LMJoQ0oz03mBpm1nGbfrn812i05qth86ld/4=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-BqCkLmO85Sn1rSEfvofvB2BttIr7cR4hIx9BmLLfeKY=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-iZtMarlRxslQcqdXsNITOvC7IwecQKvKKDLoWHmknKM=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-+pTHHo7/Z+tntlD8S9G3Bf+phxcDaTX+AZ4cCK5LcUg=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
