# 21.02.7 package feeds for mips_mips32
{
  sha256sums = {
    errcode = 1;
    name = "mips_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-0FiHSWxbrQAPdgVMkzkHxHWmxqCI/dFJJvd9FumrOng=";
      name = "mips_mips32-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-tYOlGb/aLQISXX4EWWFczz9ZyXkEbsbv7gdhIMd5eOk=";
      name = "mips_mips32-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-FeLMSx6D0BuV7qtiM6X4sqdHWlH/uMwbWZkJ6Qntx3E=";
      name = "mips_mips32-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-vOAf5gwJYEAnkXq6Hbxxcji0t9Z5tjMryZC/FNN3/jM=";
      name = "mips_mips32-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-AIBO1KIbWE4M+mLaHto6lcttSBIHwRGRzkfJ/WZfZM8=";
      name = "mips_mips32-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
