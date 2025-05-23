# Generated by default/object.tt
package Paws::TimestreamQuery::NotificationConfiguration;
  use Moose;
  has SnsConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::SnsConfiguration', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::NotificationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::NotificationConfiguration object:

  $service_obj->Method(Att1 => { SnsConfiguration => $value, ..., SnsConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::NotificationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->SnsConfiguration

=head1 DESCRIPTION

Notification configuration for a scheduled query. A notification is
sent by Timestream when a scheduled query is created, its state is
updated or when it is deleted.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnsConfiguration => L<Paws::TimestreamQuery::SnsConfiguration>

Details about the Amazon Simple Notification Service (SNS)
configuration. This field is visible only when SNS Topic is provided
when updating the account settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

