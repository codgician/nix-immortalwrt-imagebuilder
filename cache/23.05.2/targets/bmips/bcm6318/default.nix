# 23.05.2 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-ihNe7efZRdqqirAoS4JfLlqAMftbt7Ssu1MPO2E02Yg=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "cca8b3f01c622d78dcd6fdf531846a9dcf113170848c1bd0c51646acae675ff1";
    filename = "immortalwrt-imagebuilder-23.05.2-bmips-bcm6318.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-mqhZIIuGiMxhVzd8Ijx5OtKvTtnASUT0uITqwhv9qWU=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bmips/bcm6318/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-+7dcjxvDt02jKQoolFLRiMen4d9U2TmBySSxX2D8V3k=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bmips/bcm6318/packages/Packages";
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
