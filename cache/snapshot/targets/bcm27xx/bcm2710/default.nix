# snapshot bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-ODJuzNKRMulAl31ZY4cDFhM1qSI6EEjjdgZJzqto05Q=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "e71adef80d5dc9d489c19f615f1c639da12c42bea7a14cc8e08ebcd3108dad8a";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ctNfRc1JZAG6Qia4YAVf6IR+j39KPGbGc4pbx91P1hk=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "13989358b13654bb9bb9bd5cd66f6c6e";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.12.94-1-13989358b13654bb9bb9bd5cd66f6c6e";
    profiles = {
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.94-1-13989358b13654bb9bb9bd5cd66f6c6e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.12.94-1-13989358b13654bb9bb9bd5cd66f6c6e/";
    sourceInfo = {
      hash = "sha256-LKPqBthJcwnDbHwVFIoIvMe1FUM1fKdXRPfQz+X4qLk=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.12.94-1-13989358b13654bb9bb9bd5cd66f6c6e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-y92ldNRBl5Rq8ty5PZHpDntf8BxJR05T4vnbflbWfV4=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
