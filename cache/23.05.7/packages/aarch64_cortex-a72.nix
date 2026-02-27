# 23.05.7 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-vOxs64Xdg3L25yNnS6Dc+b0sg6tDl1HjxHqgZ+5JAvg=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-0bo92GRp9BEbR5YFuK6sTFA1mbOFT+uCWofnJRNxrpE=";
      name = "aarch64_cortex-a72-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-IP0NTp+z9rGR7uNAXHqDCasSHxkWSUK0+v/vObbUINo=";
      name = "aarch64_cortex-a72-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-FnFj+SEsKztnfPMk9hg6XQStVlFTPPXCb9o7AFiTvl4=";
      name = "aarch64_cortex-a72-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-E1pgS6kqlR6Ux710t++1Ecd2WTbRNZ43veAYRTKp9tI=";
      name = "aarch64_cortex-a72-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-P/+Pq5jNxcLDQDmM5Sg3rD/3o2swI80hmxvanmR0kik=";
      name = "aarch64_cortex-a72-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/aarch64_cortex-a72/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
