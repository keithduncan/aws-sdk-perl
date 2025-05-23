# Generated by default/object.tt
package Paws::SSMQuickSetup::StatusSummary;
  use Moose;
  has LastUpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Paws::SSMQuickSetup::StatusDetails');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StatusType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::StatusSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMQuickSetup::StatusSummary object:

  $service_obj->Method(Att1 => { LastUpdatedAt => $value, ..., StatusType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMQuickSetup::StatusSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedAt

=head1 DESCRIPTION

A summarized description of the status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LastUpdatedAt => Str

The datetime stamp when the status was last updated.


=head2 Status => Str

The current status.


=head2 StatusDetails => L<Paws::SSMQuickSetup::StatusDetails>

Details about the status.


=head2 StatusMessage => Str

When applicable, returns an informational message relevant to the
current status and status type of the status summary object. We don't
recommend implementing parsing logic around this value since the
messages returned can vary in format.


=head2 B<REQUIRED> StatusType => Str

The type of a status summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

