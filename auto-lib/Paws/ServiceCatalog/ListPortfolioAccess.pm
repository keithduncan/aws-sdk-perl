
package Paws::ServiceCatalog::ListPortfolioAccess;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has OrganizationParentId => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPortfolioAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ListPortfolioAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPortfolioAccess - Arguments for method ListPortfolioAccess on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPortfolioAccess on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ListPortfolioAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPortfolioAccess.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ListPortfolioAccessOutput = $servicecatalog->ListPortfolioAccess(
      PortfolioId          => 'MyId',
      AcceptLanguage       => 'MyAcceptLanguage',    # OPTIONAL
      OrganizationParentId => 'MyId',                # OPTIONAL
      PageSize             => 1,                     # OPTIONAL
      PageToken            => 'MyPageToken',         # OPTIONAL
    );

    # Results:
    my $AccountIds    = $ListPortfolioAccessOutput->AccountIds;
    my $NextPageToken = $ListPortfolioAccessOutput->NextPageToken;

    # Returns a L<Paws::ServiceCatalog::ListPortfolioAccessOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ListPortfolioAccess>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 OrganizationParentId => Str

The ID of an organization node the portfolio is shared with. All
children of this node with an inherited portfolio share will be
returned.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPortfolioAccess in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

