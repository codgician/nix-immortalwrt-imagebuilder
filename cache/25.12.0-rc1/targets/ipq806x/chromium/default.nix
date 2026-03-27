# 25.12.0-rc1 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-yC/CEr8vzZYorqhPThFX9FXIRhQa1fwcYAtDZzod8KI=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "8f1320c36a8c4af6bd9c9b56982e8b72b1b6d0081462c5d57cef91f0404a11c8";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zY+Znh/RJu7cZ3KADbayZpjuvXzM9OAa+DwXHYq5fhU=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "b098686aa30a3f062f76916887b9b5e5";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-b098686aa30a3f062f76916887b9b5e5";
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
  kmods."6.12.74-1-b098686aa30a3f062f76916887b9b5e5" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/kmods/6.12.74-1-b098686aa30a3f062f76916887b9b5e5/";
    sourceInfo = {
      hash = "sha256-zVA+UOMpPVbvSQJ4KAYMdkP56z1KfP3JtO2xzodWf2E=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/kmods/6.12.74-1-b098686aa30a3f062f76916887b9b5e5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-2dCPGTr5jdB+MqxQ+FwBU5bOMlbHKwJ697oIaE1sBZ4=";
      name = "ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq806x/chromium/packages/packages.adb";
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
