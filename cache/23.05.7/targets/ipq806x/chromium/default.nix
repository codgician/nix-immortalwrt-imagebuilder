# 23.05.7 ipq806x/chromium
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-WH4qGayvSqpwtGYCKgjeogrbWqkj0vEoXyqoatquK5s=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "df5caaf10a3931b7ddf0c9d90deda1a02051259e9db59b966819dd17298fd4d8";
    filename = "immortalwrt-imagebuilder-23.05.7-ipq806x-chromium.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-lXZjZlhgt3XsZQ0MBAgynBD/DVo2DczjUWObbj+Bo0g=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "45504a392bbc265f482a2e300858e361";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "5.15.195-1-45504a392bbc265f482a2e300858e361";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-RehmVq8Qwp1m2WusolGNNAy9Zu8iLvLgT6Y6Ki3Io7E=";
      name = "ipq806x_chromium-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq806x/chromium/packages/Packages";
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
