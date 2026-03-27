# 24.10.0 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-GKa6B8OEMQQUcu22UfIPafAaJS876eorqtX5gSHmEQ8=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "7d19fba3a5b52ae806f7998a4bb52931df26fb95ceddb59a4b946bd904c0a6fa";
    filename = "immortalwrt-imagebuilder-24.10.0-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zlLkllUatVZNXVCGvky4ZdV/K5QVVgPPZwEob5TJKXE=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "cee476db5a3f7bdc3047abf183ee7ff1";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-cee476db5a3f7bdc3047abf183ee7ff1";
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
  kmods."6.6.73-1-cee476db5a3f7bdc3047abf183ee7ff1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/kmods/6.6.73-1-cee476db5a3f7bdc3047abf183ee7ff1/";
    sourceInfo = {
      hash = "sha256-wsb15pDvLa3S1nRsI5e55nTsVpHx8+sxQWuDFfjSr88=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/kmods/6.6.73-1-cee476db5a3f7bdc3047abf183ee7ff1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-UP8zljbrMjcVqT3LHdQSmsOe9jYJtiDWozbiKjZX2yE=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6318/packages/Packages";
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
