# Generated by default/object.tt
package Paws::SecurityHub::StatelessCustomPublishMetricActionDimension;
  use Moose;
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StatelessCustomPublishMetricActionDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StatelessCustomPublishMetricActionDimension object:

  $service_obj->Method(Att1 => { Value => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StatelessCustomPublishMetricActionDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Value

=head1 DESCRIPTION

Defines a CloudWatch dimension value to publish.

=head1 ATTRIBUTES


=head2 Value => Str

The value to use for the custom metric dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

