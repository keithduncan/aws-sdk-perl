# Generated by default/object.tt
package Paws::Connect::FieldValueUnion;
  use Moose;
  has BooleanValue => (is => 'ro', isa => 'Bool');
  has DoubleValue => (is => 'ro', isa => 'Num');
  has EmptyValue => (is => 'ro', isa => 'Paws::Connect::EmptyFieldValue');
  has StringValue => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::FieldValueUnion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::FieldValueUnion object:

  $service_obj->Method(Att1 => { BooleanValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::FieldValueUnion object:

  $result = $service_obj->Method(...);
  $result->Att1->BooleanValue

=head1 DESCRIPTION

Object to store union of Field values.

=head1 ATTRIBUTES


=head2 BooleanValue => Bool

A Boolean number value type.


=head2 DoubleValue => Num

A Double number value type.


=head2 EmptyValue => L<Paws::Connect::EmptyFieldValue>

An empty value.


=head2 StringValue => Str

String value type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

