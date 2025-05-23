# Generated by default/object.tt
package Paws::DevOpsGuru::CloudWatchMetricsDimension;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::CloudWatchMetricsDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DevOpsGuru::CloudWatchMetricsDimension object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DevOpsGuru::CloudWatchMetricsDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The dimension of an Amazon CloudWatch metric that is used when DevOps
Guru analyzes the resources in your account for operational problems
and anomalous behavior. A dimension is a name/value pair that is part
of the identity of a metric. A metric can have up to 10 dimensions. For
more information, see Dimensions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension)
in the I<Amazon CloudWatch User Guide>.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the CloudWatch dimension.


=head2 Value => Str

The value of the CloudWatch dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

