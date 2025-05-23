
package Paws::ServiceCatalog::DescribeProductAsAdmin;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SourcePortfolioId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProductAsAdmin');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeProductAsAdminOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductAsAdmin - Arguments for method DescribeProductAsAdmin on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProductAsAdmin on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribeProductAsAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProductAsAdmin.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribeProductAsAdminOutput = $servicecatalog->DescribeProductAsAdmin(
      AcceptLanguage    => 'MyAcceptLanguage',     # OPTIONAL
      Id                => 'MyId',                 # OPTIONAL
      Name              => 'MyProductViewName',    # OPTIONAL
      SourcePortfolioId => 'MyId',                 # OPTIONAL
    );

    # Results:
    my $Budgets           = $DescribeProductAsAdminOutput->Budgets;
    my $ProductViewDetail = $DescribeProductAsAdminOutput->ProductViewDetail;
    my $ProvisioningArtifactSummaries =
      $DescribeProductAsAdminOutput->ProvisioningArtifactSummaries;
    my $TagOptions = $DescribeProductAsAdminOutput->TagOptions;
    my $Tags       = $DescribeProductAsAdminOutput->Tags;

    # Returns a L<Paws::ServiceCatalog::DescribeProductAsAdminOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribeProductAsAdmin>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 Id => Str

The product identifier.



=head2 Name => Str

The product name.



=head2 SourcePortfolioId => Str

The unique identifier of the shared portfolio that the specified
product is associated with.

You can provide this parameter to retrieve the shared TagOptions
associated with the product. If this parameter is provided and if
TagOptions sharing is enabled in the portfolio share, the API returns
both local and shared TagOptions associated with the product. Otherwise
only local TagOptions will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProductAsAdmin in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

