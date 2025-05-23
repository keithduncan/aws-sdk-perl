
package Paws::IoTWireless::GetWirelessDeviceImportTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWirelessDeviceImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless_device_import_task/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetWirelessDeviceImportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessDeviceImportTask - Arguments for method GetWirelessDeviceImportTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWirelessDeviceImportTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetWirelessDeviceImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWirelessDeviceImportTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetWirelessDeviceImportTaskResponse =
      $api . iotwireless->GetWirelessDeviceImportTask(
      Id => 'MyImportTaskId',

      );

    # Results:
    my $Arn             = $GetWirelessDeviceImportTaskResponse->Arn;
    my $CreationTime    = $GetWirelessDeviceImportTaskResponse->CreationTime;
    my $DestinationName = $GetWirelessDeviceImportTaskResponse->DestinationName;
    my $FailedImportedDeviceCount =
      $GetWirelessDeviceImportTaskResponse->FailedImportedDeviceCount;
    my $Id = $GetWirelessDeviceImportTaskResponse->Id;
    my $InitializedImportedDeviceCount =
      $GetWirelessDeviceImportTaskResponse->InitializedImportedDeviceCount;
    my $OnboardedImportedDeviceCount =
      $GetWirelessDeviceImportTaskResponse->OnboardedImportedDeviceCount;
    my $PendingImportedDeviceCount =
      $GetWirelessDeviceImportTaskResponse->PendingImportedDeviceCount;
    my $Sidewalk     = $GetWirelessDeviceImportTaskResponse->Sidewalk;
    my $Status       = $GetWirelessDeviceImportTaskResponse->Status;
    my $StatusReason = $GetWirelessDeviceImportTaskResponse->StatusReason;

   # Returns a L<Paws::IoTWireless::GetWirelessDeviceImportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetWirelessDeviceImportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the import task for which information is requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWirelessDeviceImportTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

