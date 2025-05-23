# Generated by default/object.tt
package Paws::EKS::InsightResourceDetail;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has InsightStatus => (is => 'ro', isa => 'Paws::EKS::InsightStatus', request_name => 'insightStatus', traits => ['NameInRequest']);
  has KubernetesResourceUri => (is => 'ro', isa => 'Str', request_name => 'kubernetesResourceUri', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::InsightResourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::InsightResourceDetail object:

  $service_obj->Method(Att1 => { Arn => $value, ..., KubernetesResourceUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::InsightResourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns information about the resource being evaluated.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) if applicable.


=head2 InsightStatus => L<Paws::EKS::InsightStatus>

An object containing more detail on the status of the insight resource.


=head2 KubernetesResourceUri => Str

The Kubernetes resource URI if applicable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

