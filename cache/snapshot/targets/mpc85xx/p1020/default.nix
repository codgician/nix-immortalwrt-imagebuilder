# snapshot mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-BcNQHW11rlxkUGdp75hyHwZXd1ovY/LML60mBZXI62g=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "8427f9549276d6ce945159c4ca3c8e00949a40a1f278aad344b62ea65a4bf60d";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5YVBzMiyGfJRq/ZjEQbTua67hUPvdOfuc9d5MmaJkTI=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "e0a274dfacc99e7048d59334af249097";
      version = "6.12.89";
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
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
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
    kmods_target = "6.12.89-1-e0a274dfacc99e7048d59334af249097";
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
  kmods."6.12.89-1-e0a274dfacc99e7048d59334af249097" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.12.89-1-e0a274dfacc99e7048d59334af249097/";
    sourceInfo = {
      hash = "sha256-2zfIVr6q8Lel4pjbMq9hBIMYZKUI3ACpEkcYNhVmtzk=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.12.89-1-e0a274dfacc99e7048d59334af249097/packages.adb";
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
      hash = "sha256-iwr5Cy/GduMGagzUgT27e4ImeSVr70FrgpadzhLZ+zE=";
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
