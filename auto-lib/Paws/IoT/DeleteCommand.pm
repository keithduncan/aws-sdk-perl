
package Paws::IoT::DeleteCommand;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'commandId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCommand');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/commands/{commandId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteCommandResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCommand - Arguments for method DeleteCommand on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCommand on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCommand.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteCommandResponse = $iot->DeleteCommand(
      CommandId => 'MyCommandId',

    );

    # Results:
    my $StatusCode = $DeleteCommandResponse->StatusCode;

    # Returns a L<Paws::IoT::DeleteCommandResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteCommand>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandId => Str

The unique identifier of the command to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCommand in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

