class Checkov < Formula
  include Language::Python::Virtualenv

  desc "Prevent cloud misconfigurations during build-time for IaC tools"
  homepage "https://www.checkov.io/"
  # checkov should only be updated every 15 releases on multiples of 15
  url "https://files.pythonhosted.org/packages/6f/bd/c93b8811b44978c4d6959aa75659943f433f6dec453d57a22cecf487dd14/checkov-1.0.810.tar.gz"
  sha256 "5b16857de188386671359d1fa107b167ba289581fa55755d1488a126984e9733"
  license "Apache-2.0"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "50c33b994735ecbc57147f55f22f886365e5778817a47cb83f4190304e008a21"
    sha256 cellar: :any_skip_relocation, big_sur:       "7463c4b3930fb86552790201b3cd990ccc03b4e564f4a766c4c93fea0d697db5"
    sha256 cellar: :any_skip_relocation, catalina:      "981ab0318b25e51085fe7ea9ebee8e269f045db21fde2f780ab9142746020a15"
    sha256 cellar: :any_skip_relocation, mojave:        "adcb8dee88efb7513fedbda871f48e042da890bffe2c811305e2fab21d5d174d"
  end

  depends_on "python@3.9"

  resource "bc-python-hcl2" do
    url "https://files.pythonhosted.org/packages/10/22/81264b33a0829b365bbefda7c92dd1344fc788841edbd6c260b46a75e784/bc-python-hcl2-0.3.14.tar.gz"
    sha256 "ed1897a2ee1517615a5acdd8e144a31e23b7b071b45e90f486ea066fd34c881d"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/76/b4/b7baffbda025efd5dc8fcd8d2e953e3aa939c236a484084fa8f4c3588ee9/boto3-1.17.17.tar.gz"
    sha256 "4523eab37ff005d5174083b59382cfd626b7890c08d56ce162a4bd92af7d44df"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/7f/2e/e02fdfd0f0377c4e44e61de27b05d5cfe93575770661ef9ded80ed90fa88/botocore-1.20.17.tar.gz"
    sha256 "178ce315d19fe0ef33e8ce6754a482d009e8d132c5adcc457f5cf1d99a98753b"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
    sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "deep_merge" do
    url "https://files.pythonhosted.org/packages/a5/25/aa35c20acd8a4f515f9e4c8dee4c7731446234101a6dae0c34cf498bb342/deep_merge-0.0.4.tar.gz"
    sha256 "b54415f90934c42e334114e2864cb4d4e7335b34ad396e35ad8610c96065a47e"
  end

  resource "dpath" do
    url "https://files.pythonhosted.org/packages/88/b2/abc5803f37a2ea1045d68765acfcb4ec166bc9e08c3ba451c53af29a73f2/dpath-1.5.0.tar.gz"
    sha256 "496615b4ea84236d18e0d286122de74869a60e0f87e2c7ec6787ff286c48361b"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/d1/05/eaf2ac564344030d8b3ce870b116d7bb559020163e80d9aa4a3d75f3e820/gitdb-4.0.5.tar.gz"
    sha256 "c9e1f2d0db7ddb9a704c2a0217be31214e91a4fe1dea1efad19ae42ba0c285c9"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/5f/f2/ea3242d97695451ab1521775a85253e002942d2c8f4519ae1172c0f5f979/GitPython-3.1.14.tar.gz"
    sha256 "be27633e7509e58391f10207cd32b2a6cf5b908f92d9cd30da2e514e1137af61"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  # only doing this because junit-xml source is not available in PyPI for v1.9
  resource "junit-xml" do
    url "https://github.com/kyrus/python-junit-xml.git",
        revision: "4bd08a272f059998cedf9b7779f944d49eba13a6"
  end

  resource "lark-parser" do
    url "https://files.pythonhosted.org/packages/34/b8/aa7d6cf2d5efdd2fcd85cf39b33584fe12a0f7086ed451176ceb7fb510eb/lark-parser-0.7.8.tar.gz"
    sha256 "26215ebb157e6fb2ee74319aa4445b9f3b7e456e26be215ce19fdaaa901c20a4"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/86/3c/bcd09ec5df7123abcf695009221a52f90438d877a2f1499453c6938f5728/packaging-20.9.tar.gz"
    sha256 "5b327ac1320dc863dca72f4514ecc086f31186744b84a230374cc1fd776feae5"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/08/e1/3ee2096ebaeeb8c186d20ed16c8faf4a503913e5c9a0e14cd6b8ffc405a3/s3transfer-0.3.4.tar.gz"
    sha256 "7fdddb4f22275cf1d32129e21f056337fd2a80b6ccef1664528145b72c49e6d2"
  end

  resource "semantic-version" do
    url "https://files.pythonhosted.org/packages/d4/52/3be868c7ed1f408cb822bc92ce17ffe4e97d11c42caafce0589f05844dd0/semantic_version-2.8.5.tar.gz"
    sha256 "d2cb2de0558762934679b9a104e82eca7af448c9f4974d1f3eeccff651df8a54"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/2b/6f/d48bbed5aa971943759f4ede3f12dca40aa7faa44f22bad483de86780508/smmap-3.0.5.tar.gz"
    sha256 "84c2751ef3072d4f6b2785ec7ee40244c6f45eb934d9e543e2c51f1bd3d54c50"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ae/3d/9d7576d94007eaf3bb685acbaaec66ff4cdeb0b18f1bf1f17edbeebffb0a/tabulate-0.8.9.tar.gz"
    sha256 "eb1d13f25760052e8931f2ef80aaf6045a6cceb47514db8beab24cded16f13a7"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz"
    sha256 "1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/b1/43/5fbcc228769304f437f412b98be988121afff58245105ad4fdad7f8c1526/tqdm-4.58.0.tar.gz"
    sha256 "c23ac707e8e8aabb825e4d91f8e17247f9cc14b0d64dd9e97be0781e9e525bba"
  end

  resource "update-checker" do
    url "https://files.pythonhosted.org/packages/5c/0b/1bec4a6cc60d33ce93d11a7bcf1aeffc7ad0aa114986073411be31395c6f/update_checker-0.18.0.tar.gz"
    sha256 "6a2d45bb4ac585884a6b03f9eade9161cedd9e8111545141e9aa9058932acb13"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/d7/8d/7ee68c6b48e1ec8d41198f694ecdc15f7596356f2ff8e6b1420300cf5db3/urllib3-1.26.3.tar.gz"
    sha256 "de3eedaad74a2683334e282005cd8d7f22f4d55fa690a2a1020a416cb0a47e73"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"test.tf").write <<~EOS
      resource "aws_s3_bucket" "foo-bucket" {
        region        = "us-east-1"
        bucket        = "test"
        acl           = "public-read"
        force_destroy = true

        versioning {
          enabled = true
        }
      }
    EOS

    assert_match "Passed checks: 4, Failed checks: 4, Skipped checks: 0",
      shell_output("#{bin}/checkov -f #{testpath}/test.tf 2>&1", 1)

    (testpath/"test2.tf").write <<~EOS
      resource "aws_s3_bucket" "foo-bucket" {
        region        = "us-east-1"
        bucket        = "test"
        acl           = "public-read"
        force_destroy = true

        #checkov:skip=CKV_AWS_52
        #checkov:skip=CKV_AWS_20:The bucket is a public static content host
        versioning {
          enabled = true
        }
      }
    EOS
    assert_match "Passed checks: 4, Failed checks: 2, Skipped checks: 2",
      shell_output("#{bin}/checkov -f #{testpath}/test2.tf 2>&1", 1)
  end
end
