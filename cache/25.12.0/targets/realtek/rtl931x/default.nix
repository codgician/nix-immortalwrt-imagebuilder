# 25.12.0 realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-86FVVFvOWGOWGWoY7PRkNCejc+s2xy14Zz3DmwGAO50=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "1d9c6e1c9bd993ea4fa2029a7f3bb8655342e84ccb14033a928cb4732a67063c";
    filename = "immortalwrt-imagebuilder-25.12.0-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CE5NPyFc53HjmKG+wlW+U5HtKDXlJ16aTSsVGLET/gA=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ffa4be9c50a84cb4734772c1873d43a7";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-ffa4be9c50a84cb4734772c1873d43a7";
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
  kmods."6.12.87-1-ffa4be9c50a84cb4734772c1873d43a7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/kmods/6.12.87-1-ffa4be9c50a84cb4734772c1873d43a7/";
    sourceInfo = {
      hash = "sha256-rLpGFs4jbmhaDIC6HjOhSaTHMESdhM0ORKqxNIUU2jw=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/kmods/6.12.87-1-ffa4be9c50a84cb4734772c1873d43a7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-dp2nRAbkYywciw6/n9AlzW+CqYj0yW60C+xSexgjvhY=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x/packages/packages.adb";
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
