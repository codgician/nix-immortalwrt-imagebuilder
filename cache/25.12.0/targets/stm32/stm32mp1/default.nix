# 25.12.0 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-PNV+FQAvAuPZ+xebSgtEUVO7VcIdjiI8cKOU6MVNWqo=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "d89154fcaf6ec52e87ce20c2d61b05688bf9fd66e72fb2b22eb7695b026a9b3b";
    filename = "immortalwrt-imagebuilder-25.12.0-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-s1/07KRYAPOaMRL6u/fYLBN9bpvJJ/8wTSdGVfl/RbI=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c65a97dbd97fccb987fd0ae796053491";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "blockdev"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-c65a97dbd97fccb987fd0ae796053491";
    profiles = {
      stm32mp135f-dk = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
        ];
      };
      stm32mp157c-dk2 = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
        ];
      };
      stm32mp157c-dk2-scmi = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
        ];
      };
    };
  };
  kmods."6.12.87-1-c65a97dbd97fccb987fd0ae796053491" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/kmods/6.12.87-1-c65a97dbd97fccb987fd0ae796053491/";
    sourceInfo = {
      hash = "sha256-CO8JBkTOVcdsM2s1N3wMYbMWAlRUGEm7MSkygJ/MFxU=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/kmods/6.12.87-1-c65a97dbd97fccb987fd0ae796053491/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-+CWRSmGSRCdnBBu36FQrZGsqeQGRtTIg9OQ8Jebz+kE=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/stm32/stm32mp1/packages/packages.adb";
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
