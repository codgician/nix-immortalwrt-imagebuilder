# snapshot realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-z7VIxAGHY5vy3TfLToMn8nVdJWQzBqx5vztzoOztN3Y=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "4549f7ad96078e11cdad58f7ad737fb2689efc29186052d9a5181e59412cf9d2";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4a7hd8twRPmFWklt0vEySi7d9KOd4xbNkoyypMGTkZE=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "35209f21f09e4fcb055829292978f26f";
      version = "6.18.37";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.37-1-35209f21f09e4fcb055829292978f26f";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
      linksys_lgs328mpc-v2 = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.18.37-1-35209f21f09e4fcb055829292978f26f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.37-1-35209f21f09e4fcb055829292978f26f/";
    sourceInfo = {
      hash = "sha256-kYFF1LbvN/++0AqnHuMpCP7k3TrXJB01VXnR3nOg7rg=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.37-1-35209f21f09e4fcb055829292978f26f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-hKaaN1RtXInFqEHWB1ZsNoDkWhvqNiS2xkFDmBUNYZI=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
