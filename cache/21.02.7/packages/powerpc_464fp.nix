# 21.02.7 package feeds for powerpc_464fp
{
  sha256sums = {
    errcode = 1;
    name = "powerpc_464fp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-ZEuTbSs9uMejk9Edbok0r0fmFuS9amzl/GnopNN+RQc=";
      name = "powerpc_464fp-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-UOWzWYWFuJUrHmCwcHhNUqbGt7YBHg/fnD7APZX6YTw=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-kTVFDH3cpJhz1WKLfiP2v7EZq0Wb17ycxnPXR3698Z0=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-G8/P/kvMYJ5dixdkTwBeOtbjUKs/tkq1n2VGh4dubJ0=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-tYHhwiOD82mRS4sRXFDM8pwI9H2XZof6mKbH9ia9vFw=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
