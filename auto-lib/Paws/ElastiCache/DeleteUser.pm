
package Paws::ElastiCache::DeleteUser;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::User');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteUser - Arguments for method DeleteUser on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUser on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUser.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $User = $elasticache->DeleteUser(
      UserId => 'MyUserId',

    );

    # Results:
    my $ARN                  = $User->ARN;
    my $AccessString         = $User->AccessString;
    my $Authentication       = $User->Authentication;
    my $Engine               = $User->Engine;
    my $MinimumEngineVersion = $User->MinimumEngineVersion;
    my $Status               = $User->Status;
    my $UserGroupIds         = $User->UserGroupIds;
    my $UserId               = $User->UserId;
    my $UserName             = $User->UserName;

    # Returns a L<Paws::ElastiCache::User> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserId => Str

The ID of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUser in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

