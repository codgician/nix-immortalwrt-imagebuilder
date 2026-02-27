# snapshot package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-5PXnRWsWGl4GE/rT7X6T36tpL/B4CJEgeAzIRpD7wi4=";
    name = "mipsel_mips32-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-5Z7ho6mHxr+AZySYVEYdoHNrem21JlIc2VCCbryfFgg=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-Rd1XY+PB+Ja3XvL72+icWMtNg/ok27ldylg5JehZl8M=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-5p+C2wAiJB4LBuQAXG2Dd995J/js7CbIS2+uRKCekdA=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-Tki9ChXEoqloGDJguGDseVZn3ZwwMTO5sndW+ER6Zt4=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-dERbtLIvSNOgNpjsL+caUdlvX8wCcuh+5vQpAMkapps=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
