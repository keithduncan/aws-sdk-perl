
package Paws::SimSpaceWeaver::DeleteApp;
  use Moose;
  has App => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app', required => 1);
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has Simulation => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'simulation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteapp');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimSpaceWeaver::DeleteAppOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::DeleteApp - Arguments for method DeleteApp on L<Paws::SimSpaceWeaver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApp on the
L<AWS SimSpace Weaver|Paws::SimSpaceWeaver> service. Use the attributes of this class
as arguments to method DeleteApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApp.

=head1 SYNOPSIS

    my $simspaceweaver = Paws->service('SimSpaceWeaver');
    my $DeleteAppOutput = $simspaceweaver->DeleteApp(
      App        => 'MySimSpaceWeaverResourceName',
      Domain     => 'MySimSpaceWeaverResourceName',
      Simulation => 'MySimSpaceWeaverResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/simspaceweaver/DeleteApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => Str

The name of the app.



=head2 B<REQUIRED> Domain => Str

The name of the domain of the app.



=head2 B<REQUIRED> Simulation => Str

The name of the simulation of the app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApp in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

