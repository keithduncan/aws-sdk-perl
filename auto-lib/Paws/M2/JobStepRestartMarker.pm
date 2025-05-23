# Generated by default/object.tt
package Paws::M2::JobStepRestartMarker;
  use Moose;
  has FromProcStep => (is => 'ro', isa => 'Str', request_name => 'fromProcStep', traits => ['NameInRequest']);
  has FromStep => (is => 'ro', isa => 'Str', request_name => 'fromStep', traits => ['NameInRequest'], required => 1);
  has Skip => (is => 'ro', isa => 'Bool', request_name => 'skip', traits => ['NameInRequest']);
  has StepCheckpoint => (is => 'ro', isa => 'Int', request_name => 'stepCheckpoint', traits => ['NameInRequest']);
  has ToProcStep => (is => 'ro', isa => 'Str', request_name => 'toProcStep', traits => ['NameInRequest']);
  has ToStep => (is => 'ro', isa => 'Str', request_name => 'toStep', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::JobStepRestartMarker

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::M2::JobStepRestartMarker object:

  $service_obj->Method(Att1 => { FromProcStep => $value, ..., ToStep => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::M2::JobStepRestartMarker object:

  $result = $service_obj->Method(...);
  $result->Att1->FromProcStep

=head1 DESCRIPTION

Provides step/procedure step information for a restart batch job
operation.

=head1 ATTRIBUTES


=head2 FromProcStep => Str

The procedure step name that a batch job was restarted from.


=head2 B<REQUIRED> FromStep => Str

The step name that a batch job was restarted from.


=head2 Skip => Bool

The step-level checkpoint timestamp (creation or last modification) for
an Amazon Web Services Blu Age application batch job.


=head2 StepCheckpoint => Int

Skip selected step and issue a restart from immediate successor step
for an Amazon Web Services Blu Age application batch job.


=head2 ToProcStep => Str

The procedure step name that a batch job was restarted to.


=head2 ToStep => Str

The step name that a batch job was restarted to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

