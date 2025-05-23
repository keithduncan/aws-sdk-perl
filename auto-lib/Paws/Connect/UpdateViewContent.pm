
package Paws::Connect::UpdateViewContent;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::Connect::ViewInputContent', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has ViewId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ViewId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateViewContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/views/{InstanceId}/{ViewId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateViewContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateViewContent - Arguments for method UpdateViewContent on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateViewContent on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateViewContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateViewContent.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateViewContentResponse = $connect->UpdateViewContent(
      Content => {
        Actions => [
          'MyViewAction', ...    # min: 1, max: 255
        ],    # OPTIONAL
        Template => 'MyViewTemplate',    # OPTIONAL
      },
      InstanceId => 'MyViewsInstanceId',
      Status     => 'PUBLISHED',
      ViewId     => 'MyViewId',

    );

    # Results:
    my $View = $UpdateViewContentResponse->View;

    # Returns a L<Paws::Connect::UpdateViewContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateViewContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => L<Paws::Connect::ViewInputContent>

View content containing all content necessary to render a view except
for runtime input data and the runtime input schema, which is
auto-generated by this operation.

The total uncompressed content has a maximum file size of 400kB.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> Status => Str

Indicates the view status as either C<SAVED> or C<PUBLISHED>. The
C<PUBLISHED> status will initiate validation on the content.

Valid values are: C<"PUBLISHED">, C<"SAVED">

=head2 B<REQUIRED> ViewId => Str

The identifier of the view. Both C<ViewArn> and C<ViewId> can be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateViewContent in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

