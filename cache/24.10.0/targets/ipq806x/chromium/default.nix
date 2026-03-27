# 24.10.0 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-zaJnIRuZ2IGk7dIkC1AThDbCJVXKzY8bBzKHuYu/eSQ=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "5e11f72e6d99e977e84aa8c0551b9fc9b04dc67970b83b44b476b72e3ea2b868";
    filename = "immortalwrt-imagebuilder-24.10.0-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9vfR3/H5oRWzLVQw4CEcZjbDn7GeHa+yvDCtrDv5RFA=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "b2ae979ba0bb5d3b38a8232bac368b90";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-b2ae979ba0bb5d3b38a8232bac368b90";
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
  kmods."6.6.73-1-b2ae979ba0bb5d3b38a8232bac368b90" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/kmods/6.6.73-1-b2ae979ba0bb5d3b38a8232bac368b90/";
    sourceInfo = {
      hash = "sha256-udNGIhR6CfJCFKJWu85p8LS8pq/BICNhyavq7N00NiA=";
      name = "kmods-ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/kmods/6.6.73-1-b2ae979ba0bb5d3b38a8232bac368b90/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-6f/72CULbA9vDIuUhDsBIwoiml3W845SZ3iP4h/Whuo=";
      name = "ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq806x/chromium/packages/Packages";
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
