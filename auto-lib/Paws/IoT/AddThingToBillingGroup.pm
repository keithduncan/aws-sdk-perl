
package Paws::IoT::AddThingToBillingGroup;
  use Moose;
  has BillingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupArn');
  has BillingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupName');
  has ThingArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingArn');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddThingToBillingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/billing-groups/addThingToBillingGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::AddThingToBillingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AddThingToBillingGroup - Arguments for method AddThingToBillingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddThingToBillingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AddThingToBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddThingToBillingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $AddThingToBillingGroupResponse = $iot->AddThingToBillingGroup(
      BillingGroupArn  => 'MyBillingGroupArn',     # OPTIONAL
      BillingGroupName => 'MyBillingGroupName',    # OPTIONAL
      ThingArn         => 'MyThingArn',            # OPTIONAL
      ThingName        => 'MyThingName',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AddThingToBillingGroup>

=head1 ATTRIBUTES


=head2 BillingGroupArn => Str

The ARN of the billing group.



=head2 BillingGroupName => Str

The name of the billing group.

This call is asynchronous. It might take several seconds for the
detachment to propagate.



=head2 ThingArn => Str

The ARN of the thing to be added to the billing group.



=head2 ThingName => Str

The name of the thing to be added to the billing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddThingToBillingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

