# 25.12.2 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-1u9Ft4w13+M2pcMIBlAPxdHe6/X21JGeMLpDCR1C4OM=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "2366eda0d7a544911d821e5d734e6c8a9a89b546a8cd060630c930e32c9d770c";
    filename = "immortalwrt-imagebuilder-25.12.2-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IupwDvixvFNDsgwrepPkZQv+0N4nMM/isk1IIT48akA=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "bb43dd108245d2bb55a50a54b35e5a5d";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-bb43dd108245d2bb55a50a54b35e5a5d";
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
  kmods."6.12.103-1-bb43dd108245d2bb55a50a54b35e5a5d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/kmods/6.12.103-1-bb43dd108245d2bb55a50a54b35e5a5d/";
    sourceInfo = {
      hash = "sha256-3Z8149OURs/dPb8+K/L3m863mFfVnqOc5DeIKRvdw3E=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/kmods/6.12.103-1-bb43dd108245d2bb55a50a54b35e5a5d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-X1xdM7w0eG4jZSbUKqdkglFsmKWZEpRVf8j2B5RHHpU=";
      name = "ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ipq806x/chromium/packages/packages.adb";
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
