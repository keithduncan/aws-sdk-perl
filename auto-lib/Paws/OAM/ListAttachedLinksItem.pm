# Generated by default/object.tt
package Paws::OAM::ListAttachedLinksItem;
  use Moose;
  has Label => (is => 'ro', isa => 'Str');
  has LinkArn => (is => 'ro', isa => 'Str');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::ListAttachedLinksItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OAM::ListAttachedLinksItem object:

  $service_obj->Method(Att1 => { Label => $value, ..., ResourceTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OAM::ListAttachedLinksItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Label

=head1 DESCRIPTION

A structure that contains information about one link attached to this
monitoring account sink.

=head1 ATTRIBUTES


=head2 Label => Str

The label that was assigned to this link at creation, with the
variables resolved to their actual values.


=head2 LinkArn => Str

The ARN of the link.


=head2 ResourceTypes => ArrayRef[Str|Undef]

The resource types supported by this link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

