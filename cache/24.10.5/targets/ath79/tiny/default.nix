# 24.10.5 ath79/tiny
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-YCR2hzVSBI3vjLxtfEqksMPKOFz6ESo8WZ19QU9Jlo4=";
    name = "ath79_tiny-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "9c6be7689edcf0da11a7dd92046ce8e4b27deea51541290b79640f4c2714f7c5";
    filename = "immortalwrt-imagebuilder-24.10.5-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WiGm91PQ/1JGFEfAifJXT5qTWb179wyatpid5vguFmo=";
    name = "ath79_tiny-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "49955d6322506d9232d887e0d1585154";
      version = "6.6.122";
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
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
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
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.122-1-49955d6322506d9232d887e0d1585154";
    profiles = {
      dlink_dap-1720-a1 = {
        device_packages = [
          "-swconfig"
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
          "rssileds"
        ];
      };
      dlink_dir-859-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-859-a3 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-869-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      nec_wg600hp = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr8750n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr9500n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
    };
  };
  kmods."6.6.122-1-49955d6322506d9232d887e0d1585154" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/kmods/6.6.122-1-49955d6322506d9232d887e0d1585154/";
    sourceInfo = {
      hash = "sha256-HedfdwdTAC9KwUXRdp8RfbXQizgYjQcOHycRfg60aKQ=";
      name = "kmods-ath79_tiny-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/kmods/6.6.122-1-49955d6322506d9232d887e0d1585154/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-Spb8zdkhYpdfMh4vOsGYXM5IuoGap916fAvK3fErw6I=";
      name = "ath79_tiny-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/tiny/packages/Packages";
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
