# 24.10.2 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-fAp52d9izyo1WQ36sr063iKKUH8OczGMksejjrE4hLE=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "a7e987d6431ea0de639baad091917cd0735f98d3597ac42bdd9f3f295bac8e4b";
    filename = "immortalwrt-imagebuilder-24.10.2-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xneLGq/UgQyJozC8buNLAc615tzIsstSO9ss9ZnVrRE=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "aafa570f44238fd7c8465edac3b46a4c";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-aafa570f44238fd7c8465edac3b46a4c";
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
  kmods."6.6.93-1-aafa570f44238fd7c8465edac3b46a4c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/kmods/6.6.93-1-aafa570f44238fd7c8465edac3b46a4c/";
    sourceInfo = {
      hash = "sha256-g+IXWY1EpCVMa/WTcvui532lsFXfXxBplP2pO0N4j8o=";
      name = "kmods-ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/kmods/6.6.93-1-aafa570f44238fd7c8465edac3b46a4c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-00FHD3qZldX+1V3/CeoazoNM0KGV/AuYLL+c8ESz6Dg=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/tiny/packages/Packages";
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
