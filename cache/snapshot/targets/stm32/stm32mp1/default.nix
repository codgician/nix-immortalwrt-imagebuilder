# snapshot stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-+ICKekKY3ofXhfjulO2tLQPW58gFLMzLMNABSL1fZNc=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "d7bd5f8d78ace83e2306e4cf6e8c31d0ebe7d55bac0f35b3c6b61efadbf41660";
    filename = "immortalwrt-imagebuilder-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZqJyWBI5X+qmWj3umpffs8UJ+LsKYPiAXbLB/tR2f3g=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ea0f2578aa9c4574767ac3cf7dccd0aa";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blockdev"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.92-1-ea0f2578aa9c4574767ac3cf7dccd0aa";
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
  kmods."6.12.92-1-ea0f2578aa9c4574767ac3cf7dccd0aa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.12.92-1-ea0f2578aa9c4574767ac3cf7dccd0aa/";
    sourceInfo = {
      hash = "sha256-bHDLN324TfshaPq5nG9Wg2DK6ixM7LZyRT0e45Clt4M=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.12.92-1-ea0f2578aa9c4574767ac3cf7dccd0aa/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-XpmmTJstukFFar7CjRPKCKbRSWSOz87NgVVvz+jCUbU=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/packages/packages.adb";
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
