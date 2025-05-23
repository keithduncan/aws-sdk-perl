# Generated by default/object.tt
package Paws::SageMaker::Alarm;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Alarm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Alarm object:

  $service_obj->Method(Att1 => { AlarmName => $value, ..., AlarmName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Alarm object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmName

=head1 DESCRIPTION

An Amazon CloudWatch alarm configured to monitor metrics on an
endpoint.

=head1 ATTRIBUTES


=head2 AlarmName => Str

The name of a CloudWatch alarm in your account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

