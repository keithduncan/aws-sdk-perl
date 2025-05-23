
package Paws::FSX::DescribeFileCaches;
  use Moose;
  has FileCacheIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFileCaches');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeFileCachesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeFileCaches - Arguments for method DescribeFileCaches on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFileCaches on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeFileCaches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFileCaches.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeFileCachesResponse = $fsx->DescribeFileCaches(
      FileCacheIds => [
        'MyFileCacheId', ...    # min: 11, max: 21
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $FileCaches = $DescribeFileCachesResponse->FileCaches;
    my $NextToken  = $DescribeFileCachesResponse->NextToken;

    # Returns a L<Paws::FSX::DescribeFileCachesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeFileCaches>

=head1 ATTRIBUTES


=head2 FileCacheIds => ArrayRef[Str|Undef]

IDs of the caches whose descriptions you want to retrieve (String).



=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFileCaches in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

