# 24.10.5 package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-0diemrpnanCI4E4gV/Wb3GffDW0c84KGUsEgIbqBJdg=";
    name = "loongarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-1iM7jxtLjJWtsi/frmXtyod9mvWbNIhRWQY3fztUhOk=";
      name = "loongarch64_generic-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-CKD+GULaPV7lePMylWeKcrT6hO5Mn5yKBTzZJlMd+Vc=";
      name = "loongarch64_generic-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-jqRv6z/+rkK6OOjGCRMt/B8PZOj0j5C7gp6YggAZc9Q=";
      name = "loongarch64_generic-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-qiLWUkwyF4lU8eWOd0Xr13Snh0yQmCJhDVZEEVQXZCA=";
      name = "loongarch64_generic-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-tQaA4iqR9rAjZbanQSGFw3imnMeTAup+292utKFeM4g=";
      name = "loongarch64_generic-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/loongarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
