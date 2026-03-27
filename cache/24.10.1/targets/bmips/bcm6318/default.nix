# 24.10.1 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-5Q4LNOGnQSW40bFhfMaFy+nxaePI6RdXNHh4KzImILM=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "5cf8bad6faedd9dd9df3185a4010442a120acb251825818a237e00d6d1871f4e";
    filename = "immortalwrt-imagebuilder-24.10.1-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vJ65Z2kiVO0kxAQdxz2XLLcDWIk6FpajffzfTGfnqK0=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7dd9569abfaafe100451deeacd41dcff";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-7dd9569abfaafe100451deeacd41dcff";
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
  kmods."6.6.86-1-7dd9569abfaafe100451deeacd41dcff" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/kmods/6.6.86-1-7dd9569abfaafe100451deeacd41dcff/";
    sourceInfo = {
      hash = "sha256-Lp4yjbzHgLovL7lupbwVoIzJnctaOknpNBcfApPSOoc=";
      name = "kmods-bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/kmods/6.6.86-1-7dd9569abfaafe100451deeacd41dcff/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-mgK0ociejTmsj7S0jxImwFApzgS++ovMwJ6BAoH24bY=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6318/packages/Packages";
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
