
package Paws::Config::PutRetentionConfiguration;
  use Moose;
  has RetentionPeriodInDays => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRetentionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutRetentionConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRetentionConfiguration - Arguments for method PutRetentionConfiguration on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRetentionConfiguration on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutRetentionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRetentionConfiguration.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutRetentionConfigurationResponse = $config->PutRetentionConfiguration(
      RetentionPeriodInDays => 1,

    );

    # Results:
    my $RetentionConfiguration =
      $PutRetentionConfigurationResponse->RetentionConfiguration;

    # Returns a L<Paws::Config::PutRetentionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutRetentionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RetentionPeriodInDays => Int

Number of days Config stores your historical information.

Currently, only applicable to the configuration item history.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRetentionConfiguration in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

