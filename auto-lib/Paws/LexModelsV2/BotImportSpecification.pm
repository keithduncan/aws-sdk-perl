# Generated by default/object.tt
package Paws::LexModelsV2::BotImportSpecification;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', request_name => 'botName', traits => ['NameInRequest'], required => 1);
  has BotTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', request_name => 'botTags', traits => ['NameInRequest']);
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', request_name => 'dataPrivacy', traits => ['NameInRequest'], required => 1);
  has ErrorLogSettings => (is => 'ro', isa => 'Paws::LexModelsV2::ErrorLogSettings', request_name => 'errorLogSettings', traits => ['NameInRequest']);
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', request_name => 'idleSessionTTLInSeconds', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has TestBotAliasTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', request_name => 'testBotAliasTags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BotImportSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::BotImportSpecification object:

  $service_obj->Method(Att1 => { BotName => $value, ..., TestBotAliasTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::BotImportSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->BotName

=head1 DESCRIPTION

Provides the bot parameters required for importing a bot.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name that Amazon Lex should use for the bot.


=head2 BotTags => L<Paws::LexModelsV2::TagMap>

A list of tags to add to the bot. You can only add tags when you import
a bot. You can't use the C<UpdateBot> operation to update tags. To
update tags, use the C<TagResource> operation.


=head2 B<REQUIRED> DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>




=head2 ErrorLogSettings => L<Paws::LexModelsV2::ErrorLogSettings>

Allows you to configure destinations where error logs will be published
during the bot import process.


=head2 IdleSessionTTLInSeconds => Int

The time, in seconds, that Amazon Lex should keep information about a
user's conversation with the bot.

A user interaction remains active for the amount of time specified. If
no conversation occurs during this time, the session expires and Amazon
Lex deletes any data provided before the timeout.

You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used to build and run
the bot.


=head2 TestBotAliasTags => L<Paws::LexModelsV2::TagMap>

A list of tags to add to the test alias for a bot. You can only add
tags when you import a bot. You can't use the C<UpdateAlias> operation
to update tags. To update tags on the test alias, use the
C<TagResource> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

