# 24.10.3 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-4S9TPzfYF+dPumLjX8SWZ3zWQVtkgLgYt2G/XCWu9XY=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "0594d535cbc8b44c90f0d1e8d551461ebc4eb5859745d40e382d54415e0bbc69";
    filename = "immortalwrt-imagebuilder-24.10.3-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-URaB9c+5A3YlFpJEkYZ26c9Sv7BLKJlZOBvcx+d87dc=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8fb4e30c1e1ad9e13b0ec41c0aa609ac";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-8fb4e30c1e1ad9e13b0ec41c0aa609ac";
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
  kmods."6.6.104-1-8fb4e30c1e1ad9e13b0ec41c0aa609ac" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/kmods/6.6.104-1-8fb4e30c1e1ad9e13b0ec41c0aa609ac/";
    sourceInfo = {
      hash = "sha256-fUVcd+X8MNeGEJ9Agt6PwSnavEH2DH6htXaQe518ZzU=";
      name = "kmods-ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/kmods/6.6.104-1-8fb4e30c1e1ad9e13b0ec41c0aa609ac/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-sgIRNPvBTtD2ULaOkaCUpSqu6fzq4oyu73+lZg0z2U8=";
      name = "ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq806x/chromium/packages/Packages";
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
