
package Paws::Connect::UpdateContactAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes', required => 1);
  has InitialContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/attributes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateContactAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContactAttributes - Arguments for method UpdateContactAttributes on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactAttributes on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateContactAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactAttributes.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateContactAttributesResponse = $connect->UpdateContactAttributes(
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },
      InitialContactId => 'MyContactId',
      InstanceId       => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateContactAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::Connect::Attributes>

The Amazon Connect attributes. These attributes can be accessed in
flows just like any other contact attributes.

You can have up to 32,768 UTF-8 bytes across all attributes for a
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.

In the Set contact attributes
(https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html)
block, when the attributes for a contact exceed 32 KB, the contact is
routed down the Error branch of the flow. As a mitigation, consider the
following options:

=over

=item *

Remove unnecessary attributes by setting their values to empty.

=item *

If the attributes are only used in one flow and don't need to be
referred to outside of that flow (for example, by a Lambda or another
flow), then use flow attributes. This way you aren't needlessly
persisting the 32 KB of information from one flow to another. For more
information, see Flow block: Set contact attributes
(https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html)
in the I<Amazon Connect Administrator Guide>.

=back




=head2 B<REQUIRED> InitialContactId => Str

The identifier of the contact. This is the identifier of the contact
associated with the first interaction with the contact center.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactAttributes in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

