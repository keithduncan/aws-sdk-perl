# Generated by default/object.tt
package Paws::Inspector2::Cvss3;
  use Moose;
  has BaseScore => (is => 'ro', isa => 'Num', request_name => 'baseScore', traits => ['NameInRequest']);
  has ScoringVector => (is => 'ro', isa => 'Str', request_name => 'scoringVector', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::Cvss3

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector2::Cvss3 object:

  $service_obj->Method(Att1 => { BaseScore => $value, ..., ScoringVector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector2::Cvss3 object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseScore

=head1 DESCRIPTION

The Common Vulnerability Scoring System (CVSS) version 3 details for
the vulnerability.

=head1 ATTRIBUTES


=head2 BaseScore => Num

The CVSS v3 base score for the vulnerability.


=head2 ScoringVector => Str

The scoring vector associated with the CVSS v3 score.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

