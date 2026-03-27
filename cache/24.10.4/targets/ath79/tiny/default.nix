# 24.10.4 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-oS6CoTrwMcidrp7WEYs0O+QyKJoOlRpwhj0cxeK8Y2U=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "62626ae2f5951adf6e6ee23f1fae486d1f2df1e3bbe5885764fa3452792882e3";
    filename = "immortalwrt-imagebuilder-24.10.4-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5lLFUR24C0AJWVMkOObEMUnLJLZN1XSblKu1j0uoG+c=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "fc67fe828076215e4b715b2c94a4d2e9";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-fc67fe828076215e4b715b2c94a4d2e9";
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
  kmods."6.6.110-1-fc67fe828076215e4b715b2c94a4d2e9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/kmods/6.6.110-1-fc67fe828076215e4b715b2c94a4d2e9/";
    sourceInfo = {
      hash = "sha256-KkyAPgPv1pVk4CsGvQCDjxtEWL434+0SjTX4wlRtKA0=";
      name = "kmods-ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/kmods/6.6.110-1-fc67fe828076215e4b715b2c94a4d2e9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-ZukoELFQ4NBwU5nbxCJpX7v0yRX/+3X3UrVSmUVOiVk=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ath79/tiny/packages/Packages";
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
