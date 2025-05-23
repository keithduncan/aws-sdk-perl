
package Paws::LicenseManager::ListResourceInventory;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::InventoryFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceInventory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ListResourceInventoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListResourceInventory - Arguments for method ListResourceInventory on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceInventory on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ListResourceInventory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceInventory.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ListResourceInventoryResponse =
      $license -manager->ListResourceInventory(
      Filters => [
        {
          Condition =>
            'EQUALS',    # values: EQUALS, NOT_EQUALS, BEGINS_WITH, CONTAINS
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceInventoryResponse->NextToken;
    my $ResourceInventoryList =
      $ListResourceInventoryResponse->ResourceInventoryList;

    # Returns a L<Paws::LicenseManager::ListResourceInventoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ListResourceInventory>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>]

Filters to scope the results. The following filters and logical
operators are supported:

=over

=item *

C<account_id> - The ID of the Amazon Web Services account that owns the
resource. Logical operators are C<EQUALS> | C<NOT_EQUALS>.

=item *

C<application_name> - The name of the application. Logical operators
are C<EQUALS> | C<BEGINS_WITH>.

=item *

C<license_included> - The type of license included. Logical operators
are C<EQUALS> | C<NOT_EQUALS>. Possible values are
C<sql-server-enterprise> | C<sql-server-standard> | C<sql-server-web> |
C<windows-server-datacenter>.

=item *

C<platform> - The platform of the resource. Logical operators are
C<EQUALS> | C<BEGINS_WITH>.

=item *

C<resource_id> - The ID of the resource. Logical operators are
C<EQUALS> | C<NOT_EQUALS>.

=item *

C<tag:E<lt>keyE<gt>> - The key/value combination of a tag assigned to
the resource. Logical operators are C<EQUALS> (single account) or
C<EQUALS> | C<NOT_EQUALS> (cross account).

=back




=head2 MaxResults => Int

Maximum number of results to return in a single call.



=head2 NextToken => Str

Token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceInventory in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

