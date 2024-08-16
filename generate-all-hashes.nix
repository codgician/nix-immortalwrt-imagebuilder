{ self
, pkgs
}:

pkgs.writeShellScriptBin "generate-all-hashes" ''
  PATH=${pkgs.lib.makeBinPath (with pkgs; [ self.packages.${pkgs.system}.generate-hashes git ])}:$PATH

  RELEASES=$(curl -s https://downloads.immortalwrt.org/releases/ |
    grep -oP "\"[1-9][0-9\.]+/\"" |
    sed -e 's/"//g' -e 's/\///' |
    uniq
  )
  for RELEASE in $RELEASES snapshot ; do
    echo "# Fetching hashes for ImmortalWrt $RELEASE"
    generate-hashes $RELEASE
  done
''
