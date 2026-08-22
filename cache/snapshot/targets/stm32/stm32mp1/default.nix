# snapshot stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-GO1/dGrXDEgv4QNc76y+lZ1W4r3GBJmYAJrNsvTFMHY=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "43332bc460bcf02da61a2b5c3fe130444de3f94ec7d62729f0467d2f4ba629a4";
    filename = "immortalwrt-imagebuilder-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LmVqpX5Myd38WXIRcXC4aHPM2hX8EfCICDOx0AzJGfo=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "6df9bae184ef52439c2260f80c83b38f";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-6df9bae184ef52439c2260f80c83b38f";
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
  kmods."6.18.44-1-6df9bae184ef52439c2260f80c83b38f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.18.44-1-6df9bae184ef52439c2260f80c83b38f/";
    sourceInfo = {
      hash = "sha256-GL3pIbLniUM48y/1UlMRItcKTyzwH9K2gLFhd48hdWc=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.18.44-1-6df9bae184ef52439c2260f80c83b38f/packages.adb";
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
      hash = "sha256-L3E5g05BqdvNSrST9Or2icujqiw87GCnRcQ3dmp082w=";
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
