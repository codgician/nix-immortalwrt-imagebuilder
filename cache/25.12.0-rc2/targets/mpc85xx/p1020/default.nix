# 25.12.0-rc2 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-bB85VQZZ22NGhczWhzmlR7Jx8dzK4eFJ1KRf/fzczRw=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "38cabb9f3b2d1c6324b93df22cbbef831375d85e3945c16642e5c6b46381ef57";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jzrlbeNi6dcHdop7qm+RQFlFaTmkAiFuZsIwGK7qC5I=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "868df070831e43243d31bd4c8953f7e0";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-868df070831e43243d31bd4c8953f7e0";
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
  kmods."6.12.79-1-868df070831e43243d31bd4c8953f7e0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/kmods/6.12.79-1-868df070831e43243d31bd4c8953f7e0/";
    sourceInfo = {
      hash = "sha256-VmBjHPHDF2Nt02cBK+m66zs8iUEl66Bl5r2YFofHUj4=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/kmods/6.12.79-1-868df070831e43243d31bd4c8953f7e0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-n4hwD9swpRBdSYahQxXVY9gu/d/Nb60P8aPC/stM56w=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1020/packages/packages.adb";
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
