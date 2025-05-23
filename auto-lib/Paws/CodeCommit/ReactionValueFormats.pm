# Generated by default/object.tt
package Paws::CodeCommit::ReactionValueFormats;
  use Moose;
  has Emoji => (is => 'ro', isa => 'Str', request_name => 'emoji', traits => ['NameInRequest']);
  has ShortCode => (is => 'ro', isa => 'Str', request_name => 'shortCode', traits => ['NameInRequest']);
  has Unicode => (is => 'ro', isa => 'Str', request_name => 'unicode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ReactionValueFormats

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ReactionValueFormats object:

  $service_obj->Method(Att1 => { Emoji => $value, ..., Unicode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ReactionValueFormats object:

  $result = $service_obj->Method(...);
  $result->Att1->Emoji

=head1 DESCRIPTION

Information about the values for reactions to a comment. CodeCommit
supports a limited set of reactions.

=head1 ATTRIBUTES


=head2 Emoji => Str

The Emoji Version 1.0 graphic of the reaction. These graphics are
interpreted slightly differently on different operating systems.


=head2 ShortCode => Str

The emoji short code for the reaction. Short codes are interpreted
slightly differently on different operating systems.


=head2 Unicode => Str

The Unicode codepoint for the reaction.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

