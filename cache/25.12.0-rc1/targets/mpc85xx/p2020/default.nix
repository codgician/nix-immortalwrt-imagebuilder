# 25.12.0-rc1 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-x9U8DxV60cEpJEsX6yNqYSVHKHrXX2QIlF9rc0xPwvo=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "dfd83a405b29a8ff5cbc9d714b63c0d413aa7cc6010dae8590d00c4d4a2634de";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tAzkZkzoaRRilgndAghXhzKE8+iswq+5hPA3ucUlF6Y=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "4cdde536a89f1edd1eadb181f52dd050";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.74-1-4cdde536a89f1edd1eadb181f52dd050";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
        ];
      };
      watchguard_xtm330 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-w83793"
          "kmod-rtc-rs5c372a"
        ];
      };
    };
  };
  kmods."6.12.74-1-4cdde536a89f1edd1eadb181f52dd050" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/kmods/6.12.74-1-4cdde536a89f1edd1eadb181f52dd050/";
    sourceInfo = {
      hash = "sha256-bqKh2TRe5y66KpGkpjpuTiJF2qYCMWcwyhMlGhwE/ZU=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/kmods/6.12.74-1-4cdde536a89f1edd1eadb181f52dd050/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-c2ihxkudPbpbkn/a7US7WVBjBh3FGs0fLAkk40wlv8U=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p2020/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
