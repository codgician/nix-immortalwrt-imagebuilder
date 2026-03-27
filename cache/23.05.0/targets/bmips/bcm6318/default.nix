# 23.05.0 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-5Awqj1zSFutvL1M3bDxvTyxz8CdtNmqr4OCGHzNt9r4=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "a551ad7ba8497bf8106bb27513901932573f4ffc48081f83749b3f7964e2a4c6";
    filename = "immortalwrt-imagebuilder-23.05.0-bmips-bcm6318.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-SA87FNpvwFDSF7tpQvhRcv0F+G+mpGTcUp2xDbXohcs=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-OIRgNzgYyBWvw3/52E4TXTnHcBKvPMXKbASdgHJXylM=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6318/packages/Packages";
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
