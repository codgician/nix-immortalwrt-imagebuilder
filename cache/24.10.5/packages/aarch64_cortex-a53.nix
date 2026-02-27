# 24.10.5 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-wOO+7qTo5zq3rSp6hwbP+kBzzddhxyiKBqMplqM1E88=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-4DcI1Lj//KmVkMup7PAINJcjQVlw8GTxrjNwgSIy1ik=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-uGv6aXebJWeTpDPHOftxPTG5gY3lzPBJ2q+f5pPXQRc=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-4BZaFhwdKkrp5TJdJOyYzEoym3r0xw4rKeY/vbbcsqs=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-xuH8ZGY6TqLj8vCvndxJeF/EWr5m2GTgGIdjDdNJH88=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-RHjt+pYOHxeml1okIjI4pL2JSqZyBd5oRGq3j49xu4Y=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
