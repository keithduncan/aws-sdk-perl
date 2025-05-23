
package Paws::M2::CreateApplication;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Definition => (is => 'ro', isa => 'Paws::M2::Definition', traits => ['NameInRequest'], request_name => 'definition', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'Paws::M2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateApplication - Arguments for method CreateApplication on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $CreateApplicationResponse = $m2->CreateApplication(
      Definition => {
        Content    => 'MyStringFree65000',    # min: 1, max: 65000; OPTIONAL
        S3Location => 'MyString2000',         # OPTIONAL
      },
      EngineType  => 'microfocus',
      Name        => 'MyEntityName',
      ClientToken => 'MyClientToken',          # OPTIONAL
      Description => 'MyEntityDescription',    # OPTIONAL
      KmsKeyId    => 'MyString',               # OPTIONAL
      RoleArn     => 'MyArn',                  # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ApplicationArn     = $CreateApplicationResponse->ApplicationArn;
    my $ApplicationId      = $CreateApplicationResponse->ApplicationId;
    my $ApplicationVersion = $CreateApplicationResponse->ApplicationVersion;

    # Returns a L<Paws::M2::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/CreateApplication>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A client token is a unique, case-sensitive string of up to 128 ASCII
characters with ASCII values of 33-126 inclusive. It's generated by the
client to ensure idempotent operations, allowing for safe retries
without unintended side effects.



=head2 B<REQUIRED> Definition => L<Paws::M2::Definition>

The application definition for this application. You can specify either
inline JSON or an S3 bucket location.



=head2 Description => Str

The description of the application.



=head2 B<REQUIRED> EngineType => Str

The type of the target platform for this application.

Valid values are: C<"microfocus">, C<"bluage">

=head2 KmsKeyId => Str

The identifier of a customer managed key.



=head2 B<REQUIRED> Name => Str

The unique identifier of the application.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) that identifies a role that the
application uses to access Amazon Web Services resources that are not
part of the application or are in a different Amazon Web Services
account.



=head2 Tags => L<Paws::M2::TagMap>

A list of tags to apply to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

