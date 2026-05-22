# snapshot bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-IGHWct5uVltUAEllaEkelEaImF7pujnBKH04fgWlGII=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7201306a8a5e0d4853d0e4eea0c84f8b0793c2cf3cf3b82966fe9aa7139ba747";
    filename = "immortalwrt-imagebuilder-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rA8WCR8bTzfKmL2iI7M9U1rlZIxxpUc8NOdN9yzF+ZE=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "c08777bb9cfd61cac7d18b2ff62ea307";
      version = "6.12.89";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.89-1-c08777bb9cfd61cac7d18b2ff62ea307";
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
  kmods."6.12.89-1-c08777bb9cfd61cac7d18b2ff62ea307" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.89-1-c08777bb9cfd61cac7d18b2ff62ea307/";
    sourceInfo = {
      hash = "sha256-8AIQuQ7XooWSPFahCULdrzCSCwNAXrbSPlQoTyENEoY=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.89-1-c08777bb9cfd61cac7d18b2ff62ea307/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-338j4QqYenNsK0oaG2pOCbHIPsKD2afxcLZB3S2cMR0=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/packages.adb";
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
