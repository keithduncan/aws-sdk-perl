# Generated by default/object.tt
package Paws::ComprehendMedical::SNOMEDCTDetails;
  use Moose;
  has Edition => (is => 'ro', isa => 'Str');
  has Language => (is => 'ro', isa => 'Str');
  has VersionDate => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::SNOMEDCTDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::SNOMEDCTDetails object:

  $service_obj->Method(Att1 => { Edition => $value, ..., VersionDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::SNOMEDCTDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Edition

=head1 DESCRIPTION

The information about the revision of the SNOMED-CT ontology in the
response. Specifically, the details include the SNOMED-CT edition,
language, and version date.

=head1 ATTRIBUTES


=head2 Edition => Str

The edition of SNOMED-CT used. The edition used for the InferSNOMEDCT
editions is the US edition.


=head2 Language => Str

The language used in the SNOMED-CT ontology. All Amazon Comprehend
Medical operations are US English (en).


=head2 VersionDate => Str

The version date of the SNOMED-CT ontology used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

