# Generated by default/object.tt
package Paws::Datasync::StorageSystemListEntry;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has StorageSystemArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::StorageSystemListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::StorageSystemListEntry object:

  $service_obj->Method(Att1 => { Name => $value, ..., StorageSystemArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::StorageSystemListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information that identifies an on-premises storage system that you're
using with DataSync Discovery.

=head1 ATTRIBUTES


=head2 Name => Str

The name of an on-premises storage system that you added to DataSync
Discovery.


=head2 StorageSystemArn => Str

The Amazon Resource Names (ARN) of an on-premises storage system that
you added to DataSync Discovery.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

