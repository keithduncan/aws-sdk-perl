# Generated by default/object.tt
package Paws::Backup::RestoreJobCreator;
  use Moose;
  has RestoreTestingPlanArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::RestoreJobCreator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::RestoreJobCreator object:

  $service_obj->Method(Att1 => { RestoreTestingPlanArn => $value, ..., RestoreTestingPlanArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::RestoreJobCreator object:

  $result = $service_obj->Method(...);
  $result->Att1->RestoreTestingPlanArn

=head1 DESCRIPTION

Contains information about the restore testing plan that Backup used to
initiate the restore job.

=head1 ATTRIBUTES


=head2 RestoreTestingPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a restore
testing plan.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

