
package Paws::MQ::UpdateUser;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);
  has ConsoleAccess => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'consoleAccess');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'groups');
  has Password => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'password');
  has ReplicationUser => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'replicationUser');
  has Username => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'username', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}/users/{username}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::UpdateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateUser - Arguments for method UpdateUser on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $UpdateUserResponse = $mq->UpdateUser(
      BrokerId        => 'My__string',
      Username        => 'My__string',
      ConsoleAccess   => 1,                        # OPTIONAL
      Groups          => [ 'My__string', ... ],    # OPTIONAL
      Password        => 'My__string',             # OPTIONAL
      ReplicationUser => 1,                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/UpdateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.



=head2 ConsoleAccess => Bool

Enables access to the the ActiveMQ Web Console for the ActiveMQ user.



=head2 Groups => ArrayRef[Str|Undef]

The list of groups (20 maximum) to which the ActiveMQ user belongs.
This value can contain only alphanumeric characters, dashes, periods,
underscores, and tildes (- . _ ~). This value must be 2-100 characters
long.



=head2 Password => Str

The password of the user. This value must be at least 12 characters
long, must contain at least 4 unique characters, and must not contain
commas, colons, or equal signs (,:=).



=head2 ReplicationUser => Bool

Defines whether the user is intended for data replication.



=head2 B<REQUIRED> Username => Str

The username of the ActiveMQ user. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 2-100 characters long.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

