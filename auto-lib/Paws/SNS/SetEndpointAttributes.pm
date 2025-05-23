
package Paws::SNS::SetEndpointAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetEndpointAttributes - Arguments for method SetEndpointAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetEndpointAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method SetEndpointAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetEndpointAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->SetEndpointAttributes(
      Attributes  => { 'MyString' => 'MyString', },
      EndpointArn => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/SetEndpointAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::SNS::MapStringToString>

A map of the endpoint attributes. Attributes in this map include the
following:

=over

=item *

C<CustomUserData> E<ndash> arbitrary user data to associate with the
endpoint. Amazon SNS does not use this data. The data must be in UTF-8
format and less than 2KB.

=item *

C<Enabled> E<ndash> flag that enables/disables delivery to the
endpoint. Amazon SNS will set this to false when a notification service
indicates to Amazon SNS that the endpoint is invalid. Users can set it
back to true, typically after updating Token.

=item *

C<Token> E<ndash> device token, also referred to as a registration id,
for an app and mobile device. This is returned from the notification
service when an app and mobile device are registered with the
notification service.

=back




=head2 B<REQUIRED> EndpointArn => Str

EndpointArn used for C<SetEndpointAttributes> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetEndpointAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

