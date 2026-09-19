# snapshot imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-9ECuycFl+yOHs7C+0mT3YuE6kLBEDYyPD3ctT3wkjGA=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "1a19733784e01b5f06d0778d4b27bc2b864286ed2a60004f904f595473fce673";
    filename = "immortalwrt-imagebuilder-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lT94dAp+PvvHcCpe1C4ei2pB6UXXQhF9H550K81GbNs=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8a82fbe3d4d4708c0dc321dbae00651a";
      version = "6.12.108";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
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
    kmods_target = "6.12.108-1-8a82fbe3d4d4708c0dc321dbae00651a";
    profiles = {
      technexion_imx7d-pico-pi = {
        device_packages = [
          "kmod-sound-core"
          "kmod-sound-soc-imx"
          "kmod-sound-soc-imx-sgtl5000"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-raw"
          "kmod-leds-gpio"
          "kmod-input-touchscreen-edt-ft5x06"
          "kmod-usb-hid"
          "kmod-btsdio"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4339-sdio"
          "cypress-nvram-4339-sdio"
        ];
      };
    };
  };
  kmods."6.12.108-1-8a82fbe3d4d4708c0dc321dbae00651a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.108-1-8a82fbe3d4d4708c0dc321dbae00651a/";
    sourceInfo = {
      hash = "sha256-OfUZYDpezT88vpSchtC1cRj8riQrlH8b/mfwhY1SNgw=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.108-1-8a82fbe3d4d4708c0dc321dbae00651a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-XLZ06DRjtijc1wTEC5Cjum0W6ZV87iE8qkwLfwwwnHo=";
      name = "imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
