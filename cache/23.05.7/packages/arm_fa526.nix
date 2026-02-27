# 23.05.7 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-Z+lr7LfjXjuLZOEwa4XnC+1JIQ2dgAlw3+jaKlUEs44=";
    name = "arm_fa526-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-ZEU7LJhi1gD5MjD6gczLjv9GwZlUGAH40X5xHPTGTD0=";
      name = "arm_fa526-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/base/Packages";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-Gk/uHR0gHLBy2nmJ+ZfEj7rT3yYZ4zg7zMdTKhje+NE=";
      name = "arm_fa526-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/luci/Packages";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-aEm/ajuQZjtUc0lrfVIzhF5hZSavn2ZKpLILbmYm9RA=";
      name = "arm_fa526-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/packages/Packages";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-MKvpzxXqCJnZCsoPMLvXo/kIf6YUQytIwZHiyCRRrVA=";
      name = "arm_fa526-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/routing/Packages";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-WgUejn5BJG6u+wNGyZN/3GUC9zFted4fK6AYnAvK8oQ=";
      name = "arm_fa526-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/arm_fa526/telephony/Packages";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
