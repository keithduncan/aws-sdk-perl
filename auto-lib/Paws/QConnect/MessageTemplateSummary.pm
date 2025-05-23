# Generated by default/object.tt
package Paws::QConnect::MessageTemplateSummary;
  use Moose;
  has ActiveVersionNumber => (is => 'ro', isa => 'Int', request_name => 'activeVersionNumber', traits => ['NameInRequest']);
  has ChannelSubtype => (is => 'ro', isa => 'Str', request_name => 'channelSubtype', traits => ['NameInRequest'], required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has KnowledgeBaseArn => (is => 'ro', isa => 'Str', request_name => 'knowledgeBaseArn', traits => ['NameInRequest'], required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', request_name => 'knowledgeBaseId', traits => ['NameInRequest'], required => 1);
  has LastModifiedBy => (is => 'ro', isa => 'Str', request_name => 'lastModifiedBy', traits => ['NameInRequest'], required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', request_name => 'lastModifiedTime', traits => ['NameInRequest'], required => 1);
  has MessageTemplateArn => (is => 'ro', isa => 'Str', request_name => 'messageTemplateArn', traits => ['NameInRequest'], required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', request_name => 'messageTemplateId', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::MessageTemplateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::MessageTemplateSummary object:

  $service_obj->Method(Att1 => { ActiveVersionNumber => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::MessageTemplateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveVersionNumber

=head1 DESCRIPTION

The summary of the message template.

=head1 ATTRIBUTES


=head2 ActiveVersionNumber => Int

The version number of the message template version that is activated.


=head2 B<REQUIRED> ChannelSubtype => Str

The channel subtype this message template applies to.


=head2 B<REQUIRED> CreatedTime => Str

The timestamp when the message template was created.


=head2 Description => Str

The description of the message template.


=head2 B<REQUIRED> KnowledgeBaseArn => Str

The Amazon Resource Name (ARN) of the knowledge base.


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base.


=head2 B<REQUIRED> LastModifiedBy => Str

The Amazon Resource Name (ARN) of the user who last updated the message
template data.


=head2 B<REQUIRED> LastModifiedTime => Str

The timestamp when the message template data was last modified.


=head2 B<REQUIRED> MessageTemplateArn => Str

The Amazon Resource Name (ARN) of the message template.


=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template.


=head2 B<REQUIRED> Name => Str

The name of the message template.


=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

