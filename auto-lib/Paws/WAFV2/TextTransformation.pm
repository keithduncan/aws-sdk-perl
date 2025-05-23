# Generated by default/object.tt
package Paws::WAFV2::TextTransformation;
  use Moose;
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::TextTransformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::TextTransformation object:

  $service_obj->Method(Att1 => { Priority => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::TextTransformation object:

  $result = $service_obj->Method(...);
  $result->Att1->Priority

=head1 DESCRIPTION

Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass detection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Priority => Int

Sets the relative processing order for multiple transformations. WAF
processes all transformations, from lowest priority to highest, before
inspecting the transformed content. The priorities don't need to be
consecutive, but they must all be different.


=head2 B<REQUIRED> Type => Str

For detailed descriptions of each of the transformation types, see Text
transformations
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-transformation.html)
in the I<WAF Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

