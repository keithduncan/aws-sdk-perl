
package Paws::DMS::ModifyEventSubscription;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyEventSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyEventSubscription - Arguments for method ModifyEventSubscription on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyEventSubscription on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyEventSubscription.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyEventSubscriptionResponse = $dms->ModifyEventSubscription(
      SubscriptionName => 'MyString',
      Enabled          => 1,                      # OPTIONAL
      EventCategories  => [ 'MyString', ... ],    # OPTIONAL
      SnsTopicArn      => 'MyString',             # OPTIONAL
      SourceType       => 'MyString',             # OPTIONAL
    );

    # Results:
    my $EventSubscription = $ModifyEventSubscriptionResponse->EventSubscription;

    # Returns a L<Paws::DMS::ModifyEventSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyEventSubscription>

=head1 ATTRIBUTES


=head2 Enabled => Bool

A Boolean value; set to B<true> to activate the subscription.



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories for a source type that you want to subscribe
to. Use the C<DescribeEventCategories> action to see a list of event
categories.



=head2 SnsTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic created for
event notification. The ARN is created by Amazon SNS when you create a
topic and subscribe to it.



=head2 SourceType => Str

The type of DMS resource that generates the events you want to
subscribe to.

Valid values: replication-instance | replication-task



=head2 B<REQUIRED> SubscriptionName => Str

The name of the DMS event notification subscription to be modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyEventSubscription in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

