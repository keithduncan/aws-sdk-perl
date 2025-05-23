
package Paws::ServiceDiscovery::CreatePublicDnsNamespace;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Properties => (is => 'ro', isa => 'Paws::ServiceDiscovery::PublicDnsNamespaceProperties');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicDnsNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreatePublicDnsNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreatePublicDnsNamespace - Arguments for method CreatePublicDnsNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePublicDnsNamespace on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method CreatePublicDnsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePublicDnsNamespace.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    # CreatePublicDnsNamespace example
    # This example creates a public namespace based on DNS.
    my $CreatePublicDnsNamespaceResponse =
      $servicediscovery->CreatePublicDnsNamespace(
      'CreatorRequestId' => 'example-creator-request-id-0003',
      'Description'      => 'Example.com AWS Cloud Map Public DNS Namespace',
      'Name'             => 'example-public-dns.com'
      );

    # Results:
    my $OperationId = $CreatePublicDnsNamespaceResponse->OperationId;

 # Returns a L<Paws::ServiceDiscovery::CreatePublicDnsNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/CreatePublicDnsNamespace>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

A unique string that identifies the request and that allows failed
C<CreatePublicDnsNamespace> requests to be retried without the risk of
running the operation twice. C<CreatorRequestId> can be any unique
string (for example, a date/timestamp).



=head2 Description => Str

A description for the namespace.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to this namespace.

Do not include sensitive information in the name. The name is publicly
available using DNS queries.



=head2 Properties => L<Paws::ServiceDiscovery::PublicDnsNamespaceProperties>

Properties for the public DNS namespace.



=head2 Tags => ArrayRef[L<Paws::ServiceDiscovery::Tag>]

The tags to add to the namespace. Each tag consists of a key and an
optional value that you define. Tags keys can be up to 128 characters
in length, and tag values can be up to 256 characters in length.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePublicDnsNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

