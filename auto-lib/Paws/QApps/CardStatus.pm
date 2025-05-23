# Generated by default/object.tt
package Paws::QApps::CardStatus;
  use Moose;
  has CurrentState => (is => 'ro', isa => 'Str', request_name => 'currentState', traits => ['NameInRequest'], required => 1);
  has CurrentValue => (is => 'ro', isa => 'Str', request_name => 'currentValue', traits => ['NameInRequest'], required => 1);
  has Submissions => (is => 'ro', isa => 'ArrayRef[Paws::QApps::Submission]', request_name => 'submissions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::CardStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QApps::CardStatus object:

  $service_obj->Method(Att1 => { CurrentState => $value, ..., Submissions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QApps::CardStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentState

=head1 DESCRIPTION

The current status and value of a card in an active Amazon Q App
session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentState => Str

The current state of the card.


=head2 B<REQUIRED> CurrentValue => Str

The current value or result associated with the card.


=head2 Submissions => ArrayRef[L<Paws::QApps::Submission>]

A list of previous submissions, if the card is a form card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

