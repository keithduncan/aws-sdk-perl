# Generated by default/object.tt
package Paws::SageMaker::HubAccessConfig;
  use Moose;
  has HubContentArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HubAccessConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HubAccessConfig object:

  $service_obj->Method(Att1 => { HubContentArn => $value, ..., HubContentArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HubAccessConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HubContentArn

=head1 DESCRIPTION

The configuration for a private hub model reference that points to a
public SageMaker JumpStart model.

For more information about private hubs, see Private curated hubs for
foundation model access control in JumpStart
(https://docs.aws.amazon.com/sagemaker/latest/dg/jumpstart-curated-hubs.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubContentArn => Str

The ARN of your private model hub content. This should be a
C<ModelReference> resource type that points to a SageMaker JumpStart
public hub model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

