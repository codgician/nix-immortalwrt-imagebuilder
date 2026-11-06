# 25.12.0 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-NQ528jgm31upr1Kkh9eMjkKJPkhbQnutxxwu47VmMos=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-TT3YiBE9uMnLPoi1ycgihcZRBU8pvu769qS2GLOglCs=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-mXGzIBkGKLHHvbMRKtYWJ4g3AjJdgAW139S7UGMUnfc=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-BcrdTNRhn1bCth7HTh5P2k1LdO6wKstZVz4QHsxo9bE=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-VkEVZayVloWaHqUlLdSvl89v1z7zSD6Qf7rf9vBJycY=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-tBkTOdFLXiJlqvQ/ksitEQ/0W36++Ib8Q6gBGEJyMzU=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
