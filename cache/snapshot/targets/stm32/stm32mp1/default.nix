# snapshot stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-dsBrqFO6s1ERMiRtMcVa4hwmvbPgoYBow7XO/MevpJQ=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "0401b522346f2edd1838529cfceff2854952cf3ab4e8000cc9b6c6c6cc0dd4d1";
    filename = "immortalwrt-imagebuilder-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-F2yt7ohchITEVtLoutBWZlm9rQ1Jy/nLbBN0FGqMejU=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "fa129aa33aa59285d4bdfc0004dcd0bb";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-fa129aa33aa59285d4bdfc0004dcd0bb";
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
  kmods."6.12.89-1-fa129aa33aa59285d4bdfc0004dcd0bb" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.12.89-1-fa129aa33aa59285d4bdfc0004dcd0bb/";
    sourceInfo = {
      hash = "sha256-Zt7Kx80LMymqn+7/Bxkz6JMibqqtBsfHtdL4V0uNbXI=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.12.89-1-fa129aa33aa59285d4bdfc0004dcd0bb/packages.adb";
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
      hash = "sha256-eOpyJZECbj5Z/FKFMM1gzjlvqOFiqCHyHipSZQIRbag=";
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
