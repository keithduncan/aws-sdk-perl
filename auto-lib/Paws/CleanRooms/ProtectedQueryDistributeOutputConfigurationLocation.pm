# Generated by default/object.tt
package Paws::CleanRooms::ProtectedQueryDistributeOutputConfigurationLocation;
  use Moose;
  has Member => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryMemberOutputConfiguration', request_name => 'member', traits => ['NameInRequest']);
  has S3 => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryS3OutputConfiguration', request_name => 's3', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ProtectedQueryDistributeOutputConfigurationLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::ProtectedQueryDistributeOutputConfigurationLocation object:

  $service_obj->Method(Att1 => { Member => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::ProtectedQueryDistributeOutputConfigurationLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Member

=head1 DESCRIPTION

Specifies where you'll distribute the results of your protected query.
You must configure either an S3 destination or a collaboration member
destination.

=head1 ATTRIBUTES


=head2 Member => L<Paws::CleanRooms::ProtectedQueryMemberOutputConfiguration>




=head2 S3 => L<Paws::CleanRooms::ProtectedQueryS3OutputConfiguration>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

