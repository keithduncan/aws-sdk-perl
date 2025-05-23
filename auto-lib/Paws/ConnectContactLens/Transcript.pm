# Generated by default/object.tt
package Paws::ConnectContactLens::Transcript;
  use Moose;
  has BeginOffsetMillis => (is => 'ro', isa => 'Int', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has EndOffsetMillis => (is => 'ro', isa => 'Int', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IssuesDetected => (is => 'ro', isa => 'ArrayRef[Paws::ConnectContactLens::IssueDetected]');
  has ParticipantId => (is => 'ro', isa => 'Str', required => 1);
  has ParticipantRole => (is => 'ro', isa => 'Str', required => 1);
  has Sentiment => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectContactLens::Transcript

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectContactLens::Transcript object:

  $service_obj->Method(Att1 => { BeginOffsetMillis => $value, ..., Sentiment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectContactLens::Transcript object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginOffsetMillis

=head1 DESCRIPTION

A list of messages in the session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BeginOffsetMillis => Int

The beginning offset in the contact for this transcript.


=head2 B<REQUIRED> Content => Str

The content of the transcript.


=head2 B<REQUIRED> EndOffsetMillis => Int

The end offset in the contact for this transcript.


=head2 B<REQUIRED> Id => Str

The identifier of the transcript.


=head2 IssuesDetected => ArrayRef[L<Paws::ConnectContactLens::IssueDetected>]

List of positions where issues were detected on the transcript.


=head2 B<REQUIRED> ParticipantId => Str

The identifier of the participant. Valid values are CUSTOMER or AGENT.


=head2 B<REQUIRED> ParticipantRole => Str

The role of participant. For example, is it a customer, agent, or
system.


=head2 Sentiment => Str

The sentiment detected for this piece of transcript.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectContactLens>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

