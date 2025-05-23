# Generated by default/object.tt
package Paws::SageMaker::ModelDashboardModel;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelDashboardEndpoint]');
  has LastBatchTransformJob => (is => 'ro', isa => 'Paws::SageMaker::TransformJob');
  has Model => (is => 'ro', isa => 'Paws::SageMaker::Model');
  has ModelCard => (is => 'ro', isa => 'Paws::SageMaker::ModelDashboardModelCard');
  has MonitoringSchedules => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelDashboardMonitoringSchedule]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelDashboardModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelDashboardModel object:

  $service_obj->Method(Att1 => { Endpoints => $value, ..., MonitoringSchedules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelDashboardModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoints

=head1 DESCRIPTION

A model displayed in the Amazon SageMaker Model Dashboard.

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::SageMaker::ModelDashboardEndpoint>]

The endpoints that host a model.


=head2 LastBatchTransformJob => L<Paws::SageMaker::TransformJob>




=head2 Model => L<Paws::SageMaker::Model>

A model displayed in the Model Dashboard.


=head2 ModelCard => L<Paws::SageMaker::ModelDashboardModelCard>

The model card for a model.


=head2 MonitoringSchedules => ArrayRef[L<Paws::SageMaker::ModelDashboardMonitoringSchedule>]

The monitoring schedules for a model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

