
package Paws::DS::DescribeClientAuthenticationSettings;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClientAuthenticationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeClientAuthenticationSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeClientAuthenticationSettings - Arguments for method DescribeClientAuthenticationSettings on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClientAuthenticationSettings on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeClientAuthenticationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClientAuthenticationSettings.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeClientAuthenticationSettingsResult =
      $ds->DescribeClientAuthenticationSettings(
      DirectoryId => 'MyDirectoryId',
      Limit       => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      Type        => 'SmartCard',       # OPTIONAL
      );

    # Results:
    my $ClientAuthenticationSettingsInfo =
      $DescribeClientAuthenticationSettingsResult
      ->ClientAuthenticationSettingsInfo;
    my $NextToken = $DescribeClientAuthenticationSettingsResult->NextToken;

    # Returns a L<Paws::DS::DescribeClientAuthenticationSettingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeClientAuthenticationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory for which to retrieve information.



=head2 Limit => Int

The maximum number of items to return. If this value is zero, the
maximum number of items is specified by the limitations of the
operation.



=head2 NextToken => Str

The I<DescribeClientAuthenticationSettingsResult.NextToken> value from
a previous call to DescribeClientAuthenticationSettings. Pass null if
this is the first call.



=head2 Type => Str

The type of client authentication for which to retrieve information. If
no type is specified, a list of all client authentication types that
are supported for the specified directory is retrieved.

Valid values are: C<"SmartCard">, C<"SmartCardOrPassword">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClientAuthenticationSettings in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

