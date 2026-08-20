# snapshot ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-8gyyfLw095tzfo6bazmmGnLHoNQ9aPfCNMAfmPEyVCE=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "83dae4511199404478ac50d609a95d95fd32b8c666a15abdce02ca798949e45c";
    filename = "immortalwrt-imagebuilder-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sU79lSkkbd//n3ZH9MSVnqZkxicrMmGWRANCVEpb83U=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "99c8ba05b58e3c6c726fbf526288089e";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-99c8ba05b58e3c6c726fbf526288089e";
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
  kmods."6.12.103-1-99c8ba05b58e3c6c726fbf526288089e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/kmods/6.12.103-1-99c8ba05b58e3c6c726fbf526288089e/";
    sourceInfo = {
      hash = "sha256-HJCHflw7wAFm+YfL4tBTdGO3JGWp6DEiGnFKJHYEbP8=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/kmods/6.12.103-1-99c8ba05b58e3c6c726fbf526288089e/packages.adb";
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
      hash = "sha256-jW61301LfjM6XExzIp/R7c9bzaUbZ+wXcRn2oXe2IB4=";
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
