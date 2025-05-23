# Generated by default/object.tt
package Paws::SageMaker::ModelVariantConfigSummary;
  use Moose;
  has InfrastructureConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelInfrastructureConfig', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has VariantName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelVariantConfigSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelVariantConfigSummary object:

  $service_obj->Method(Att1 => { InfrastructureConfig => $value, ..., VariantName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelVariantConfigSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->InfrastructureConfig

=head1 DESCRIPTION

Summary of the deployment configuration of a model.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InfrastructureConfig => L<Paws::SageMaker::ModelInfrastructureConfig>

The configuration of the infrastructure that the model has been
deployed to.


=head2 B<REQUIRED> ModelName => Str

The name of the Amazon SageMaker Model entity.


=head2 B<REQUIRED> Status => Str

The status of deployment for the model variant on the hosted inference
endpoint.

=over

=item *

C<Creating> - Amazon SageMaker is preparing the model variant on the
hosted inference endpoint.

=item *

C<InService> - The model variant is running on the hosted inference
endpoint.

=item *

C<Updating> - Amazon SageMaker is updating the model variant on the
hosted inference endpoint.

=item *

C<Deleting> - Amazon SageMaker is deleting the model variant on the
hosted inference endpoint.

=item *

C<Deleted> - The model variant has been deleted on the hosted inference
endpoint. This can only happen after stopping the experiment.

=back



=head2 B<REQUIRED> VariantName => Str

The name of the variant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

