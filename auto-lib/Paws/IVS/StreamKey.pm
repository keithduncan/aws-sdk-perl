# Generated by default/object.tt
package Paws::IVS::StreamKey;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ChannelArn => (is => 'ro', isa => 'Str', request_name => 'channelArn', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::StreamKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IVS::StreamKey object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IVS::StreamKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Object specifying a stream key.

=head1 ATTRIBUTES


=head2 Arn => Str

Stream-key ARN.


=head2 ChannelArn => Str

Channel ARN for the stream.


=head2 Tags => L<Paws::IVS::Tags>

Tags attached to the resource. Array of 1-50 maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.


=head2 Value => Str

Stream-key value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

