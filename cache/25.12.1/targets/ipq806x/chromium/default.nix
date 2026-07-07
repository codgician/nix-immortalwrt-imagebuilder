# 25.12.1 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-cljOFGnUUpSLe9dvd6t5dEHLVtyEFfXhmMgJFhK5gIU=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "dafef55be39c20332c939508503b2f036423b43b5ead43c20f369bc27ba1d772";
    filename = "immortalwrt-imagebuilder-25.12.1-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IdyNilgIR+egrhzF6E3mPcHH6xQPrlUuHUt8+/nvtic=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "62f4bc42e2d63f676fac0e698c648525";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ata-ahci"
      "kmod-ata-ahci-platform"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
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
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.94-1-62f4bc42e2d63f676fac0e698c648525";
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
  kmods."6.12.94-1-62f4bc42e2d63f676fac0e698c648525" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/kmods/6.12.94-1-62f4bc42e2d63f676fac0e698c648525/";
    sourceInfo = {
      hash = "sha256-Xi8z77MsekQ2kbnBkWRb9kszKguSz8upsEnG6jn606M=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/kmods/6.12.94-1-62f4bc42e2d63f676fac0e698c648525/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-EhjvkntGnj2vdSyUgnFgHIrIuZ84MZJNccb273VDwS0=";
      name = "ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq806x/chromium/packages/packages.adb";
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
