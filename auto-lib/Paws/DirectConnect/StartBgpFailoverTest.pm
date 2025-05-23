
package Paws::DirectConnect::StartBgpFailoverTest;
  use Moose;
  has BgpPeers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'bgpPeers' );
  has TestDurationInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testDurationInMinutes' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBgpFailoverTest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::StartBgpFailoverTestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::StartBgpFailoverTest - Arguments for method StartBgpFailoverTest on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBgpFailoverTest on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method StartBgpFailoverTest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBgpFailoverTest.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $StartBgpFailoverTestResponse = $directconnect->StartBgpFailoverTest(
      VirtualInterfaceId    => 'MyVirtualInterfaceId',
      BgpPeers              => [ 'MyBGPPeerId', ... ],    # OPTIONAL
      TestDurationInMinutes => 1,                         # OPTIONAL
    );

    # Results:
    my $VirtualInterfaceTest =
      $StartBgpFailoverTestResponse->VirtualInterfaceTest;

    # Returns a L<Paws::DirectConnect::StartBgpFailoverTestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/StartBgpFailoverTest>

=head1 ATTRIBUTES


=head2 BgpPeers => ArrayRef[Str|Undef]

The BGP peers to place in the DOWN state.



=head2 TestDurationInMinutes => Int

The time in minutes that the virtual interface failover test will last.

Maximum value: 4,320 minutes (72 hours).

Default: 180 minutes (3 hours).



=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual interface you want to test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBgpFailoverTest in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

