
package Paws::ServiceCatalog::CreateProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Distributor => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Owner => (is => 'ro', isa => 'Str', required => 1);
  has ProductType => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactParameters => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactProperties');
  has SourceConnection => (is => 'ro', isa => 'Paws::ServiceCatalog::SourceConnection');
  has SupportDescription => (is => 'ro', isa => 'Str');
  has SupportEmail => (is => 'ro', isa => 'Str');
  has SupportUrl => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProduct - Arguments for method CreateProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreateProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreateProductOutput = $servicecatalog->CreateProduct(
      IdempotencyToken => 'MyIdempotencyToken',
      Name             => 'MyProductViewName',
      Owner            => 'MyProductViewOwner',
      ProductType      => 'CLOUD_FORMATION_TEMPLATE',
      AcceptLanguage   => 'MyAcceptLanguage',                 # OPTIONAL
      Description      => 'MyProductViewShortDescription',    # OPTIONAL
      Distributor      => 'MyProductViewOwner',               # OPTIONAL
      ProvisioningArtifactParameters => {
        Description =>
          'MyProvisioningArtifactDescription',    # max: 8192; OPTIONAL
        DisableTemplateValidation => 1,           # OPTIONAL
        Info                      => {
          'MyProvisioningArtifactInfoKey' => 'MyProvisioningArtifactInfoValue',
        },                                        # min: 1, max: 100; OPTIONAL
        Name => 'MyProvisioningArtifactName',     # max: 8192; OPTIONAL
        Type => 'CLOUD_FORMATION_TEMPLATE'
        , # values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR, TERRAFORM_OPEN_SOURCE, TERRAFORM_CLOUD, EXTERNAL; OPTIONAL
      },    # OPTIONAL
      SourceConnection => {
        ConnectionParameters => {
          CodeStar => {
            ArtifactPath  => 'MyRepositoryArtifactPath',    # min: 1, max: 4096
            Branch        => 'MyRepositoryBranch',          # min: 1, max: 250
            ConnectionArn => 'MyCodeStarConnectionArn',     # min: 1, max: 1224
            Repository    => 'MyRepository',                # min: 1, max: 100

          },    # OPTIONAL
        },
        Type => 'CODESTAR',    # values: CODESTAR; OPTIONAL
      },    # OPTIONAL
      SupportDescription => 'MySupportDescription',    # OPTIONAL
      SupportEmail       => 'MySupportEmail',          # OPTIONAL
      SupportUrl         => 'MySupportUrl',            # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProductViewDetail = $CreateProductOutput->ProductViewDetail;
    my $ProvisioningArtifactDetail =
      $CreateProductOutput->ProvisioningArtifactDetail;
    my $Tags = $CreateProductOutput->Tags;

    # Returns a L<Paws::ServiceCatalog::CreateProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreateProduct>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 Description => Str

The description of the product.



=head2 Distributor => Str

The distributor of the product.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> Name => Str

The name of the product.



=head2 B<REQUIRED> Owner => Str

The owner of the product.



=head2 B<REQUIRED> ProductType => Str

The type of product.

Valid values are: C<"CLOUD_FORMATION_TEMPLATE">, C<"MARKETPLACE">, C<"TERRAFORM_OPEN_SOURCE">, C<"TERRAFORM_CLOUD">, C<"EXTERNAL">

=head2 ProvisioningArtifactParameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>

The configuration of the provisioning artifact.



=head2 SourceConnection => L<Paws::ServiceCatalog::SourceConnection>

Specifies connection details for the created product and syncs the
product to the connection source artifact. This automatically manages
the product's artifacts based on changes to the source. The
C<SourceConnection> parameter consists of the following sub-fields.

=over

=item *

C<Type>

=item *

C<ConnectionParamters>

=back




=head2 SupportDescription => Str

The support information about the product.



=head2 SupportEmail => Str

The contact email for product support.



=head2 SupportUrl => Str

The contact URL for product support.

C<^https?:\/\// >/ is the pattern used to validate SupportUrl.



=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

