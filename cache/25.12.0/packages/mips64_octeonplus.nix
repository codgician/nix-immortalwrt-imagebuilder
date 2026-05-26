# 25.12.0 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-GoL3vjZSwEyFo50tTBTbFXXsOKZqMsNkDuqrNNC1Ltc=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-8Lrz5ZSlGLigUFIoByjGJdQD7RRBF4+0LaQ+drzlfT4=";
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
      hash = "sha256-kBBkgO2XlKtnS1i9gIUSFBPGC4y4JvCqg1j3MdbdwgU=";
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
      hash = "sha256-CF+CGnDVWS/f5ggwtN5zHHU190hAR1SOhD6YjkjbAUc=";
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
      hash = "sha256-xERkaT3ilowHCVF7RJU69+ADYL4k05q+S/GdZhPt/xg=";
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
      hash = "sha256-NIYG3l8aoNsA14HZI4UVWuhgqyTjNoGP7pvQ1jj9AEU=";
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
