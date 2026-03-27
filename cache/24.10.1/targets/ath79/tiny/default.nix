# 24.10.1 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-1TS8BAr/NBH+rbr68z43LRf6eYoZLflozzLgYDWdhng=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "0219273171a5ac2c0d391b9aaa248f99a3a1fed92bbbd93df08fbe96c9205b28";
    filename = "immortalwrt-imagebuilder-24.10.1-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mf1QWWLa9FFuiG8PEkiiW/O9xnV3YzjqHs99Z5ttz3U=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2134f5766b3798419244fa0a3df73ec1";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-2134f5766b3798419244fa0a3df73ec1";
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
  kmods."6.6.86-1-2134f5766b3798419244fa0a3df73ec1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/kmods/6.6.86-1-2134f5766b3798419244fa0a3df73ec1/";
    sourceInfo = {
      hash = "sha256-RPPjuCanEciYSh/AMvUFf+o32tVwZKip8nai79TkixE=";
      name = "kmods-ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/kmods/6.6.86-1-2134f5766b3798419244fa0a3df73ec1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-j30b9VCAttG1RR2jNEkEtI6MoVB4I4mn5NPGWs9YW40=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ath79/tiny/packages/Packages";
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
