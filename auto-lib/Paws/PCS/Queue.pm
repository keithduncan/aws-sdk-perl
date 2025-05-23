# Generated by default/object.tt
package Paws::PCS::Queue;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has ClusterId => (is => 'ro', isa => 'Str', request_name => 'clusterId', traits => ['NameInRequest'], required => 1);
  has ComputeNodeGroupConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::PCS::ComputeNodeGroupConfiguration]', request_name => 'computeNodeGroupConfigurations', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has ErrorInfo => (is => 'ro', isa => 'ArrayRef[Paws::PCS::ErrorInfo]', request_name => 'errorInfo', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has ModifiedAt => (is => 'ro', isa => 'Str', request_name => 'modifiedAt', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::Queue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PCS::Queue object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PCS::Queue object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A queue resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The unique Amazon Resource Name (ARN) of the queue.


=head2 B<REQUIRED> ClusterId => Str

The ID of the cluster of the queue.


=head2 B<REQUIRED> ComputeNodeGroupConfigurations => ArrayRef[L<Paws::PCS::ComputeNodeGroupConfiguration>]

The list of compute node group configurations associated with the
queue. Queues assign jobs to associated compute node groups.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 ErrorInfo => ArrayRef[L<Paws::PCS::ErrorInfo>]

The list of errors that occurred during queue provisioning.


=head2 B<REQUIRED> Id => Str

The generated unique ID of the queue.


=head2 B<REQUIRED> ModifiedAt => Str

The date and time the resource was modified.


=head2 B<REQUIRED> Name => Str

The name that identifies the queue.


=head2 B<REQUIRED> Status => Str

The provisioning status of the queue.

The provisioning status doesn't indicate the overall health of the
queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

