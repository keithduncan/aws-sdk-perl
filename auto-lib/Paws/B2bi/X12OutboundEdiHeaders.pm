# Generated by default/object.tt
package Paws::B2bi::X12OutboundEdiHeaders;
  use Moose;
  has Delimiters => (is => 'ro', isa => 'Paws::B2bi::X12Delimiters', request_name => 'delimiters', traits => ['NameInRequest']);
  has FunctionalGroupHeaders => (is => 'ro', isa => 'Paws::B2bi::X12FunctionalGroupHeaders', request_name => 'functionalGroupHeaders', traits => ['NameInRequest']);
  has InterchangeControlHeaders => (is => 'ro', isa => 'Paws::B2bi::X12InterchangeControlHeaders', request_name => 'interchangeControlHeaders', traits => ['NameInRequest']);
  has ValidateEdi => (is => 'ro', isa => 'Bool', request_name => 'validateEdi', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::X12OutboundEdiHeaders

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::B2bi::X12OutboundEdiHeaders object:

  $service_obj->Method(Att1 => { Delimiters => $value, ..., ValidateEdi => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::B2bi::X12OutboundEdiHeaders object:

  $result = $service_obj->Method(...);
  $result->Att1->Delimiters

=head1 DESCRIPTION

A structure containing the details for an outbound EDI object.

=head1 ATTRIBUTES


=head2 Delimiters => L<Paws::B2bi::X12Delimiters>

The delimiters, for example semicolon (C<;>), that separates sections
of the headers for the X12 object.


=head2 FunctionalGroupHeaders => L<Paws::B2bi::X12FunctionalGroupHeaders>

The functional group headers for the X12 object.


=head2 InterchangeControlHeaders => L<Paws::B2bi::X12InterchangeControlHeaders>

In X12 EDI messages, delimiters are used to mark the end of segments or
elements, and are defined in the interchange control header.


=head2 ValidateEdi => Bool

Specifies whether or not to validate the EDI for this X12 object:
C<TRUE> or C<FALSE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

