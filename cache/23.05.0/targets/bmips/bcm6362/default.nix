# 23.05.0 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-6MixikIsDQnZrMRffoCgOcGqEEmZDAkudhDyhMERbPg=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "5dfdaf09ca55ee4f6486814050040eff4f367d7660c2d949fe1c02d027f7bcbd";
    filename = "immortalwrt-imagebuilder-23.05.0-bmips-bcm6362.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-OeG68RhPw9X7E3VBmB2xdHavLzQEr5dwURaoO8olExU=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6362/profiles.json";
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
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-GqMw97yNmdhCy5MkyQz7e8b0r7wJ/lEWhb+1K5Rs450=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/bmips/bcm6362/packages/Packages";
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
