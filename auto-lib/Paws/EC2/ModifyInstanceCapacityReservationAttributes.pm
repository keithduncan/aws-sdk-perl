
package Paws::EC2::ModifyInstanceCapacityReservationAttributes;
  use Moose;
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::EC2::CapacityReservationSpecification', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceCapacityReservationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceCapacityReservationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCapacityReservationAttributes - Arguments for method ModifyInstanceCapacityReservationAttributes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceCapacityReservationAttributes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceCapacityReservationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceCapacityReservationAttributes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceCapacityReservationAttributesResult =
      $ec2->ModifyInstanceCapacityReservationAttributes(
      CapacityReservationSpecification => {
        CapacityReservationPreference => 'capacity-reservations-only'
        ,    # values: capacity-reservations-only, open, none; OPTIONAL
        CapacityReservationTarget => {
          CapacityReservationId => 'MyCapacityReservationId',    # OPTIONAL
          CapacityReservationResourceGroupArn => 'MyString',     # OPTIONAL
        },    # OPTIONAL
      },
      InstanceId => 'MyInstanceId',
      DryRun     => 1,                # OPTIONAL
      );

    # Results:
    my $Return = $ModifyInstanceCapacityReservationAttributesResult->Return;

# Returns a L<Paws::EC2::ModifyInstanceCapacityReservationAttributesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceCapacityReservationAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecification>

Information about the Capacity Reservation targeting option.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance to be modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceCapacityReservationAttributes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

