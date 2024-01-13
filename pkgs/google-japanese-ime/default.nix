{
  lib,
  stdenv,
  source,
  undmg,
}:
stdenv.mkDerivation {
  pname = "google-japanese-ime";
  inherit (source) version src;

  dontUnpack = true;

  # nativeBuildInputs = [ undmg ];

  # unpackCmd = ''
  #   undmg $curSrc
  # '';

  sourceRoot = ".";

  installPhase = ''
    sudo /usr/sbin/installer -pkg GoogleJapaneseInput.pkg -target $out
  '';

  meta = with lib; {
    description = "Japanese input software";
    homepage = "https://www.google.co.jp/ime";
    license = licenses.unfree;
    platforms = platforms.darwin;
    maintainers = with maintainers; [ natsukium ];
  };
}

