# snapshot mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-zAyYOyyPAN+RD8IzsDx0MlhI8x5nvHWq8jhexKxV9vU=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "82bcfeee3293e7efb0ef7cc7d00905e074abaa4373e8db9d4ba87ce3ca0d4878";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JGADhtEf1TRxEzH85TQrcwgjS+I50FX50DJw/Gq6g8U=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "4140f8eebede3409a6a3429473c75c11";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.55-1-4140f8eebede3409a6a3429473c75c11";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
          "kmod-phy-at803x"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ "kmod-phy-at803x" ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-phy-at803x"
        ];
      };
      hpe_msm460 = {
        device_packages = [ "kmod-phy-marvell" ];
      };
      ocedo_panda = {
        device_packages = [
          "kmod-rtc-ds1307"
          "kmod-dsa-b53-mdio"
          "kmod-phy-broadcom"
        ];
      };
    };
  };
  kmods."6.18.55-1-4140f8eebede3409a6a3429473c75c11" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.18.55-1-4140f8eebede3409a6a3429473c75c11/";
    sourceInfo = {
      hash = "sha256-O0noDo00pFU3Xaca0YcwK7YumRMbMB4nJtItQHRcZpA=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.18.55-1-4140f8eebede3409a6a3429473c75c11/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-MgxN3/SoI3rjBwlUDmsWLlr6vOtloX8bIRviuZ4BWPo=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/packages/packages.adb";
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
