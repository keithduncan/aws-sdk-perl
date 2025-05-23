
package Paws::MarketplaceCatalog::StartChangeSet;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ChangeSet => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::Change]', required => 1);
  has ChangeSetName => (is => 'ro', isa => 'Str');
  has ChangeSetTags => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::Tag]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Intent => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartChangeSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartChangeSet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCatalog::StartChangeSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::StartChangeSet - Arguments for method StartChangeSet on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartChangeSet on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method StartChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartChangeSet.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $StartChangeSetResponse = $catalog . marketplace->StartChangeSet(
      Catalog   => 'MyCatalog',
      ChangeSet => [
        {
          ChangeType => 'MyChangeType',    # min: 1, max: 255
          Entity     => {
            Type       => 'MyEntityType',    # min: 1, max: 255
            Identifier => 'MyIdentifier',    # min: 1, max: 255; OPTIONAL
          },
          ChangeName      => 'MyChangeName',    # min: 1, max: 72; OPTIONAL
          Details         => 'MyJson',          # min: 2, max: 16384; OPTIONAL
          DetailsDocument => {

          },                                    # OPTIONAL
          EntityTags => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256

            },
            ...
          ],    # min: 1, max: 200; OPTIONAL
        },
        ...
      ],
      ChangeSetName => 'MyChangeSetName',    # OPTIONAL
      ChangeSetTags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Intent             => 'VALIDATE',                # OPTIONAL
    );

    # Results:
    my $ChangeSetArn = $StartChangeSetResponse->ChangeSetArn;
    my $ChangeSetId  = $StartChangeSetResponse->ChangeSetId;

    # Returns a L<Paws::MarketplaceCatalog::StartChangeSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/StartChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The catalog related to the request. Fixed value: C<AWSMarketplace>



=head2 B<REQUIRED> ChangeSet => ArrayRef[L<Paws::MarketplaceCatalog::Change>]

Array of C<change> object.



=head2 ChangeSetName => Str

Optional case sensitive string of up to 100 ASCII characters. The
change set name can be used to filter the list of change sets.



=head2 ChangeSetTags => ArrayRef[L<Paws::MarketplaceCatalog::Tag>]

A list of objects specifying each key name and value for the
C<ChangeSetTags> property.



=head2 ClientRequestToken => Str

A unique token to identify the request to ensure idempotency.



=head2 Intent => Str

The intent related to the request. The default is C<APPLY>. To test
your request before applying changes to your entities, use C<VALIDATE>.
This feature is currently available for adding versions to single-AMI
products. For more information, see Add a new version
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#ami-add-version).

Valid values are: C<"VALIDATE">, C<"APPLY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartChangeSet in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

