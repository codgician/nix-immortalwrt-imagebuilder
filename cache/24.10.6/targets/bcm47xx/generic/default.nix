# 24.10.6 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-KfcER7tFPk5Y/fCXnKw/aBuJnG4KeW/RcDtX8Z80LPs=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7a755ebdca5f8a0cea935cfbcb7763cb5e39fd45430f85285d40207c23100eb5";
    filename = "immortalwrt-imagebuilder-24.10.6-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-htiWhPdZdxRHOAgxWkNzbCBauNUCalLtVp33MkZinTc=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b84c44fc2685f5e6070321690b155431";
      version = "6.6.133";
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.133-1-b84c44fc2685f5e6070321690b155431";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.6.133-1-b84c44fc2685f5e6070321690b155431" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/kmods/6.6.133-1-b84c44fc2685f5e6070321690b155431/";
    sourceInfo = {
      hash = "sha256-oGNlK+wf3f74T0NTbKksRHIx6QjSbNSqgTvkGCQNcOw=";
      name = "kmods-bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/kmods/6.6.133-1-b84c44fc2685f5e6070321690b155431/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-E0Tok3U9958GTZLovak12cS456TVlw7mumfvxfsz8WA=";
      name = "bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm47xx/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
