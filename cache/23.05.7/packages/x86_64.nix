# 23.05.7 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-1YP32x2bijWaeM/kSCZOVI07x82NbGJw+qzGljm5KGM=";
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-+jrsRwG9TnyBwp5rehxCFT2zssEpatMxnFqDpMT60vk=";
      name = "x86_64-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-ZAcXbPZvPjtVtdI77i2Z8Nr35ubOxTGCnstaCUVzv0o=";
      name = "x86_64-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-CGNdjZYs+CxHaspV1SRoPlqie9mrCVk3cpvdxqSKS7Q=";
      name = "x86_64-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-V5IHCQ6TxAo6nSnMZGgN1thKnIb9xq6sikpgTYe+onQ=";
      name = "x86_64-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-jv+C3QeBpBWTbb+Y/7RPe0kBElypVo6F+CybG0ytGtI=";
      name = "x86_64-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
