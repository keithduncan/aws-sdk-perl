
package Paws::Datasync::DescribeLocationFsxOpenZfs;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationFsxOpenZfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationFsxOpenZfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxOpenZfs - Arguments for method DescribeLocationFsxOpenZfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationFsxOpenZfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationFsxOpenZfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationFsxOpenZfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationFsxOpenZfsResponse =
      $datasync->DescribeLocationFsxOpenZfs(
      LocationArn => 'MyLocationArn',

      );

    # Results:
    my $CreationTime = $DescribeLocationFsxOpenZfsResponse->CreationTime;
    my $LocationArn  = $DescribeLocationFsxOpenZfsResponse->LocationArn;
    my $LocationUri  = $DescribeLocationFsxOpenZfsResponse->LocationUri;
    my $Protocol     = $DescribeLocationFsxOpenZfsResponse->Protocol;
    my $SecurityGroupArns =
      $DescribeLocationFsxOpenZfsResponse->SecurityGroupArns;

    # Returns a L<Paws::Datasync::DescribeLocationFsxOpenZfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationFsxOpenZfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the FSx for OpenZFS location to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationFsxOpenZfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

