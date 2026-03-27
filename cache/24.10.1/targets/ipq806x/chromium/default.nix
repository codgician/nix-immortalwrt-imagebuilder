# 24.10.1 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-1X1wgIoOGEckokeDHzI+WQf+KrHoxFmwSlx+RUBhq2c=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "1ddebe217f2acc3968b470b6f045ba9970b0cbe6a040f2386f89a2185075fee7";
    filename = "immortalwrt-imagebuilder-24.10.1-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-m/HfpQTHKs3GmwDAuNujyPwY7GpusaBJHZv9VLzJAbk=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7da2ff38b1692f2dd56b6d8d11b8e2ee";
      version = "6.6.86";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
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
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.86-1-7da2ff38b1692f2dd56b6d8d11b8e2ee";
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
  kmods."6.6.86-1-7da2ff38b1692f2dd56b6d8d11b8e2ee" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/kmods/6.6.86-1-7da2ff38b1692f2dd56b6d8d11b8e2ee/";
    sourceInfo = {
      hash = "sha256-pRM2ieeQJNCbLTivDh4mBkEn6ip7AN3Buwe4QjTAdS4=";
      name = "kmods-ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/kmods/6.6.86-1-7da2ff38b1692f2dd56b6d8d11b8e2ee/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-YzNj81cx8vwvDCI1sVDP145aSb2w8750yQGvZqYldjo=";
      name = "ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq806x/chromium/packages/Packages";
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
