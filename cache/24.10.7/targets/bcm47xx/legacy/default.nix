# 24.10.7 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-vRY9MNw3aPX9i7Muv9MCCP5RhZ4TyzJGBLdIF7tHet4=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "f77f9fed547cfc60a2494267969d8b818725fbec6ed444db778fd421f26bc4d8";
    filename = "immortalwrt-imagebuilder-24.10.7-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-my6CuqK5/dIB+FDojNsrWBEniXKC3tHdTWoVBV4sb+U=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b82540539f69933d234987e5de4cc65b";
      version = "6.6.159";
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.159-1-b82540539f69933d234987e5de4cc65b";
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
  kmods."6.6.159-1-b82540539f69933d234987e5de4cc65b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/kmods/6.6.159-1-b82540539f69933d234987e5de4cc65b/";
    sourceInfo = {
      hash = "sha256-fwjjyg5b9AlJthk1tjJHjyf8JXjL5GAUg+4z3b1VKgA=";
      name = "kmods-bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/kmods/6.6.159-1-b82540539f69933d234987e5de4cc65b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-6oLMEY+UuLlQ9YDWO1nlV5bv5JwkJZI5D0kvApkitjs=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm47xx/legacy/packages/Packages";
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
