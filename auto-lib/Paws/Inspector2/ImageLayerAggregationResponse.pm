# Generated by default/object.tt
package Paws::Inspector2::ImageLayerAggregationResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest'], required => 1);
  has LayerHash => (is => 'ro', isa => 'Str', request_name => 'layerHash', traits => ['NameInRequest'], required => 1);
  has Repository => (is => 'ro', isa => 'Str', request_name => 'repository', traits => ['NameInRequest'], required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest'], required => 1);
  has SeverityCounts => (is => 'ro', isa => 'Paws::Inspector2::SeverityCounts', request_name => 'severityCounts', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ImageLayerAggregationResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector2::ImageLayerAggregationResponse object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., SeverityCounts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector2::ImageLayerAggregationResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

A response that contains the results of a finding aggregation by image
layer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The ID of the Amazon Web Services account that owns the container image
hosting the layer image.


=head2 B<REQUIRED> LayerHash => Str

The layer hash.


=head2 B<REQUIRED> Repository => Str

The repository the layer resides in.


=head2 B<REQUIRED> ResourceId => Str

The resource ID of the container image layer.


=head2 SeverityCounts => L<Paws::Inspector2::SeverityCounts>

An object that represents the count of matched findings per severity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

