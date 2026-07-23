# snapshot stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-pKR+2NCvptd8e3QpEuiomphiokHED3y5jTJtTmek/cQ=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "70d9eb083187e2018ba77b4847001598f4b1bdd820004b986553ae8b08e49b07";
    filename = "immortalwrt-imagebuilder-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eHAlJq6Ou6buN//athLzesZ/hJoXtvlSxoYVUds1IZc=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "cf1043e8e27aa8172e20bca09416c977";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-cf1043e8e27aa8172e20bca09416c977";
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
  kmods."6.12.94-1-cf1043e8e27aa8172e20bca09416c977" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.12.94-1-cf1043e8e27aa8172e20bca09416c977/";
    sourceInfo = {
      hash = "sha256-IM9e/nHOHw8fQ2ctUMuWTB6+XFuy/qPTBuuIsx4nDWI=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.12.94-1-cf1043e8e27aa8172e20bca09416c977/packages.adb";
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
      hash = "sha256-9EL318+SZSHTcgAPD7NvwqSFqP0LEv1Im8ScTuVeZKI=";
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
