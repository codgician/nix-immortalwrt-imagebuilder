# 25.12.0-rc1 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-WULnFPlHYVyNeTREG/+kcikvggw1ElirVizrSa1t2DQ=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "74752ebe0263321ed5e1b65a449865a8cd35aaf29d22fad75bfd0e53c48166eb";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tWF3Ko2WBWAV4CBr8QE7tZfM+NPyLCDbnz3+hRW8qFc=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "4b9f76df988102b4bfb4a743e5b6d252";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-4b9f76df988102b4bfb4a743e5b6d252";
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
  kmods."6.12.74-1-4b9f76df988102b4bfb4a743e5b6d252" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/kmods/6.12.74-1-4b9f76df988102b4bfb4a743e5b6d252/";
    sourceInfo = {
      hash = "sha256-4lJ0IRe45uushpRvBvltGVWJi/mixgbmvOGYTUsK8PQ=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/kmods/6.12.74-1-4b9f76df988102b4bfb4a743e5b6d252/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-31mafDlO/syDJrPBrhj7IE4FWgNq418IBGhvs+xioQ8=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/stm32/stm32mp1/packages/packages.adb";
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
