# Generated by default/object.tt
package Paws::SecurityHub::StatelessCustomActionDefinition;
  use Moose;
  has PublishMetricAction => (is => 'ro', isa => 'Paws::SecurityHub::StatelessCustomPublishMetricAction');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StatelessCustomActionDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StatelessCustomActionDefinition object:

  $service_obj->Method(Att1 => { PublishMetricAction => $value, ..., PublishMetricAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StatelessCustomActionDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->PublishMetricAction

=head1 DESCRIPTION

The definition of a custom action that can be used for stateless packet
handling.

=head1 ATTRIBUTES


=head2 PublishMetricAction => L<Paws::SecurityHub::StatelessCustomPublishMetricAction>

Information about metrics to publish to CloudWatch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

