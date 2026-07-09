# 25.12.0 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-rIMmeAe9J6WyLmKhp3LDkp9YzJUgn+JsM4VusO0yu6I=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-IB6aYT1MS2W6zzGIa98rakBDuRcv2Mqztts7QAXmeg0=";
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
      hash = "sha256-El8bh4DbrlNBQlPm8BljILhGiygRl+/Y9zIK0TzqEnI=";
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
      hash = "sha256-JrFb+2WTEiD9Y+MKw5acYg07tkWtTAde28wS1Ibml3c=";
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
      hash = "sha256-Rd3Qa0JE8z/RCGfQceS9OeR9j4ZgVY4zBTrUQdx7Fs0=";
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
      hash = "sha256-AFFOKC6mft/BzD97HC7GMXMhW5mRdih/C2vRIN45U+g=";
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
