# Generated by default/object.tt
package Paws::QApps::TextInputCard;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Str', request_name => 'defaultValue', traits => ['NameInRequest']);
  has Dependencies => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dependencies', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Placeholder => (is => 'ro', isa => 'Str', request_name => 'placeholder', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::TextInputCard

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QApps::TextInputCard object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QApps::TextInputCard object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

A card in an Amazon Q App that allows the user to input text.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

The default value to pre-populate in the text input field.


=head2 B<REQUIRED> Dependencies => ArrayRef[Str|Undef]

Any dependencies or requirements for the text input card.


=head2 B<REQUIRED> Id => Str

The unique identifier of the text input card.


=head2 Placeholder => Str

The placeholder text to display in the text input field.


=head2 B<REQUIRED> Title => Str

The title or label of the text input card.


=head2 B<REQUIRED> Type => Str

The type of the card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

