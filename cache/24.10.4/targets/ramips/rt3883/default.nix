# 24.10.4 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-cT71fop/WO1jv+o/e9yayCgWdjcx/Pqzy2/qMSDOmww=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "fbbdbb917b0eac76a9c11587ab7b13896583d50e6270ac3e60612919640e8c7f";
    filename = "immortalwrt-imagebuilder-24.10.4-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RfFMG5kRJETkozxgA8+O9UJ5EJHHuGyXA2LnOz/9WiQ=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "7f9a243507dbcac029d6cd5b8816c2eb";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.110-1-7f9a243507dbcac029d6cd5b8816c2eb";
    profiles = {
      belkin_f9k1109v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-645 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      samsung_cy-swr1100 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.110-1-7f9a243507dbcac029d6cd5b8816c2eb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/kmods/6.6.110-1-7f9a243507dbcac029d6cd5b8816c2eb/";
    sourceInfo = {
      hash = "sha256-hNYt/k8c0gZVFXip42S3xa/+to+0dxoMYSKqk2nme+8=";
      name = "kmods-ramips_rt3883-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/kmods/6.6.110-1-7f9a243507dbcac029d6cd5b8816c2eb/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-DIR6OQvjbjRXJdw7x/6eAQc7+zd/iUWcXMMMCmLWk/I=";
      name = "ramips_rt3883-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ramips/rt3883/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
