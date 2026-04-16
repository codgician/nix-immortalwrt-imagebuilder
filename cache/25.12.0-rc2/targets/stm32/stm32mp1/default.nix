# 25.12.0-rc2 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-9+/DQbJ5HIuHvl03dL8N2Ky2Mw+d7tvS9kbraQUB5ts=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "147b8a2ae668299a1492755112cee94ec0146e81bc654809f9a832e6af927925";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hBTFf3mEMhODQZndUEldmclkcPevTHIScyrAVUcffGs=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f958199694ee286d394f230995653912";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-f958199694ee286d394f230995653912";
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
  kmods."6.12.79-1-f958199694ee286d394f230995653912" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/kmods/6.12.79-1-f958199694ee286d394f230995653912/";
    sourceInfo = {
      hash = "sha256-hfo7+p02BfZbcpcK5YeD//mokjNeNBg0eSURSv5QLLU=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/kmods/6.12.79-1-f958199694ee286d394f230995653912/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-Hf4qZ6EE1qSeVvTAgR0vwGdHQaOWPSFfllljuyzBt6s=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/stm32/stm32mp1/packages/packages.adb";
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
