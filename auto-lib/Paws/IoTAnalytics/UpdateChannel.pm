
package Paws::IoTAnalytics::UpdateChannel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);
  has ChannelStorage => (is => 'ro', isa => 'Paws::IoTAnalytics::ChannelStorage', traits => ['NameInRequest'], request_name => 'channelStorage');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::UpdateChannel - Arguments for method UpdateChannel on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->UpdateChannel(
      ChannelName    => 'MyChannelName',
      ChannelStorage => {
        CustomerManagedS3 => {
          Bucket    => 'MyBucketName',     # min: 3, max: 255
          RoleArn   => 'MyRoleArn',        # min: 20, max: 2048
          KeyPrefix => 'MyS3KeyPrefix',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        ServiceManagedS3 => {

        },    # OPTIONAL
      },    # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,    # min: 1; OPTIONAL
        Unlimited    => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/UpdateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The name of the channel to be updated.



=head2 ChannelStorage => L<Paws::IoTAnalytics::ChannelStorage>

Where channel data is stored. You can choose one of C<serviceManagedS3>
or C<customerManagedS3> storage. If not specified, the default is
C<serviceManagedS3>. You can't change this storage option after the
channel is created.



=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

How long, in days, message data is kept for the channel. The retention
period can't be updated if the channel's Amazon S3 storage is
customer-managed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

