
package Paws::FMS::BatchAssociateResource;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ResourceSetIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchAssociateResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::BatchAssociateResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::BatchAssociateResource - Arguments for method BatchAssociateResource on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchAssociateResource on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method BatchAssociateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchAssociateResource.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $BatchAssociateResourceResponse = $fms->BatchAssociateResource(
      Items => [
        'MyIdentifier', ...    # min: 1, max: 2048
      ],
      ResourceSetIdentifier => 'MyIdentifier',

    );

    # Results:
    my $FailedItems = $BatchAssociateResourceResponse->FailedItems;
    my $ResourceSetIdentifier =
      $BatchAssociateResourceResponse->ResourceSetIdentifier;

    # Returns a L<Paws::FMS::BatchAssociateResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/BatchAssociateResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[Str|Undef]

The uniform resource identifiers (URIs) of resources that should be
associated to the resource set. The URIs must be Amazon Resource Names
(ARNs).



=head2 B<REQUIRED> ResourceSetIdentifier => Str

A unique identifier for the resource set, used in a request to refer to
the resource set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchAssociateResource in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

