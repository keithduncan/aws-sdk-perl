
package Paws::LookoutEquipment::PutResourcePolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $PutResourcePolicyResponse = $lookoutequipment->PutResourcePolicy(
      ClientToken      => 'MyIdempotenceToken',
      ResourceArn      => 'MyResourceArn',
      ResourcePolicy   => 'MyPolicy',
      PolicyRevisionId => 'MyPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $PolicyRevisionId = $PutResourcePolicyResponse->PolicyRevisionId;
    my $ResourceArn      = $PutResourcePolicyResponse->ResourceArn;

    # Returns a L<Paws::LookoutEquipment::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 PolicyRevisionId => Str

A unique identifier for a revision of the resource policy.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which the policy is
being created.



=head2 B<REQUIRED> ResourcePolicy => Str

The JSON-formatted resource policy to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

