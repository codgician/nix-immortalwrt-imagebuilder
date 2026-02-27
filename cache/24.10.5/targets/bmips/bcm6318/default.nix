# 24.10.5 bmips/bcm6318
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-eDnlyOJf1F75W8NmEBbW9DTmWnEFa/2ZK6P1cWOXsno=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "45ff83e0e46aaecb9cd9062c891115647d8683fcce9290bcee3e06ba041727f8";
    filename = "immortalwrt-imagebuilder-24.10.5-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-75WvPBAjG3qxHzPNvlkGf8nmA/5y8aHC1uB+PR6VU4s=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "db8350bfeb463c3d1cfd1b9c50f1517b";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-db8350bfeb463c3d1cfd1b9c50f1517b";
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
  kmods."6.6.122-1-db8350bfeb463c3d1cfd1b9c50f1517b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/kmods/6.6.122-1-db8350bfeb463c3d1cfd1b9c50f1517b/";
    sourceInfo = {
      hash = "sha256-qRgzavq948sAfZr1gFQVMVRhR/Q+GJkzrew3Fc6XnfQ=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/kmods/6.6.122-1-db8350bfeb463c3d1cfd1b9c50f1517b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-+ayplthMf0ljB+vPG3Rvs3HzZvtRCTn4d5UPq0PyYmw=";
      name = "bmips_bcm6318-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6318/packages/Packages";
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
