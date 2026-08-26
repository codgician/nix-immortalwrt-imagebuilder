# 25.12.1 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-K6L21XqoAGHW4NzLzsEnf/WoNNrwSqb7NNuO13M46Wk=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-Y9gwo8on+9TY86GGIW45hn04XwfuCDnDkpU1tWTN09M=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-dCxsUncSzYs0+pbSNY5U2HYKW4a8McF59mZmKbD6Vxo=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-VvssHAVmvnaf/A6gvA7ljptlffUsjCMA/X/Yq5u6u9U=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-tkv1NkIm7tdNGxEq8VMD18jvI718wKQ1bG1w1sfZHDE=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-PdGlrGrSwrsm/SlFcuaOzwxyVqNa326G0rrHNEXV7mo=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
