
package Paws::IoTData::UpdateThingShadow;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has ShadowName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThingShadow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/shadow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTData::UpdateThingShadowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::UpdateThingShadow - Arguments for method UpdateThingShadow on L<Paws::IoTData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThingShadow on the
L<AWS IoT Data Plane|Paws::IoTData> service. Use the attributes of this class
as arguments to method UpdateThingShadow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThingShadow.

=head1 SYNOPSIS

    my $data-ats.iot = Paws->service('IoTData');
    my $UpdateThingShadowResponse = $data -ats . iot->UpdateThingShadow(
      Payload    => 'BlobJsonDocument',
      ThingName  => 'MyThingName',
      ShadowName => 'MyShadowName',       # OPTIONAL
    );

    # Results:
    my $Payload = $UpdateThingShadowResponse->Payload;

    # Returns a L<Paws::IoTData::UpdateThingShadowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data-ats.iot/UpdateThingShadow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => Str

The state information, in JSON format.



=head2 ShadowName => Str

The name of the shadow.



=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThingShadow in L<Paws::IoTData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

