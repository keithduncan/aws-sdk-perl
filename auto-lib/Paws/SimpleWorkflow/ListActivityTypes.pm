
package Paws::SimpleWorkflow::ListActivityTypes;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has MaximumPageSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumPageSize' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has RegistrationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registrationStatus' , required => 1);
  has ReverseOrder => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'reverseOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActivityTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::ActivityTypeInfos');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListActivityTypes - Arguments for method ListActivityTypes on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActivityTypes on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method ListActivityTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActivityTypes.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $ActivityTypeInfos = $swf->ListActivityTypes(
      Domain             => 'MyDomainName',
      RegistrationStatus => 'REGISTERED',
      MaximumPageSize    => 1,                # OPTIONAL
      Name               => 'MyName',         # OPTIONAL
      NextPageToken      => 'MyPageToken',    # OPTIONAL
      ReverseOrder       => 1,                # OPTIONAL
    );

    # Results:
    my $NextPageToken = $ActivityTypeInfos->NextPageToken;
    my $TypeInfos     = $ActivityTypeInfos->TypeInfos;

    # Returns a L<Paws::SimpleWorkflow::ActivityTypeInfos> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/ListActivityTypes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain in which the activity types have been
registered.



=head2 MaximumPageSize => Int

The maximum number of results that are returned per call. Use
C<nextPageToken> to obtain further pages of results.



=head2 Name => Str

If specified, only lists the activity types that have this name.



=head2 NextPageToken => Str

If C<NextPageToken> is returned there are more results available. The
value of C<NextPageToken> is a unique pagination token for each page.
Make the call again using the returned token to retrieve the next page.
Keep all other arguments unchanged. Each pagination token expires after
24 hours. Using an expired pagination token will return a C<400> error:
"C<Specified token has exceeded its maximum lifetime>".

The configured C<maximumPageSize> determines how many results can be
returned in a single call.



=head2 B<REQUIRED> RegistrationStatus => Str

Specifies the registration status of the activity types to list.

Valid values are: C<"REGISTERED">, C<"DEPRECATED">

=head2 ReverseOrder => Bool

When set to C<true>, returns the results in reverse order. By default,
the results are returned in ascending alphabetical order by C<name> of
the activity types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActivityTypes in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

