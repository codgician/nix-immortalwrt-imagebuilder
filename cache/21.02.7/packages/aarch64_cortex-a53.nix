# 21.02.7 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    errcode = 1;
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-RKgdJRHIjCxDJilRNRGIa0v88mF5ji2D1Vpr4DXwd6g=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-dM1yAvdMtIdSiUCXdH5vG3o4W/LUNHJvyxY2gXcFjCo=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-QZmRRpkAWYAxpIub2C89BIJHhA2sm2swlNQltIaziS0=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-HVZK65AYXn6A5rf4ddFkVUbKYrLaXQqlT5tb4lPkD+c=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-NlhGnW6LqANbBxDQrO+sUOxoGAD0jec5RJLBnmkO/w0=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
