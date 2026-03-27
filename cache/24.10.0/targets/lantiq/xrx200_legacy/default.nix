# 24.10.0 lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-bRh6xMp/ycjJYe0FJCf7N2QQdESn8ihFigyj1GnqnuM=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "047c0ec22f921a1e4a40cff447996eea39ea7ffa5f67ecfea2cdd15ecc2cd826";
    filename = "immortalwrt-imagebuilder-24.10.0-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rgKbMv4IiZdfFp18uf2sfMxGu4jDVv5u1ExXolYaDKc=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "41c0dd82fae14bf8ea27b671791b5925";
      version = "6.6.73";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-ltq-atm-vr9"
      "kmod-ltq-deu-vr9"
      "kmod-ltq-ptm-vr9"
      "kmod-ltq-vdsl-vr9"
      "kmod-ltq-vdsl-vr9-mei"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "ltq-vdsl-vr9-app"
      "ltq-vdsl-vr9-vectoring-fw-installer"
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
      "ppp-mod-pppoa"
      "ppp-mod-pppoe"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-41c0dd82fae14bf8ea27b671791b5925";
    profiles = {
      netgear_dm200 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.73-1-41c0dd82fae14bf8ea27b671791b5925" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/kmods/6.6.73-1-41c0dd82fae14bf8ea27b671791b5925/";
    sourceInfo = {
      hash = "sha256-Pxgl8/L7cKCpnva+/N8FiKLcCgv4YYOD14za7zUslN0=";
      name = "kmods-lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/kmods/6.6.73-1-41c0dd82fae14bf8ea27b671791b5925/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-okA9pqbdWqqrlqk5VWoOCcLcO8mN+In5MgE2RhtPj1Y=";
      name = "lantiq_xrx200_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/lantiq/xrx200_legacy/packages/Packages";
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
