# 25.12.2 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-+F5/vER941iKU4Yz43dqsv781M8nm4A0yFnwtjJYhds=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "568b12030d1a614ce9fed05343a6aef99047ffbb73cd9723b82cb3b422b0ac24";
    filename = "immortalwrt-imagebuilder-25.12.2-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ni4O8WO+7Pm82aq09JF34L4qjLSencdkMFsNHIt6Bow=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "8e8164b868fe3a8ac0b15d66e059ff1d";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.103-1-8e8164b868fe3a8ac0b15d66e059ff1d";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      hpe_msm460 = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
    };
  };
  kmods."6.12.103-1-8e8164b868fe3a8ac0b15d66e059ff1d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/kmods/6.12.103-1-8e8164b868fe3a8ac0b15d66e059ff1d/";
    sourceInfo = {
      hash = "sha256-zYirlK3a3eZ+K7B1ge7xVEGkzLNyqJMsbaImCteQ++0=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/kmods/6.12.103-1-8e8164b868fe3a8ac0b15d66e059ff1d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-RLHFd1JsI2cHQFOoQzODAbFg/1kGTELZl0uSCoxNJgw=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1020/packages/packages.adb";
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
