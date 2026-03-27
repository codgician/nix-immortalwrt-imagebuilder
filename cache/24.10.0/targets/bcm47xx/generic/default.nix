# 24.10.0 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-6l5BhFtfFS8nM+QdVUIp4UYhOSYrPCW8dbmTRjtpdG4=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "856fd37f5be3d42e8a8b57a608d9de5cfc1295f7e8ab43e7cd277489c2e268dd";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-R4LVuWgYlJ/nkZtygGoLnWfiKCfFTYt35QGBEgDQVyc=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "c89eebfa90373fe5164888f90d5133d0";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-c89eebfa90373fe5164888f90d5133d0";
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
  kmods."6.6.73-1-c89eebfa90373fe5164888f90d5133d0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/kmods/6.6.73-1-c89eebfa90373fe5164888f90d5133d0/";
    sourceInfo = {
      hash = "sha256-81k1EQj6xo6G9eruNlRIeXeFdzPfQv4SWwAHxFoE9m8=";
      name = "kmods-bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/kmods/6.6.73-1-c89eebfa90373fe5164888f90d5133d0/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-98J4UPmyVVgI3ojlKz/ujXiBkx+OpPjVD6+ZyjTwhEM=";
      name = "bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/generic/packages/Packages";
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
