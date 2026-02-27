# 21.02.7 package feeds for aarch64_generic
{
  sha256sums = {
    errcode = 1;
    name = "aarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-/zZImRJgOuCvqswDou9fg1OpWxfRhO81VmwEyQhYQXQ=";
      name = "aarch64_generic-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-XmqCumFTyN7tg1QSU19aaipxFRx+kNqhX+iSxWrnZvU=";
      name = "aarch64_generic-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-Q4LKO88dJh6S1Makmf3P0J4sS6hWwhLUgNQJSSgjufw=";
      name = "aarch64_generic-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-dFyFdwFQ1/8boSEweLK/VcxO2q4gvGw6z1yXNO54ClE=";
      name = "aarch64_generic-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-C0M/3hUa/n9Xr0CvyMfwBeqzEkYRxQH1dyGchtPbYGY=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
