# snapshot ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-+iIemZkxvi0BoxmRUxWSNnzVW98XSskN8MXSRPKmZhI=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "7b7fd5f5b925040ffde0de308cf96f229c9ec09434c1591d7ba66d5230be4016";
    filename = "immortalwrt-imagebuilder-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mbT/16IXqk/35xrTsPoxj8UvBdExoNBzVaUuqkloJXY=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9da36f26b06442cf9c7dad3413161570";
      version = "6.12.89";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ata-ahci"
      "kmod-ata-ahci-platform"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-phy-qcom-ipq806x-usb"
      "kmod-usb-dwc3-qcom"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
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
    kmods_target = "6.12.89-1-9da36f26b06442cf9c7dad3413161570";
    profiles = {
      asus_onhub = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
          "partx-utils"
          "mkf2fs"
          "kmod-fs-f2fs"
          "ucode"
          "kmod-google-firmware"
          "kmod-tpm-i2c-infineon"
          "kmod-sound-soc-ipq8064-storm"
          "kmod-usb-storage"
          "kmod-ramoops"
        ];
      };
      tplink_onhub = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
          "partx-utils"
          "mkf2fs"
          "kmod-fs-f2fs"
          "ucode"
          "kmod-google-firmware"
          "kmod-tpm-i2c-infineon"
          "kmod-sound-soc-ipq8064-storm"
          "kmod-usb-storage"
          "kmod-ramoops"
        ];
      };
    };
  };
  kmods."6.12.89-1-9da36f26b06442cf9c7dad3413161570" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/kmods/6.12.89-1-9da36f26b06442cf9c7dad3413161570/";
    sourceInfo = {
      hash = "sha256-4bjiCBA5yu2qTQy7paNYCkgK33if8osC92IESQWNb9c=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/kmods/6.12.89-1-9da36f26b06442cf9c7dad3413161570/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-ghM+4tZWr13oNixKiaKwOhVGkg6p/8dyTg50e/9oO1A=";
      name = "ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a15_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a15_neon-vfpv4.nix;
}
