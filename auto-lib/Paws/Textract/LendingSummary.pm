# Generated by default/object.tt
package Paws::Textract::LendingSummary;
  use Moose;
  has DocumentGroups => (is => 'ro', isa => 'ArrayRef[Paws::Textract::DocumentGroup]');
  has UndetectedDocumentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::LendingSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::LendingSummary object:

  $service_obj->Method(Att1 => { DocumentGroups => $value, ..., UndetectedDocumentTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::LendingSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DocumentGroups

=head1 DESCRIPTION

Contains information regarding DocumentGroups and
UndetectedDocumentTypes.

=head1 ATTRIBUTES


=head2 DocumentGroups => ArrayRef[L<Paws::Textract::DocumentGroup>]

Contains an array of all DocumentGroup objects.


=head2 UndetectedDocumentTypes => ArrayRef[Str|Undef]

UndetectedDocumentTypes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

