{
  lib,
  stdenv,
  source,
  undmg,
  unzip,
}:
stdenv.mkDerivation {
  pname = "copyq";
  inherit (source) version src;

  nativeBuildInputs = [
    undmg
    unzip
  ];

  unpackCmd = ''
    unzip $curSrc
    undmg CopyQ.dmg
  '';

  sourceRoot = "CopyQ.app";

  installPhase = ''
    mkdir -p $out/Applications/CopyQ.app
    cp -R . $out/Applications/CopyQ.app
  '';

  meta = with lib; {
    homepage = "https://hluk.github.io/CopyQ";
    description = "Clipboard Manager with Advanced Features";
    license = licenses.gpl3Only;
    platforms = platforms.darwin;
    maintainers = with maintainers; [ natsukium ];
  };
}
