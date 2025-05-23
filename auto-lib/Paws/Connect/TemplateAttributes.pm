# Generated by default/object.tt
package Paws::Connect::TemplateAttributes;
  use Moose;
  has CustomAttributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has CustomerProfileAttributes => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::TemplateAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::TemplateAttributes object:

  $service_obj->Method(Att1 => { CustomAttributes => $value, ..., CustomerProfileAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::TemplateAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomAttributes

=head1 DESCRIPTION

Information about the template attributes.

=head1 ATTRIBUTES


=head2 CustomAttributes => L<Paws::Connect::Attributes>

An object that specifies the custom attributes values to use for
variables in the message template. This object contains different
categories of key-value pairs. Each key defines a variable or
placeholder in the message template.


=head2 CustomerProfileAttributes => Str

An object that specifies the customer profile attributes values to use
for variables in the message template. This object contains different
categories of key-value pairs. Each key defines a variable or
placeholder in the message template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

