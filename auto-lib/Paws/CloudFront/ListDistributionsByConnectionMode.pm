
package Paws::CloudFront::ListDistributionsByConnectionMode;
  use Moose;
  has ConnectionMode => (is => 'ro', isa => 'Str', uri_name => 'ConnectionMode', traits => ['ParamInURI'], required => 1);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Int', query_name => 'MaxItems', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributionsByConnectionMode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distributionsByConnectionMode/{ConnectionMode}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsByConnectionModeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByConnectionMode - Arguments for method ListDistributionsByConnectionMode on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDistributionsByConnectionMode2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListDistributionsByConnectionMode2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDistributionsByConnectionMode2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListDistributionsByConnectionModeResult =
      $cloudfront->ListDistributionsByConnectionMode(
      ConnectionMode => 'direct',
      Marker         => 'Mystring',    # OPTIONAL
      MaxItems       => 1,             # OPTIONAL
      );

    # Results:
    my $DistributionList =
      $ListDistributionsByConnectionModeResult->DistributionList;

# Returns a L<Paws::CloudFront::ListDistributionsByConnectionModeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListDistributionsByConnectionMode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionMode => Str

The connection mode to filter distributions by.

Valid values are: C<"direct">, C<"tenant-only">

=head2 Marker => Str

The marker for the next set of distributions to retrieve.



=head2 MaxItems => Int

The maximum number of distributions to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDistributionsByConnectionMode2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

