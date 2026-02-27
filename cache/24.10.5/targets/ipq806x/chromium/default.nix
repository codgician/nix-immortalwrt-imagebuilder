# 24.10.5 ipq806x/chromium
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-TOdVXkwsqW2jqPIUubmhgK7R+Y2oxltHaZ+ce8GB1VY=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "56f2603dc41cd9a3b716e80330f806519f611b38a276fa91ad68c867fde011be";
    filename = "immortalwrt-imagebuilder-24.10.5-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HtTqj0tixP7uSr7kueh16obrcowz69agtZrqyLnKs9c=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "67b6fb1c88cc1c864d2e9f529a62709a";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-67b6fb1c88cc1c864d2e9f529a62709a";
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
  kmods."6.6.122-1-67b6fb1c88cc1c864d2e9f529a62709a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/kmods/6.6.122-1-67b6fb1c88cc1c864d2e9f529a62709a/";
    sourceInfo = {
      hash = "sha256-XHyQnFeFsrPkna/DX8njNtDqYUhof5m/a4wsFvH95VY=";
      name = "kmods-ipq806x_chromium-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/kmods/6.6.122-1-67b6fb1c88cc1c864d2e9f529a62709a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-GOyrSZgupz2HwSvgYlj828KfQBNsSVhcPOUKIfVg3qA=";
      name = "ipq806x_chromium-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq806x/chromium/packages/Packages";
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
