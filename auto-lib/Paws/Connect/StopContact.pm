
package Paws::Connect::StopContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has DisconnectReason => (is => 'ro', isa => 'Paws::Connect::DisconnectReason');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StopContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StopContact - Arguments for method StopContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StopContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StopContactResponse = $connect->StopContact(
      ContactId        => 'MyContactId',
      InstanceId       => 'MyInstanceId',
      DisconnectReason => {
        Code => 'MyDisconnectReasonCode',    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StopContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The ID of the contact.



=head2 DisconnectReason => L<Paws::Connect::DisconnectReason>

The reason a contact can be disconnected. Only Amazon Connect outbound
campaigns can provide this field.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

