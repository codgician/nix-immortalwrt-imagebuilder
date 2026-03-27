# 23.05.4 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-NWEn5+pOJiFKoyvF/s6LYBJqAu6YSEGRxV+UFek42fQ=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "3e00b2e6296fb8d8a64b2b1395139d5d22d4b752360118b34a364af274c41b0f";
    filename = "immortalwrt-imagebuilder-23.05.4-ipq806x-chromium.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Gee89EuyvuAAbkfFNjg5W6enlfY9Iy2oXX3/mOsYlTc=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = null;
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
      "ipv6helper"
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
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-gBc9spcbKWW72ztofgUy74Mti+qcMHbzW/neuCy3SYU=";
      name = "ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ipq806x/chromium/packages/Packages";
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
