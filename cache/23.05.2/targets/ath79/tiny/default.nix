# 23.05.2 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-qhDWUu20VkjX9xcpCRHp3/UBTfkvNW7kFOFv/dqwFVY=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "e94f9a162c8c7001e25c9b9fdb8122bdbe62fbb58a755bbfe9f6754139832a17";
    filename = "immortalwrt-imagebuilder-23.05.2-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-SV58THFDYZd3ip0HOCFyEWrnOXUhI8JnE8Zgj0J7bTw=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/ath79/tiny/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-tlL1/4jlVFdr2Na9poGO/x060KQT7WnoFCxWii44sko=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/ath79/tiny/packages/Packages";
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
