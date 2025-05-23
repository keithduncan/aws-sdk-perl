# Generated by default/object.tt
package Paws::Textract::ExpenseCurrency;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Confidence => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ExpenseCurrency

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::ExpenseCurrency object:

  $service_obj->Method(Att1 => { Code => $value, ..., Confidence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::ExpenseCurrency object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Returns the kind of currency detected.

=head1 ATTRIBUTES


=head2 Code => Str

Currency code for detected currency. the current supported codes are:

=over

=item *

USD

=item *

EUR

=item *

GBP

=item *

CAD

=item *

INR

=item *

JPY

=item *

CHF

=item *

AUD

=item *

CNY

=item *

BZR

=item *

SEK

=item *

HKD

=back



=head2 Confidence => Num

Percentage confideence in the detected currency.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

