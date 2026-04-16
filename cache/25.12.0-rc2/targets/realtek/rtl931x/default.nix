# 25.12.0-rc2 realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-C+LCt0j8G5uGp8bZmEH8rtbSVeXJmpuyWYkwcJfk4Ow=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "53d8537557466f6b3c179168bb64005586878a44f92337cba4bf645beb295f4a";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eI+1axxmpY+Ekyuz5U0tjxeQnx60o8AGYtKpwdrkKms=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ee44626dc5300d17845878206301e5a6";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-ee44626dc5300d17845878206301e5a6";
    profiles = {
      plasmacloud_esx28 = {
        device_packages = [ "kmod-hwmon-adt7475" ];
      };
      plasmacloud_psx28 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "poemgr"
        ];
      };
    };
  };
  kmods."6.12.79-1-ee44626dc5300d17845878206301e5a6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/kmods/6.12.79-1-ee44626dc5300d17845878206301e5a6/";
    sourceInfo = {
      hash = "sha256-pntP6XK1L5y4r9yTXEbjbpJpocp/pA/fC6elY9PPlYo=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/kmods/6.12.79-1-ee44626dc5300d17845878206301e5a6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-6vPyvMibBozor02+jaq9BarSRItqAF41zMCQ5Kna7NE=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x/packages/packages.adb";
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
