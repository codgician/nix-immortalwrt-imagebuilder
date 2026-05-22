# snapshot realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-uVo55IHEYelD3Us6uiJjrZv82ftsu4xqchURDuziJdA=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "335c30cf7030994d9395e22be6cf04bc2fd4a72b0368fceac991d41b4f82741c";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9O2q6venaQXLJ6952/hlyhb6qhwrre8zsDeH9f8/chM=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "1ccd23585a68ffb91f2f20877e0fdb5a";
      version = "6.18.31";
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
    kmods_target = "6.18.31-1-1ccd23585a68ffb91f2f20877e0fdb5a";
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
      xikestor_sks8300-12x-v1 = {
        device_packages = [ ];
      };
      zyxel_xs1930-10 = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
        ];
      };
      zyxel_xs1930-12f = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
        ];
      };
      zyxel_xs1930-12hp = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
        ];
      };
    };
  };
  kmods."6.18.31-1-1ccd23585a68ffb91f2f20877e0fdb5a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.31-1-1ccd23585a68ffb91f2f20877e0fdb5a/";
    sourceInfo = {
      hash = "sha256-2c06mfKPUdeON3OVUIdhTg7blkVb8JzDoe6kFi7LPb0=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.31-1-1ccd23585a68ffb91f2f20877e0fdb5a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-o1MhjTD6NUiH3QeDgcgTGfLurE2shLEOb22Fl6Xt9w4=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/packages/packages.adb";
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
