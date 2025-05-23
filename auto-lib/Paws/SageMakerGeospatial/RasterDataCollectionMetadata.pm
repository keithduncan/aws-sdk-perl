# Generated by default/object.tt
package Paws::SageMakerGeospatial::RasterDataCollectionMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DescriptionPageUrl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SupportedFilters => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerGeospatial::Filter]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::RasterDataCollectionMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerGeospatial::RasterDataCollectionMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerGeospatial::RasterDataCollectionMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Response object containing details for a specific RasterDataCollection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the raster data collection.


=head2 B<REQUIRED> Description => Str

A description of the raster data collection.


=head2 DescriptionPageUrl => Str

The description URL of the raster data collection.


=head2 B<REQUIRED> Name => Str

The name of the raster data collection.


=head2 B<REQUIRED> SupportedFilters => ArrayRef[L<Paws::SageMakerGeospatial::Filter>]

The list of filters supported by the raster data collection.


=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.


=head2 B<REQUIRED> Type => Str

The type of raster data collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

