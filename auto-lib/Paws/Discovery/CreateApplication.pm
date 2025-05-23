
package Paws::Discovery::CreateApplication;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Wave => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'wave' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::CreateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::CreateApplication - Arguments for method CreateApplication on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $CreateApplicationResponse = $discovery->CreateApplication(
      Name        => 'MyApplicationName',
      Description => 'MyApplicationDescription',    # OPTIONAL
      Wave        => 'MyApplicationWave',           # OPTIONAL
    );

    # Results:
    my $ConfigurationId = $CreateApplicationResponse->ConfigurationId;

    # Returns a L<Paws::Discovery::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/CreateApplication>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the application to be created.



=head2 B<REQUIRED> Name => Str

The name of the application to be created.



=head2 Wave => Str

The name of the migration wave of the application to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

