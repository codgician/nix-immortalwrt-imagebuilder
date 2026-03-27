# 23.05.3 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-Rofl9jVI8ceW4K0oxMnVGXzIf67DgVDUVXm4KFLTMy4=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "1d9e4529f8f561cdda2f62dc1f6926171d7ab435bf0c1af8bb19b029de1384c0";
    filename = "immortalwrt-imagebuilder-23.05.3-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-vTdCzTwFcpiP7jIq9E1UmRA0muIjs9cwPnyeO1deGn0=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      engenius_eap350-v1 = {
        device_packages = [ ];
      };
      engenius_ecb350-v1 = {
        device_packages = [ ];
      };
      engenius_enh202-v1 = {
        device_packages = [ "rssileds" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-z6mEIcdeu4c+cpSvMgPOuRUlc5Bg5du4Gy9VkkzP7Jk=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/ath79/tiny/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
