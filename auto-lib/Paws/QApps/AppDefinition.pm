# Generated by default/object.tt
package Paws::QApps::AppDefinition;
  use Moose;
  has AppDefinitionVersion => (is => 'ro', isa => 'Str', request_name => 'appDefinitionVersion', traits => ['NameInRequest'], required => 1);
  has CanEdit => (is => 'ro', isa => 'Bool', request_name => 'canEdit', traits => ['NameInRequest']);
  has Cards => (is => 'ro', isa => 'ArrayRef[Paws::QApps::Card]', request_name => 'cards', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::AppDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QApps::AppDefinition object:

  $service_obj->Method(Att1 => { AppDefinitionVersion => $value, ..., Cards => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QApps::AppDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->AppDefinitionVersion

=head1 DESCRIPTION

The definition of the Q App, specifying the cards and flow.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppDefinitionVersion => Str

The version of the app definition schema or specification.


=head2 CanEdit => Bool

A flag indicating whether the Q App's definition can be edited by the
user.


=head2 B<REQUIRED> Cards => ArrayRef[L<Paws::QApps::Card>]

The cards that make up the Q App, such as text input, file upload, or
query cards.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

