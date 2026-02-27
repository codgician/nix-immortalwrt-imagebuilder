# snapshot ipq806x/chromium
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-ybHO7JEToUeeUGWJ4iHbwz2AG4CUJzrKff/AmxVvIL0=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "115e02373a6815e97cf2ab92846b96431485293c4a79ff241f94cc32335967d2";
    filename = "immortalwrt-imagebuilder-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Anr5ckPMX9KbAAGxOMhYy7U7cUxFjY8MGZ9nk2t7YeE=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "74f17a59aa9213b4904ada7b79af0f5f";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-74f17a59aa9213b4904ada7b79af0f5f";
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
  kmods."6.12.67-1-74f17a59aa9213b4904ada7b79af0f5f" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/kmods/6.12.67-1-74f17a59aa9213b4904ada7b79af0f5f/";
    sourceInfo = {
      hash = "sha256-XuZqK1X9ETsJCvkwJzVsMleRpBBc0tH9DvZj3e1szaU=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/kmods/6.12.67-1-74f17a59aa9213b4904ada7b79af0f5f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-Ios5hyFqHLGIX6sLDCLFPZ3k+LXkF0eUcfe1BFIunLw=";
      name = "ipq806x_chromium-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq806x/chromium/packages/packages.adb";
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
