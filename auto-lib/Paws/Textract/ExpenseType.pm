# Generated by default/object.tt
package Paws::Textract::ExpenseType;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Text => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ExpenseType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::ExpenseType object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::ExpenseType object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

An object used to store information about the Type detected by Amazon
Textract.

=head1 ATTRIBUTES


=head2 Confidence => Num

The confidence of accuracy, as a percentage.


=head2 Text => Str

The word or line of text detected by Amazon Textract.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

