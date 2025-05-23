# Generated by default/object.tt
package Paws::ImageBuilder::RemediationRecommendation;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', request_name => 'text', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::RemediationRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::RemediationRecommendation object:

  $service_obj->Method(Att1 => { Text => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::RemediationRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->Text

=head1 DESCRIPTION

Details about the recommended course of action to remediate the
finding.

=head1 ATTRIBUTES


=head2 Text => Str

The recommended course of action to remediate the finding.


=head2 Url => Str

A link to more information about the recommended remediation for this
vulnerability.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

