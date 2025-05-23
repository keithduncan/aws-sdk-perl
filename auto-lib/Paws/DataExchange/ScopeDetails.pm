# Generated by default/object.tt
package Paws::DataExchange::ScopeDetails;
  use Moose;
  has LakeFormationTagPolicies => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::LakeFormationTagPolicyDetails]');
  has RedshiftDataShares => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::RedshiftDataShareDetails]');
  has S3DataAccesses => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::S3DataAccessDetails]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ScopeDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ScopeDetails object:

  $service_obj->Method(Att1 => { LakeFormationTagPolicies => $value, ..., S3DataAccesses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ScopeDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->LakeFormationTagPolicies

=head1 DESCRIPTION

Details about the scope of the notifications such as the affected
resources.

=head1 ATTRIBUTES


=head2 LakeFormationTagPolicies => ArrayRef[L<Paws::DataExchange::LakeFormationTagPolicyDetails>]

Underlying LF resources that will be affected by this notification.


=head2 RedshiftDataShares => ArrayRef[L<Paws::DataExchange::RedshiftDataShareDetails>]

Underlying Redshift resources that will be affected by this
notification.


=head2 S3DataAccesses => ArrayRef[L<Paws::DataExchange::S3DataAccessDetails>]

Underlying S3 resources that will be affected by this notification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

