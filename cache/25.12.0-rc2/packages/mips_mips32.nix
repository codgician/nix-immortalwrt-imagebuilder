# 25.12.0-rc2 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-N/8HgW9BJbP4Ebhrmn5LSbcGITOjchFKeCOULT/lhsM=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-GQ2l22vSEQTKsWWFUdtV606S+r0gDNblyvtOt0dPNCw=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-OBLY9EhCHgrDu/xU8bgEtOE9OOePWHcONrIMpz9pUqU=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-SdPP2CxkL3ZzrKK59LmYSMY8q/Pwi6yCMcUYgguE0CA=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-7waiqrLJf32Pf5RiYiCgvPRkrhJLr6iST9fZO6jn9Y8=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-jLO8ki+rTOh4BDLK4tWSCh1QofcaqLM66TaqbdcxAAE=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
