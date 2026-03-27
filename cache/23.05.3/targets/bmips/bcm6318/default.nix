# 23.05.3 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-3+/xqgN8vSc0sFgO52o30d/egNBjKY+NkzjczogTnEs=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "ffd57ee7ac2bfc88df2f246f111108986035dc62c7cba1de0b3f4aecacee575f";
    filename = "immortalwrt-imagebuilder-23.05.3-bmips-bcm6318.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-2hCOKpmacs62tT3tSejfMPzPi0DS3DLa3rgZQHe9W38=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bmips/bcm6318/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-oiIPCfXngAVXiH4XH2/gnoPSeMYajEpZwJOk5WzDl08=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bmips/bcm6318/packages/Packages";
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
