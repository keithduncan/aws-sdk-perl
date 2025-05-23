
package Paws::ApplicationSignals::DeleteServiceLevelObjective;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServiceLevelObjective');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slo/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::DeleteServiceLevelObjectiveOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::DeleteServiceLevelObjective - Arguments for method DeleteServiceLevelObjective on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceLevelObjective on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method DeleteServiceLevelObjective.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceLevelObjective.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $DeleteServiceLevelObjectiveOutput =
      $application -signals->DeleteServiceLevelObjective(
      Id => 'MyServiceLevelObjectiveId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/DeleteServiceLevelObjective>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ARN or name of the service level objective to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceLevelObjective in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

