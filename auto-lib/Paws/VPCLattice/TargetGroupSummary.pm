# Generated by default/object.tt
package Paws::VPCLattice::TargetGroupSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has IpAddressType => (is => 'ro', isa => 'Str', request_name => 'ipAddressType', traits => ['NameInRequest']);
  has LambdaEventStructureVersion => (is => 'ro', isa => 'Str', request_name => 'lambdaEventStructureVersion', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has ServiceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'serviceArns', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has VpcIdentifier => (is => 'ro', isa => 'Str', request_name => 'vpcIdentifier', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::TargetGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VPCLattice::TargetGroupSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VPCLattice::TargetGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Summary information about a target group.

For more information, see Target groups
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html)
in the I<Amazon VPC Lattice User Guide>.

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN (Amazon Resource Name) of the target group.


=head2 CreatedAt => Str

The date and time that the target group was created, in ISO-8601
format.


=head2 Id => Str

The ID of the target group.


=head2 IpAddressType => Str

The type of IP address used for the target group. The possible values
are C<IPV4> and C<IPV6>. This is an optional parameter. If not
specified, the default is C<IPV4>.


=head2 LambdaEventStructureVersion => Str

The version of the event structure that your Lambda function receives.
Supported only if the target group type is C<LAMBDA>.


=head2 LastUpdatedAt => Str

The date and time that the target group was last updated, in ISO-8601
format.


=head2 Name => Str

The name of the target group.


=head2 Port => Int

The port of the target group.


=head2 Protocol => Str

The protocol of the target group.


=head2 ServiceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the service.


=head2 Status => Str

The status.


=head2 Type => Str

The target group type.


=head2 VpcIdentifier => Str

The ID of the VPC of the target group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

