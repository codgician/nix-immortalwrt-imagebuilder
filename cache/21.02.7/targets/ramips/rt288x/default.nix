# 21.02.7 ramips/rt288x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt288x/";
  sha256sums = {
    hash = "sha256-/wPE8mnFou1pc5k9m4N9FRRV0MBYo5PhR9G5fdA2wpw=";
    name = "ramips_rt288x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt288x/sha256sums";
  };
  imagebuilder = {
    sha256 = "b873aadb47dccafbb1bd63bc915e579d13bdca4ba25290dfefd149599b795a4d";
    filename = "immortalwrt-imagebuilder-21.02.7-ramips-rt288x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ospZn7kw0FCCGMp8MRPqnnWLHxkUi+q4NfxQA1pF/lg=";
    name = "ramips_rt288x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt288x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      belkin_f5d8235-v1 = {
        device_packages = [
          "kmod-switch-rtl8366s"
          "kmod-usb-ohci"
          "kmod-usb-ohci-pci"
          "kmod-usb2"
          "kmod-usb2-pci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt288x/packages/";
    sourceInfo = {
      hash = "sha256-crdQQs3qcJBjwSLskE+A8K7dFmK45ASY1DzaEWZuKhI=";
      name = "ramips_rt288x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt288x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc";
  feeds = import ./../../../packages/mipsel_24kc.nix;
}
