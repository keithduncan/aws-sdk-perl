
package Paws::RedShift::DescribeHsmConfigurations;
  use Moose;
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::HsmConfigurationMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeHsmConfigurations - Arguments for method DescribeHsmConfigurations on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHsmConfigurations on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeHsmConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHsmConfigurations.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $HsmConfigurationMessage = $redshift->DescribeHsmConfigurations(
      HsmConfigurationIdentifier => 'MyString',    # OPTIONAL
      Marker                     => 'MyString',    # OPTIONAL
      MaxRecords                 => 1,             # OPTIONAL
      TagKeys                    => [
        'MyString', ...                            # max: 2147483647
      ],    # OPTIONAL
      TagValues => [
        'MyString', ...    # max: 2147483647
      ],    # OPTIONAL
    );

    # Results:
    my $HsmConfigurations = $HsmConfigurationMessage->HsmConfigurations;
    my $Marker            = $HsmConfigurationMessage->Marker;

    # Returns a L<Paws::RedShift::HsmConfigurationMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeHsmConfigurations>

=head1 ATTRIBUTES


=head2 HsmConfigurationIdentifier => Str

The identifier of a specific Amazon Redshift HSM configuration to be
described. If no identifier is specified, information is returned for
all HSM configurations owned by your Amazon Web Services account.



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeHsmConfigurations
request exceed the value specified in C<MaxRecords>, Amazon Web
Services returns a value in the C<Marker> field of the response. You
can retrieve the next set of response records by providing the returned
marker value in the C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<100>

Constraints: minimum 20, maximum 100.



=head2 TagKeys => ArrayRef[Str|Undef]

A tag key or keys for which you want to return all matching HSM
configurations that are associated with the specified key or keys. For
example, suppose that you have HSM configurations that are tagged with
keys called C<owner> and C<environment>. If you specify both of these
tag keys in the request, Amazon Redshift returns a response with the
HSM configurations that have either or both of these tag keys
associated with them.



=head2 TagValues => ArrayRef[Str|Undef]

A tag value or values for which you want to return all matching HSM
configurations that are associated with the specified tag value or
values. For example, suppose that you have HSM configurations that are
tagged with values called C<admin> and C<test>. If you specify both of
these tag values in the request, Amazon Redshift returns a response
with the HSM configurations that have either or both of these tag
values associated with them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHsmConfigurations in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

