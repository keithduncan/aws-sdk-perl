
package Paws::QApps::ListQApps;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQApps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::ListQAppsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListQApps - Arguments for method ListQApps on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQApps on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method ListQApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQApps.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $ListQAppsOutput = $data . qapps->ListQApps(
      InstanceId => 'MyInstanceId',
      Limit      => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Apps      = $ListQAppsOutput->Apps;
    my $NextToken = $ListQAppsOutput->NextToken;

    # Returns a L<Paws::QApps::ListQAppsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/ListQApps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 Limit => Int

The maximum number of Q Apps to return in the response.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQApps in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

