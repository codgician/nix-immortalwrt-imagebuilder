# snapshot qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-qVfVBHER4lQ4xCHaFZ4sAQ1ylVQa/yLjc/CgKYnWeOI=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6124dec1f71d1cf33b138f48e82360d9037bebec19c7130aeef50863708ac693";
    filename = "immortalwrt-imagebuilder-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-042PoZeIVFbIlEM4bKxehc6I+2A/P+QQNjv/5wytNK0=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "ae2ee0d2b1a130cd157cc373c644facb";
      version = "6.18.34";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.34-1-ae2ee0d2b1a130cd157cc373c644facb";
    profiles = {
      fsl_T4240RDB = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-ds1374"
        ];
      };
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.18.34-1-ae2ee0d2b1a130cd157cc373c644facb" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.34-1-ae2ee0d2b1a130cd157cc373c644facb/";
    sourceInfo = {
      hash = "sha256-ex+JHim8OGC2eLuD5fIDl1aBopC2MgicnXPhvfK4goY=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.34-1-ae2ee0d2b1a130cd157cc373c644facb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-to2Cea/2ucYaoNXx2NvJCjyiH0+aLvH8Dk4FSz0P2+I=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc64_e5500";
  feeds = import ./../../../packages/powerpc64_e5500.nix;
}
