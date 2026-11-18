# snapshot mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-DdQ91UcDoxqxRGdD7HWYWTf76EYZ+xXarJzZUGuccsQ=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "dfaf9e0b30707e96a6eaad7f2f0d01c945b6ad7c9ac2d871b1a75431fb29f5b4";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NnBWwMadDd9/ZFSy5Uf/X28RZZ4K1yQxmSvLDQ1EqJk=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "f1b40cc7fc0e3afc5a5d2bb7f4260bf7";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-f1b40cc7fc0e3afc5a5d2bb7f4260bf7";
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
  kmods."6.18.60-1-f1b40cc7fc0e3afc5a5d2bb7f4260bf7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.18.60-1-f1b40cc7fc0e3afc5a5d2bb7f4260bf7/";
    sourceInfo = {
      hash = "sha256-1zC6xqx+KUV/MO1fSNSsamOZGY4m3Xb96X6ISPiCBEo=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.18.60-1-f1b40cc7fc0e3afc5a5d2bb7f4260bf7/packages.adb";
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
      hash = "sha256-uz63CUAx1ndsglmEEwvX8kN9pq+uAWUFEu3TzLqxuXI=";
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
