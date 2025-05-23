
package Paws::CloudFormation::SignalResource;
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UniqueId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SignalResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::SignalResource - Arguments for method SignalResource on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SignalResource on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method SignalResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SignalResource.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    $cloudformation->SignalResource(
      LogicalResourceId => 'MyLogicalResourceId',
      StackName         => 'MyStackNameOrId',
      Status            => 'SUCCESS',
      UniqueId          => 'MyResourceSignalUniqueId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/SignalResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogicalResourceId => Str

The logical ID of the resource that you want to signal. The logical ID
is the name of the resource that given in the template.



=head2 B<REQUIRED> StackName => Str

The stack name or unique stack ID that includes the resource that you
want to signal.



=head2 B<REQUIRED> Status => Str

The status of the signal, which is either success or failure. A failure
signal causes CloudFormation to immediately fail the stack creation or
update.

Valid values are: C<"SUCCESS">, C<"FAILURE">

=head2 B<REQUIRED> UniqueId => Str

A unique ID of the signal. When you signal Amazon EC2 instances or Auto
Scaling groups, specify the instance ID that you are signaling as the
unique ID. If you send multiple signals to a single resource (such as
signaling a wait condition), each signal requires a different unique
ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SignalResource in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

