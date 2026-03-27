# 24.10.4 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-qo3TsJ28dWczwSj03pTim/Sp0J+1FHWrN0IY2ISn0DE=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "06b00fd05d7e796ab7764c1d4f7669dc37d30a922a797ef06fd306fcfed2190b";
    filename = "immortalwrt-imagebuilder-24.10.4-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-kG7xHNouUgfHmN2p0/1bAo1VLRtDUsiLOI1wg/4yN94=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "eae5dc40d0c1ca8112b6b9c1afc9af48";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-eae5dc40d0c1ca8112b6b9c1afc9af48";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-eae5dc40d0c1ca8112b6b9c1afc9af48" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/kmods/6.6.110-1-eae5dc40d0c1ca8112b6b9c1afc9af48/";
    sourceInfo = {
      hash = "sha256-WaYzZC7nmOkzA3N8Y5RlV8i6XTd6CQ2FxUCJ4F4GWBo=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/kmods/6.6.110-1-eae5dc40d0c1ca8112b6b9c1afc9af48/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-jZDvJ5zkgdEsonKMe4Y8EE1rI7mhznBNg/a1gLQ+rfo=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6318/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
