# 23.05.2 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-r4bQpkXdWLe72FOhHGQZ0YStgwMLOklswpyf91q1ncM=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "97693c0b0f063020643e31ba4dfb375672b6f66dc0fd21f4144065ce784096c9";
    filename = "immortalwrt-imagebuilder-23.05.2-bcm47xx-legacy.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-dK1q3jUH3wGHGse+HAspdqgUF1Rwi1utsOb1nAlI9rk=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "nvram"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-P9GfJTvnJjzkt7w+tYPxtZOajDQ6YHbpXP9ZvBfzFfI=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm47xx/legacy/packages/Packages";
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
