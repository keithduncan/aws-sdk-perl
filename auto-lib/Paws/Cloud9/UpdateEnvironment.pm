
package Paws::Cloud9::UpdateEnvironment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId' , required => 1);
  has ManagedCredentialsAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedCredentialsAction' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::UpdateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    # UpdateEnvironment
    my $UpdateEnvironmentResult = $cloud9->UpdateEnvironment(
      'Description'   => 'This is my changed demonstration environment.',
      'EnvironmentId' => '8d9967e2f0624182b74e7690ad69ebEX',
      'Name'          => 'my-changed-demo-environment'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 Description => Str

Any new or replacement description for the environment.



=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment to change settings.



=head2 ManagedCredentialsAction => Str

Allows the environment owner to turn on or turn off the Amazon Web
Services managed temporary credentials for an Cloud9 environment by
using one of the following values:

=over

=item *

C<ENABLE>

=item *

C<DISABLE>

=back

Only the environment owner can change the status of managed temporary
credentials. An C<AccessDeniedException> is thrown if an attempt to
turn on or turn off managed temporary credentials is made by an account
that's not the environment owner.

Valid values are: C<"ENABLE">, C<"DISABLE">

=head2 Name => Str

A replacement name for the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

