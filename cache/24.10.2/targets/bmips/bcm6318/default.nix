# 24.10.2 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-qfKr+G9EnerwX1d8bikrkxqxIfN8KE503n5nn7VR7sg=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "4af2f8cb0fd777a399e27865adb07d1f42cc7fe7ffb70a0ce4422f8807f4a6ae";
    filename = "immortalwrt-imagebuilder-24.10.2-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UyIVxb/t9zp7ZE4qFH9DjbMqed86n99SZzOt5RY7Xv4=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "0ada328a01bd42dfd0f4b6647a2f3901";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-0ada328a01bd42dfd0f4b6647a2f3901";
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
  kmods."6.6.93-1-0ada328a01bd42dfd0f4b6647a2f3901" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/kmods/6.6.93-1-0ada328a01bd42dfd0f4b6647a2f3901/";
    sourceInfo = {
      hash = "sha256-dGj6ctTf12TQY7rI7Yi7obmlopBe4VtziKAxh8gj7Lw=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/kmods/6.6.93-1-0ada328a01bd42dfd0f4b6647a2f3901/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-FGiGuZriZqajO/OBLDKD5GzKDBhyJZSacxwJ7XWMbnY=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6318/packages/Packages";
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
