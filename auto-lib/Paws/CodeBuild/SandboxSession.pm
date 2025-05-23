# Generated by default/object.tt
package Paws::CodeBuild::SandboxSession;
  use Moose;
  has CurrentPhase => (is => 'ro', isa => 'Str', request_name => 'currentPhase', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Logs => (is => 'ro', isa => 'Paws::CodeBuild::LogsLocation', request_name => 'logs', traits => ['NameInRequest']);
  has NetworkInterface => (is => 'ro', isa => 'Paws::CodeBuild::NetworkInterface', request_name => 'networkInterface', traits => ['NameInRequest']);
  has Phases => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::SandboxSessionPhase]', request_name => 'phases', traits => ['NameInRequest']);
  has ResolvedSourceVersion => (is => 'ro', isa => 'Str', request_name => 'resolvedSourceVersion', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::SandboxSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::SandboxSession object:

  $service_obj->Method(Att1 => { CurrentPhase => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::SandboxSession object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentPhase

=head1 DESCRIPTION

Contains information about the sandbox session.

=head1 ATTRIBUTES


=head2 CurrentPhase => Str

The current phase for the sandbox.


=head2 EndTime => Str

When the sandbox session ended, expressed in Unix time format.


=head2 Id => Str

The ID of the sandbox session.


=head2 Logs => L<Paws::CodeBuild::LogsLocation>




=head2 NetworkInterface => L<Paws::CodeBuild::NetworkInterface>




=head2 Phases => ArrayRef[L<Paws::CodeBuild::SandboxSessionPhase>]

An array of C<SandboxSessionPhase> objects.


=head2 ResolvedSourceVersion => Str

An identifier for the version of this sandbox's source code.


=head2 StartTime => Str

When the sandbox session started, expressed in Unix time format.


=head2 Status => Str

The status of the sandbox session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

