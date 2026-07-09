# 25.12.1 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-PiWGmOuFwzZdST2Mm0fZQM6ZLvsJAkvhltXL68EXNLI=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-gXn92CuzLW8279WsWrT1wIPMs4LZa+wjIlEhcBppPus=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-xqg4Q7KdIcc0sVW9lc+BhEUmP54K9RXEi1Q4gCpuQIo=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-do6xap7a+mNHdUfBtEULkaEjW3W+C2VvJSd4Wv6JT8s=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-i/KwBQjoNHRdEKCoV9fvPT73059t7FS+x81OSrnIgLw=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-nzCqEkafIWZ918PH/OWH0sYiS5BM6YS86pDoSU6xkK0=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
