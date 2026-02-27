# 21.02.7 package feeds for mipsel_mips32
{
  sha256sums = {
    errcode = 1;
    name = "mipsel_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-SMCUc9pXCI7EaqGlSMjKzThKDPdUpSdfCm8c7tsQzkI=";
      name = "mipsel_mips32-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-6WZySlovnGrp8ZGi8oYkFso/MKPgfGI8XVaLRzvpXJo=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-/Umnm+TJCd19KPs3CEoUxgsiUfTkXfILz5GJ3RVSBrE=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-7qSjVB5u0VTn5LihgpygkWVKbVJnKfHiIoUxeBxtUTM=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-o63tmUEEIUkJr3gWrHP6KRfwcu9AIFV9MLJisx97G3k=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
