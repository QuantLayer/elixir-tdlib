defmodule TDLib.Object do
  @moduledoc """
    @TODO
  """
defmodule InlineQueryResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_query_result.html).
  """

  defstruct "@type": "InlineQueryResult"
end
defmodule MessageChatSetTtl do
  @moduledoc  """
  The TTL (Time To Live) setting messages in a secret chat has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | ttl | number | New TTL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_set_ttl.html).
  """

  defstruct "@type": "messageChatSetTtl", ttl: nil
end
defmodule TestBytes do
  @moduledoc  """
  A simple object containing a sequence of bytes; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | Bytes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_bytes.html).
  """

  defstruct "@type": "testBytes", value: nil
end
defmodule SupergroupMembersFilterRestricted do
  @moduledoc  """
  Returns restricted supergroup members; can be used only by administrators.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_restricted.html).
  """

  defstruct "@type": "supergroupMembersFilterRestricted", query: nil
end
defmodule InputMessageVideoNote do
  @moduledoc  """
  A video note message.

  | Name | Type | Description |
  |------|------| ------------|
  | video_note | InputFile | Video note to be sent. |
  | thumbnail | inputThumbnail | Video thumbnail, if available. |
  | duration | number | Duration of the video, in seconds. |
  | length | number | Video width and height; must be positive and not greater than 640. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_video_note.html).
  """

  defstruct "@type": "inputMessageVideoNote", video_note: nil, thumbnail: nil, duration: nil, length: nil
end
defmodule UpdateNewMessage do
  @moduledoc  """
  A new message was received; can also be an outgoing message sent from a different device.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | The new message. |
  | disable_notification | bool | True, if this message must not generate a notification. |
  | contains_mention | bool | True, if the message contains a mention of the current user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_message.html).
  """

  defstruct "@type": "updateNewMessage", message: nil, disable_notification: nil, contains_mention: nil
end
defmodule UpdateMessageSendAcknowledged do
  @moduledoc  """
  A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat identifier of the sent message. |
  | message_id | string | A temporary message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_acknowledged.html).
  """

  defstruct "@type": "updateMessageSendAcknowledged", chat_id: nil, message_id: nil
end
defmodule MessagePaymentSuccessful do
  @moduledoc  """
  A payment has been completed.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice_message_id | string | Identifier of the message with the corresponding invoice; can be an identifier of a deleted message. |
  | currency | string | Currency for the price of the product. |
  | total_amount | string | Total price for the product, in the minimal quantity of the currency. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_payment_successful.html).
  """

  defstruct "@type": "messagePaymentSuccessful", invoice_message_id: nil, currency: nil, total_amount: nil
end
defmodule OptionValueInteger do
  @moduledoc  """
  An integer option.

  | Name | Type | Description |
  |------|------| ------------|
  | value | number | The value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_integer.html).
  """

  defstruct "@type": "optionValueInteger", value: nil
end
defmodule UpdateBasicGroup do
  @moduledoc  """
  Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the client, as long as the library has information on the group.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group | basicGroup | New data about the group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_basic_group.html).
  """

  defstruct "@type": "updateBasicGroup", basic_group: nil
end
defmodule TMeUrl do
  @moduledoc  """
  Represents a URL linking to an internal Telegram entity.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | URL. |
  | type | TMeUrlType | Type of the URL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url.html).
  """

  defstruct "@type": "tMeUrl", url: nil, type: nil
end
defmodule ChatInviteLink do
  @moduledoc  """
  Contains a chat invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | string | Chat invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link.html).
  """

  defstruct "@type": "chatInviteLink", invite_link: nil
end
defmodule UpdateChatTitle do
  @moduledoc  """
  The title of a chat was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | title | string | The new chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_title.html).
  """

  defstruct "@type": "updateChatTitle", chat_id: nil, title: nil
end
defmodule SearchMessagesFilter do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_search_messages_filter.html).
  """

  defstruct "@type": "SearchMessagesFilter"
end
defmodule Users do
  @moduledoc  """
  Represents a list of users.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | number | Approximate total count of users found. |
  | user_ids | number[] | A list of user identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1users.html).
  """

  defstruct "@type": "users", total_count: nil, user_ids: nil
end
defmodule DeviceToken do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_device_token.html).
  """

  defstruct "@type": "DeviceToken"
end
defmodule BasicGroup do
  @moduledoc  """
  Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Group identifier. |
  | member_count | number | Number of members in the group. |
  | status | ChatMemberStatus | Status of the current user in the group. |
  | everyone_is_administrator | bool | True, if all members have been granted administrator rights in the group. |
  | is_active | bool | True, if the group is active. |
  | upgraded_to_supergroup_id | number | Identifier of the supergroup to which this group was upgraded; 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1basic_group.html).
  """

  defstruct "@type": "basicGroup", id: nil, member_count: nil, status: nil, everyone_is_administrator: nil, is_active: nil, upgraded_to_supergroup_id: nil
end
defmodule UpdateSavedAnimations do
  @moduledoc  """
  The list of saved animations was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | animation_ids | number[] | The new list of file identifiers of saved animations. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_saved_animations.html).
  """

  defstruct "@type": "updateSavedAnimations", animation_ids: nil
end
defmodule BotInfo do
  @moduledoc  """
  Provides information about a bot and its supported commands.

  | Name | Type | Description |
  |------|------| ------------|
  | description | string | Long description shown on the user info page. |
  | commands | botCommand[] | A list of commands supported by the bot. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_info.html).
  """

  defstruct "@type": "botInfo", description: nil, commands: nil
end
defmodule ChatActionTyping do
  @moduledoc  """
  The user is typing a message.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_typing.html).
  """

  defstruct "@type": "chatActionTyping"
end
defmodule UpdateDeleteMessages do
  @moduledoc  """
  Some messages were deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_ids | string[] | Identifiers of the deleted messages. |
  | is_permanent | bool | True, if the messages are permanently deleted by a user (as opposed to just becoming unaccessible). |
  | from_cache | bool | True, if the messages are deleted only from the cache and can possibly be retrieved again in the future. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_delete_messages.html).
  """

  defstruct "@type": "updateDeleteMessages", chat_id: nil, message_ids: nil, is_permanent: nil, from_cache: nil
end
defmodule SupergroupMembersFilterRecent do
  @moduledoc  """
  Returns recently active users in reverse chronological order.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_recent.html).
  """

  defstruct "@type": "supergroupMembersFilterRecent"
end
defmodule UpdateMessageViews do
  @moduledoc  """
  The view count of the message has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_id | string | Message identifier. |
  | views | number | New value of the view count. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_views.html).
  """

  defstruct "@type": "updateMessageViews", chat_id: nil, message_id: nil, views: nil
end
defmodule FileTypeProfilePhoto do
  @moduledoc  """
  The file is a profile photo.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_profile_photo.html).
  """

  defstruct "@type": "fileTypeProfilePhoto"
end
defmodule InputInlineQueryResultSticker do
  @moduledoc  """
  Represents a link to a WEBP sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | thumbnail_url | string | URL of the sticker thumbnail, if it exists. |
  | sticker_url | string | The URL of the WEBP sticker (sticker file size must not exceed 5MB). |
  | sticker_width | number | Width of the sticker. |
  | sticker_height | number | Height of the sticker. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, <a class="el" href="classtd_1_1td__api_1_1input_message_sticker.html">inputMessageSticker</a>, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_sticker.html).
  """

  defstruct "@type": "inputInlineQueryResultSticker", id: nil, thumbnail_url: nil, sticker_url: nil, sticker_width: nil, sticker_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule FileTypeSecret do
  @moduledoc  """
  The file was sent to a secret chat (the file type is not known to the server).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secret.html).
  """

  defstruct "@type": "fileTypeSecret"
end
defmodule UpdateChatDraftMessage do
  @moduledoc  """
  A draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update shouldn't be applied.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | draft_message | draftMessage | The new draft message; may be null. |
  | order | string | New value of the chat order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_draft_message.html).
  """

  defstruct "@type": "updateChatDraftMessage", chat_id: nil, draft_message: nil, order: nil
end
defmodule InlineQueryResultArticle do
  @moduledoc  """
  Represents a link to an article or web page.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | url | string | URL of the result, if it exists. |
  | hide_url | bool | True, if the URL must be not shown. |
  | title | string | Title of the result. |
  | description | string | A short description of the result. |
  | thumbnail | photoSize | Result thumbnail; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_article.html).
  """

  defstruct "@type": "inlineQueryResultArticle", id: nil, url: nil, hide_url: nil, title: nil, description: nil, thumbnail: nil
end
defmodule StickerSet do
  @moduledoc  """
  Represents a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Identifier of the sticker set. |
  | title | string | Title of the sticker set. |
  | name | string | Name of the sticker set. |
  | is_installed | bool | True, if the sticker set has been installed by the current user. |
  | is_archived | bool | True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. |
  | is_official | bool | True, if the sticker set is official. |
  | is_masks | bool | True, if the stickers in the set are masks. |
  | is_viewed | bool | True for already viewed trending sticker sets. |
  | stickers | sticker[] | List of stickers in this set. |
  | emojis | stickerEmojis[] | A list of emoji corresponding to the stickers in the same order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_set.html).
  """

  defstruct "@type": "stickerSet", id: nil, title: nil, name: nil, is_installed: nil, is_archived: nil, is_official: nil, is_masks: nil, is_viewed: nil, stickers: nil, emojis: nil
end
defmodule Session do
  @moduledoc  """
  Contains information about one session in a Telegram application used by the current user.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Session identifier. |
  | is_current | bool | True, if this session is the current session. |
  | api_id | number | Telegram API identifier, as provided by the application. |
  | application_name | string | Name of the application, as provided by the application. |
  | application_version | string | The version of the application, as provided by the application. |
  | is_official_application | bool | True, if the application is an official application or uses the api_id of an official application. |
  | device_model | string | Model of the device the application has been run or is running on, as provided by the application. |
  | platform | string | Operating system the application has been run or is running on, as provided by the application. |
  | system_version | string | Version of the operating system the application has been run or is running on, as provided by the application. |
  | log_in_date | number | Point in time (Unix timestamp) when the user has logged in. |
  | last_active_date | number | Point in time (Unix timestamp) when the session was last used. |
  | ip | string | IP address from which the session was created, in human-readable format. |
  | country | string | A two-letter country code for the country from which the session was created, based on the IP address. |
  | region | string | Region code from which the session was created, based on the IP address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session.html).
  """

  defstruct "@type": "session", id: nil, is_current: nil, api_id: nil, application_name: nil, application_version: nil, is_official_application: nil, device_model: nil, platform: nil, system_version: nil, log_in_date: nil, last_active_date: nil, ip: nil, country: nil, region: nil
end
defmodule InputMessageVideo do
  @moduledoc  """
  A video message.

  | Name | Type | Description |
  |------|------| ------------|
  | video | InputFile | Video to be sent. |
  | thumbnail | inputThumbnail | Video thumbnail, if available. |
  | added_sticker_file_ids | number[] | File identifiers of the stickers added to the video, if applicable. |
  | duration | number | Duration of the video, in seconds. |
  | width | number | Video width. |
  | height | number | Video height. |
  | caption | string | Video caption; 0-200 characters. |
  | ttl | number | Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_video.html).
  """

  defstruct "@type": "inputMessageVideo", video: nil, thumbnail: nil, added_sticker_file_ids: nil, duration: nil, width: nil, height: nil, caption: nil, ttl: nil
end
defmodule ChatEventMessagePinned do
  @moduledoc  """
  A message was pinned.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Pinned message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_pinned.html).
  """

  defstruct "@type": "chatEventMessagePinned", message: nil
end
defmodule UserProfilePhotos do
  @moduledoc  """
  Contains part of the list of user photos.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | number | Total number of user profile photos. |
  | photos | photo[] | A list of photos. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_profile_photos.html).
  """

  defstruct "@type": "userProfilePhotos", total_count: nil, photos: nil
end
defmodule SupergroupMembersFilterBots do
  @moduledoc  """
  Returns bot members of the supergroup or channel.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_bots.html).
  """

  defstruct "@type": "supergroupMembersFilterBots"
end
defmodule UpdateCall do
  @moduledoc  """
  Information about a call was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | call | call | New data about a call. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_call.html).
  """

  defstruct "@type": "updateCall", call: nil
end
defmodule UserTypeDeleted do
  @moduledoc  """
  A deleted user or deleted bot. No information on the user besides the user_id is available. It is not possible to perform any active actions on this type of user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_deleted.html).
  """

  defstruct "@type": "userTypeDeleted"
end
defmodule RichTextPlain do
  @moduledoc  """
  A plain text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_plain.html).
  """

  defstruct "@type": "richTextPlain", text: nil
end
defmodule TopChatCategoryChannels do
  @moduledoc  """
  A category containing frequently used channels.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_channels.html).
  """

  defstruct "@type": "topChatCategoryChannels"
end
defmodule NetworkStatisticsEntryFile do
  @moduledoc  """
  Contains information about the total amount of data that was used to send and receive files.

  | Name | Type | Description |
  |------|------| ------------|
  | file_type | FileType | Type of the file the data is part of. |
  | network_type | NetworkType | Type of the network the data was sent through. Call <a class="el" href="classtd_1_1td__api_1_1set_network_type.html">setNetworkType</a> to maintain the actual network type. |
  | sent_bytes | string | Total number of bytes sent. |
  | received_bytes | string | Total number of bytes received. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics_entry_file.html).
  """

  defstruct "@type": "networkStatisticsEntryFile", file_type: nil, network_type: nil, sent_bytes: nil, received_bytes: nil
end
defmodule ChatActionRecordingVideo do
  @moduledoc  """
  The user is recording a video.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_video.html).
  """

  defstruct "@type": "chatActionRecordingVideo"
end
defmodule ChatTypeSecret do
  @moduledoc  """
  A secret chat with a user.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat_id | number | Secret chat identifier. |
  | user_id | number | User identifier of the secret chat peer. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_secret.html).
  """

  defstruct "@type": "chatTypeSecret", secret_chat_id: nil, user_id: nil
end
defmodule CallStateReady do
  @moduledoc  """
  The call is ready to use.

  | Name | Type | Description |
  |------|------| ------------|
  | protocol | callProtocol | Call protocols supported by the peer. |
  | connections | callConnection[] | Available UDP reflectors. |
  | config | string | A JSON-encoded call config. |
  | encryption_key | string | Call encryption key. |
  | emojis | string[] | Encryption key emojis fingerprint. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_ready.html).
  """

  defstruct "@type": "callStateReady", protocol: nil, connections: nil, config: nil, encryption_key: nil, emojis: nil
end
defmodule AuthorizationStateWaitEncryptionKey do
  @moduledoc  """
  TDLib needs an encryption key to decrypt the local database.

  | Name | Type | Description |
  |------|------| ------------|
  | is_encrypted | bool | True, if the database is currently encrypted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_encryption_key.html).
  """

  defstruct "@type": "authorizationStateWaitEncryptionKey", is_encrypted: nil
end
defmodule TextEntityTypeEmailAddress do
  @moduledoc  """
  An email address.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_email_address.html).
  """

  defstruct "@type": "textEntityTypeEmailAddress"
end
defmodule UserStatusLastMonth do
  @moduledoc  """
  The user is offline, but was online last month.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_last_month.html).
  """

  defstruct "@type": "userStatusLastMonth"
end
defmodule UpdateInstalledStickerSets do
  @moduledoc  """
  The list of installed sticker sets was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | is_masks | bool | True, if the list of installed mask sticker sets was updated. |
  | sticker_set_ids | string[] | The new list of installed ordinary sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_installed_sticker_sets.html).
  """

  defstruct "@type": "updateInstalledStickerSets", is_masks: nil, sticker_set_ids: nil
end
defmodule InputFileId do
  @moduledoc  """
  A file defined by its unique ID.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Unique file identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_id.html).
  """

  defstruct "@type": "inputFileId", id: nil
end
defmodule NotificationSettingsScope do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_settings_scope.html).
  """

  defstruct "@type": "NotificationSettingsScope"
end
defmodule NotificationSettingsScopeAllChats do
  @moduledoc  """
  Notification settings applied to all chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_all_chats.html).
  """

  defstruct "@type": "notificationSettingsScopeAllChats"
end
defmodule ChatEventTitleChanged do
  @moduledoc  """
  The chat title was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_title | string | Previous chat title. |
  | new_title | string | New chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_title_changed.html).
  """

  defstruct "@type": "chatEventTitleChanged", old_title: nil, new_title: nil
end
defmodule SearchMessagesFilterVideoNote do
  @moduledoc  """
  Returns only video note messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_video_note.html).
  """

  defstruct "@type": "searchMessagesFilterVideoNote"
end
defmodule MessageVoiceNote do
  @moduledoc  """
  A voice note message.

  | Name | Type | Description |
  |------|------| ------------|
  | voice_note | voiceNote | Message content. |
  | caption | string | Voice note caption. |
  | is_listened | bool | True, if at least one of the recipients has listened to the voice note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_voice_note.html).
  """

  defstruct "@type": "messageVoiceNote", voice_note: nil, caption: nil, is_listened: nil
end
defmodule AuthorizationState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_authorization_state.html).
  """

  defstruct "@type": "AuthorizationState"
end
defmodule SearchMessagesFilterDocument do
  @moduledoc  """
  Returns only document messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_document.html).
  """

  defstruct "@type": "searchMessagesFilterDocument"
end
defmodule PageBlockAudio do
  @moduledoc  """
  An audio file.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | audio | Audio file; may be null. |
  | caption | RichText | Audio file caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_audio.html).
  """

  defstruct "@type": "pageBlockAudio", audio: nil, caption: nil
end
defmodule KeyboardButtonType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_keyboard_button_type.html).
  """

  defstruct "@type": "KeyboardButtonType"
end
defmodule CallDiscardReasonDisconnected do
  @moduledoc  """
  The call was ended during the conversation because the users were disconnected.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_disconnected.html).
  """

  defstruct "@type": "callDiscardReasonDisconnected"
end
defmodule ChatEventMemberLeft do
  @moduledoc  """
  A member left the chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_left.html).
  """

  defstruct "@type": "chatEventMemberLeft"
end
defmodule FileTypeVideo do
  @moduledoc  """
  The file is a video.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video.html).
  """

  defstruct "@type": "fileTypeVideo"
end
defmodule PageBlockCover do
  @moduledoc  """
  A page cover.

  | Name | Type | Description |
  |------|------| ------------|
  | cover | PageBlock | Cover. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_cover.html).
  """

  defstruct "@type": "pageBlockCover", cover: nil
end
defmodule InputMessageVoiceNote do
  @moduledoc  """
  A voice note message.

  | Name | Type | Description |
  |------|------| ------------|
  | voice_note | InputFile | Voice note to be sent. |
  | duration | number | Duration of the voice note, in seconds. |
  | waveform | string | Waveform representation of the voice note, in 5-bit format. |
  | caption | string | Voice note caption; 0-200 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_voice_note.html).
  """

  defstruct "@type": "inputMessageVoiceNote", voice_note: nil, duration: nil, waveform: nil, caption: nil
end
defmodule DeviceTokenBlackberryPush do
  @moduledoc  """
  A token for Blackberry Push Service.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token, may be empty to de-register a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_blackberry_push.html).
  """

  defstruct "@type": "deviceTokenBlackberryPush", token: nil
end
defmodule MessageSendingStateFailed do
  @moduledoc  """
  The message failed to be sent.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sending_state_failed.html).
  """

  defstruct "@type": "messageSendingStateFailed"
end
defmodule RichTextUrl do
  @moduledoc  """
  A rich text URL link.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |
  | url | string | URL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_url.html).
  """

  defstruct "@type": "richTextUrl", text: nil, url: nil
end
defmodule ChatEventStickerSetChanged do
  @moduledoc  """
  The supergroup sticker set was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_sticker_set_id | string | Previous identifier of the chat sticker set; 0 if none. |
  | new_sticker_set_id | string | New identifier of the chat sticker set; 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_sticker_set_changed.html).
  """

  defstruct "@type": "chatEventStickerSetChanged", old_sticker_set_id: nil, new_sticker_set_id: nil
end
defmodule InputSticker do
  @moduledoc  """
  Describes a sticker that should be added to a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | png_sticker | InputFile | PNG image with the sticker; must be up to 512 kB in size and fit in a 512x512 square. |
  | emojis | string | Emoji corresponding to the sticker. |
  | mask_position | maskPosition | For masks, position where the mask should be placed; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_sticker.html).
  """

  defstruct "@type": "inputSticker", png_sticker: nil, emojis: nil, mask_position: nil
end
defmodule UpdateMessageMentionRead do
  @moduledoc  """
  A message with an unread mention was read.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_id | string | Message identifier. |
  | unread_mention_count | number | The new number of unread mention messages left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_mention_read.html).
  """

  defstruct "@type": "updateMessageMentionRead", chat_id: nil, message_id: nil, unread_mention_count: nil
end
defmodule StickerEmojis do
  @moduledoc  """
  Represents a list of all emoji corresponding to a sticker in a sticker set. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.

  | Name | Type | Description |
  |------|------| ------------|
  | emojis | string[] | List of emojis. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_emojis.html).
  """

  defstruct "@type": "stickerEmojis", emojis: nil
end
defmodule ReplyMarkup do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_reply_markup.html).
  """

  defstruct "@type": "ReplyMarkup"
end
defmodule UpdateNewInlineQuery do
  @moduledoc  """
  A new incoming inline query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique query identifier. |
  | sender_user_id | number | Identifier of the user who sent the query. |
  | user_location | location | User location, provided by the client; may be null. |
  | query | string | Text of the query. |
  | offset | string | Offset of the first entry to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_inline_query.html).
  """

  defstruct "@type": "updateNewInlineQuery", id: nil, sender_user_id: nil, user_location: nil, query: nil, offset: nil
end
defmodule InputInlineQueryResultVoiceNote do
  @moduledoc  """
  Represents a link to an opus-encoded audio file within an OGG container, single channel audio.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the voice note. |
  | voice_note_url | string | The URL of the voice note file. |
  | voice_note_duration | number | Duration of the voice note, in seconds. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_voice_note.html).
  """

  defstruct "@type": "inputInlineQueryResultVoiceNote", id: nil, title: nil, voice_note_url: nil, voice_note_duration: nil, reply_markup: nil, input_message_content: nil
end
defmodule PublicMessageLink do
  @moduledoc  """
  Contains a public HTTPS link to a message in a public supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | link | string | Message link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1public_message_link.html).
  """

  defstruct "@type": "publicMessageLink", link: nil
end
defmodule PageBlockChatLink do
  @moduledoc  """
  A link to a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Chat title. |
  | photo | chatPhoto | Chat photo; may be null. |
  | username | string | Chat username, by which all other information about the chat should be resolved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_chat_link.html).
  """

  defstruct "@type": "pageBlockChatLink", title: nil, photo: nil, username: nil
end
defmodule Count do
  @moduledoc  """
  Contains a counter.

  | Name | Type | Description |
  |------|------| ------------|
  | count | number | Count. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1count.html).
  """

  defstruct "@type": "count", count: nil
end
defmodule OptionValueString do
  @moduledoc  """
  A string option.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | The value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_string.html).
  """

  defstruct "@type": "optionValueString", value: nil
end
defmodule UserPrivacySetting do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_privacy_setting.html).
  """

  defstruct "@type": "UserPrivacySetting"
end
defmodule RichText do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_rich_text.html).
  """

  defstruct "@type": "RichText"
end
defmodule MessagePaymentSuccessfulBot do
  @moduledoc  """
  A payment has been completed; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice_message_id | string | Identifier of the message with the corresponding invoice; can be an identifier of a deleted message. |
  | currency | string | Currency for price of the product. |
  | total_amount | string | Total price for the product, in the minimal quantity of the currency. |
  | invoice_payload | string | Invoice payload. |
  | shipping_option_id | string | Identifier of the shipping option chosen by the user, may be empty if not applicable. |
  | order_info | orderInfo | Information about the order; may be null. |
  | telegram_payment_charge_id | string | Telegram payment identifier. |
  | provider_payment_charge_id | string | Provider payment identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_payment_successful_bot.html).
  """

  defstruct "@type": "messagePaymentSuccessfulBot", invoice_message_id: nil, currency: nil, total_amount: nil, invoice_payload: nil, shipping_option_id: nil, order_info: nil, telegram_payment_charge_id: nil, provider_payment_charge_id: nil
end
defmodule ChatReportReasonPornography do
  @moduledoc  """
  The chat contains pornographic messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_pornography.html).
  """

  defstruct "@type": "chatReportReasonPornography"
end
defmodule Ok do
  @moduledoc  """
  An object of this type is returned on a successful function call for certain functions.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1ok.html).
  """

  defstruct "@type": "ok"
end
defmodule ConnectionState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_connection_state.html).
  """

  defstruct "@type": "ConnectionState"
end
defmodule ChatPhoto do
  @moduledoc  """
  Describes the photo of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | small | file | A small (160x160) chat photo. |
  | big | file | A big (640x640) chat photo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo.html).
  """

  defstruct "@type": "chatPhoto", small: nil, big: nil
end
defmodule FileTypePhoto do
  @moduledoc  """
  The file is a photo.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_photo.html).
  """

  defstruct "@type": "fileTypePhoto"
end
defmodule UserPrivacySettingRuleAllowAll do
  @moduledoc  """
  A rule to allow all users to do something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_all.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowAll"
end
defmodule MessageForwardedPost do
  @moduledoc  """
  The message was originally a post in a channel.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat from which the message was forwarded. |
  | author_signature | string | Post author signature. |
  | date | number | Point in time (Unix timestamp) when the message was originally sent. |
  | message_id | string | Message identifier of the original message from which the new message was forwarded; 0 if unknown. |
  | forwarded_from_chat_id | string | For messages forwarded to the chat with the current user (saved messages), the identifier of the chat from which the message was forwarded; 0 if unknown. |
  | forwarded_from_message_id | string | For messages forwarded to the chat with the current user (saved messages), the identifier of the original message from which the new message was forwarded; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forwarded_post.html).
  """

  defstruct "@type": "messageForwardedPost", chat_id: nil, author_signature: nil, date: nil, message_id: nil, forwarded_from_chat_id: nil, forwarded_from_message_id: nil
end
defmodule SavedCredentials do
  @moduledoc  """
  Contains information about saved card credentials.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the saved credentials. |
  | title | string | Title of the saved credentials. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1saved_credentials.html).
  """

  defstruct "@type": "savedCredentials", id: nil, title: nil
end
defmodule UpdateNewCustomQuery do
  @moduledoc  """
  A new incoming query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | The query identifier. |
  | data | string | JSON-serialized query data. |
  | timeout | number | Query timeout. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_custom_query.html).
  """

  defstruct "@type": "updateNewCustomQuery", id: nil, data: nil, timeout: nil
end
defmodule Sessions do
  @moduledoc  """
  Contains a list of sessions.

  | Name | Type | Description |
  |------|------| ------------|
  | sessions | session[] | List of sessions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sessions.html).
  """

  defstruct "@type": "sessions", sessions: nil
end
defmodule StickerSets do
  @moduledoc  """
  Represents a list of sticker sets.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | number | Approximate total number of sticker sets found. |
  | sets | stickerSetInfo[] | List of sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_sets.html).
  """

  defstruct "@type": "stickerSets", total_count: nil, sets: nil
end
defmodule TestVectorString do
  @moduledoc  """
  A simple object containing a vector of strings; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string[] | Vector of strings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_string.html).
  """

  defstruct "@type": "testVectorString", value: nil
end
defmodule AuthenticationCodeInfo do
  @moduledoc  """
  Information about the authentication code that was sent.

  | Name | Type | Description |
  |------|------| ------------|
  | type | AuthenticationCodeType | Describes the way the code was sent to the user. |
  | next_type | AuthenticationCodeType | Describes the way the next code will be sent to the user; may be null. |
  | timeout | number | Timeout before the code should be re-sent, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_info.html).
  """

  defstruct "@type": "authenticationCodeInfo", type: nil, next_type: nil, timeout: nil
end
defmodule GameHighScores do
  @moduledoc  """
  Contains a list of game high scores.

  | Name | Type | Description |
  |------|------| ------------|
  | scores | gameHighScore[] | A list of game high scores. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game_high_scores.html).
  """

  defstruct "@type": "gameHighScores", scores: nil
end
defmodule ChatMemberStatus do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_member_status.html).
  """

  defstruct "@type": "ChatMemberStatus"
end
defmodule UserTypeBot do
  @moduledoc  """
  A bot (see https://core.telegram.org/bots).

  | Name | Type | Description |
  |------|------| ------------|
  | can_join_groups | bool | True, if the bot can be invited to basic group and supergroup chats. |
  | can_read_all_group_messages | bool | True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages. |
  | is_inline | bool | True, if the bot supports inline queries. |
  | inline_query_placeholder | string | Placeholder for inline queries (displayed on the client input field). |
  | need_location | bool | True, if the location of the user should be sent with every inline query to this bot. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_bot.html).
  """

  defstruct "@type": "userTypeBot", can_join_groups: nil, can_read_all_group_messages: nil, is_inline: nil, inline_query_placeholder: nil, need_location: nil
end
defmodule UpdateNewChosenInlineResult do
  @moduledoc  """
  The user has chosen a result of an inline query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_user_id | number | Identifier of the user who sent the query. |
  | user_location | location | User location, provided by the client; may be null. |
  | query | string | Text of the query. |
  | result_id | string | Identifier of the chosen result. |
  | inline_message_id | string | Identifier of the sent inline message, if known. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chosen_inline_result.html).
  """

  defstruct "@type": "updateNewChosenInlineResult", sender_user_id: nil, user_location: nil, query: nil, result_id: nil, inline_message_id: nil
end
defmodule TestVectorInt do
  @moduledoc  """
  A simple object containing a vector of numbers; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | number[] | Vector of numbers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_int.html).
  """

  defstruct "@type": "testVectorInt", value: nil
end
defmodule MaskPoint do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_mask_point.html).
  """

  defstruct "@type": "MaskPoint"
end
defmodule MessagePinMessage do
  @moduledoc  """
  A message has been pinned.

  | Name | Type | Description |
  |------|------| ------------|
  | message_id | string | Identifier of the pinned message, can be an identifier of a deleted message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_pin_message.html).
  """

  defstruct "@type": "messagePinMessage", message_id: nil
end
defmodule ChatEventMemberJoined do
  @moduledoc  """
  A new member joined the chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined.html).
  """

  defstruct "@type": "chatEventMemberJoined"
end
defmodule ChatActionChoosingLocation do
  @moduledoc  """
  The user is picking a location or venue to send.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_location.html).
  """

  defstruct "@type": "chatActionChoosingLocation"
end
defmodule AuthenticationCodeTypeFlashCall do
  @moduledoc  """
  An authentication code is delivered by an immediately cancelled call to the specified phone number. The number from which the call was made is the code.

  | Name | Type | Description |
  |------|------| ------------|
  | pattern | string | Pattern of the phone number from which the call will be made. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_flash_call.html).
  """

  defstruct "@type": "authenticationCodeTypeFlashCall", pattern: nil
end
defmodule MessageGame do
  @moduledoc  """
  A message with a game.

  | Name | Type | Description |
  |------|------| ------------|
  | game | game | Game. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_game.html).
  """

  defstruct "@type": "messageGame", game: nil
end
defmodule KeyboardButton do
  @moduledoc  """
  Represents a single button in a bot keyboard.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the button. |
  | type | KeyboardButtonType | Type of the button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button.html).
  """

  defstruct "@type": "keyboardButton", text: nil, type: nil
end
defmodule TopChatCategory do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_top_chat_category.html).
  """

  defstruct "@type": "TopChatCategory"
end
defmodule ImportedContacts do
  @moduledoc  """
  Represents the result of an ImportContacts request.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | number[] | User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user. |
  | importer_count | number[] | The number of users that imported the corresponding contact; 0 for already registered users or if unavailable. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1imported_contacts.html).
  """

  defstruct "@type": "importedContacts", user_ids: nil, importer_count: nil
end
defmodule InputCredentialsApplePay do
  @moduledoc  """
  Applies if a user enters new credentials using Apple Pay.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | JSON-encoded data with the credential identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_apple_pay.html).
  """

  defstruct "@type": "inputCredentialsApplePay", data: nil
end
defmodule TextEntityTypeUrl do
  @moduledoc  """
  An HTTP URL.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_url.html).
  """

  defstruct "@type": "textEntityTypeUrl"
end
defmodule UpdateNewPreCheckoutQuery do
  @moduledoc  """
  A new incoming pre-checkout query; for bots only. Contains full information about a checkout.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique query identifier. |
  | sender_user_id | number | Identifier of the user who sent the query. |
  | currency | string | Currency for the product price. |
  | total_amount | string | Total price for the product, in the minimal quantity of the currency. |
  | invoice_payload | string | Invoice payload. |
  | shipping_option_id | string | Identifier of a shipping option chosen by the user; may be empty if not applicable. |
  | order_info | orderInfo | Information about the order; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_pre_checkout_query.html).
  """

  defstruct "@type": "updateNewPreCheckoutQuery", id: nil, sender_user_id: nil, currency: nil, total_amount: nil, invoice_payload: nil, shipping_option_id: nil, order_info: nil
end
defmodule UpdateMessageEdited do
  @moduledoc  """
  A message was edited. Changes in the message content will come in a separate updateMessageContent.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_id | string | Message identifier. |
  | edit_date | number | Point in time (Unix timestamp) when the message was edited. |
  | reply_markup | ReplyMarkup | New message reply markup; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_edited.html).
  """

  defstruct "@type": "updateMessageEdited", chat_id: nil, message_id: nil, edit_date: nil, reply_markup: nil
end
defmodule TMeUrlTypeSupergroup do
  @moduledoc  """
  A URL linking to a public supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | string | Identifier of the supergroup or channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_supergroup.html).
  """

  defstruct "@type": "tMeUrlTypeSupergroup", supergroup_id: nil
end
defmodule AuthorizationStateWaitPassword do
  @moduledoc  """
  The user has been authorized, but needs to enter a password to start using the application.

  | Name | Type | Description |
  |------|------| ------------|
  | password_hint | string | Hint for the password; can be empty. |
  | has_recovery_email_address | bool | True if a recovery email address has been set up. |
  | recovery_email_address_pattern | string | Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_password.html).
  """

  defstruct "@type": "authorizationStateWaitPassword", password_hint: nil, has_recovery_email_address: nil, recovery_email_address_pattern: nil
end
defmodule Update do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_update.html).
  """

  defstruct "@type": "Update"
end
defmodule TextEntityTypeMention do
  @moduledoc  """
  A mention of a user by their username.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_mention.html).
  """

  defstruct "@type": "textEntityTypeMention"
end
defmodule FileTypeThumbnail do
  @moduledoc  """
  The file is a thumbnail of another file.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_thumbnail.html).
  """

  defstruct "@type": "fileTypeThumbnail"
end
defmodule InputFileGenerated do
  @moduledoc  """
  A file generated by the client.

  | Name | Type | Description |
  |------|------| ------------|
  | original_path | string | Local path to a file from which the file is generated, may be empty if there is no such file. |
  | conversion | string | String specifying the conversion applied to the original file; should be persistent across application restarts. |
  | expected_size | number | Expected size of the generated file; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_generated.html).
  """

  defstruct "@type": "inputFileGenerated", original_path: nil, conversion: nil, expected_size: nil
end
defmodule ConnectionStateWaitingForNetwork do
  @moduledoc  """
  Currently waiting for the network to become available. Use SetNetworkType to change the available network type.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_waiting_for_network.html).
  """

  defstruct "@type": "connectionStateWaitingForNetwork"
end
defmodule StorageStatisticsByFileType do
  @moduledoc  """
  Contains the storage usage statistics for a specific file type.

  | Name | Type | Description |
  |------|------| ------------|
  | file_type | FileType | File type. |
  | size | string | Total size of the files. |
  | count | number | Total number of files. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_by_file_type.html).
  """

  defstruct "@type": "storageStatisticsByFileType", file_type: nil, size: nil, count: nil
end
defmodule NotificationSettingsScopePrivateChats do
  @moduledoc  """
  Notification settings applied to all private chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_private_chats.html).
  """

  defstruct "@type": "notificationSettingsScopePrivateChats"
end
defmodule ChatReportReasonCustom do
  @moduledoc  """
  A custom reason provided by the user.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Report text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_custom.html).
  """

  defstruct "@type": "chatReportReasonCustom", text: nil
end
defmodule CallStateExchangingKeys do
  @moduledoc  """
  The call has been answered and encryption keys are being exchanged.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_exchanging_keys.html).
  """

  defstruct "@type": "callStateExchangingKeys"
end
defmodule UserTypeUnknown do
  @moduledoc  """
  No information on the user besides the user_id is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_unknown.html).
  """

  defstruct "@type": "userTypeUnknown"
end
defmodule ChatEventUsernameChanged do
  @moduledoc  """
  The chat username was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_username | string | Previous chat username. |
  | new_username | string | New chat username. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_username_changed.html).
  """

  defstruct "@type": "chatEventUsernameChanged", old_username: nil, new_username: nil
end
defmodule ChatTypePrivate do
  @moduledoc  """
  An ordinary chat with a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_private.html).
  """

  defstruct "@type": "chatTypePrivate", user_id: nil
end
defmodule LinkStateNone do
  @moduledoc  """
  The phone number of user A is not known to user B.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1link_state_none.html).
  """

  defstruct "@type": "linkStateNone"
end
defmodule ShippingAddress do
  @moduledoc  """
  Describes a shipping address.

  | Name | Type | Description |
  |------|------| ------------|
  | country_code | string | Two-letter ISO 3166-1 alpha-2 country code. |
  | state | string | State, if applicable. |
  | city | string | City. |
  | street_line1 | string | First line of the address. |
  | street_line2 | string | Second line of the address. |
  | postal_code | string | Address postal code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1shipping_address.html).
  """

  defstruct "@type": "shippingAddress", country_code: nil, state: nil, city: nil, street_line1: nil, street_line2: nil, postal_code: nil
end
defmodule MessageContent do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_content.html).
  """

  defstruct "@type": "MessageContent"
end
defmodule ChatActionUploadingVoiceNote do
  @moduledoc  """
  The user is uploading a voice note.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | number | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_voice_note.html).
  """

  defstruct "@type": "chatActionUploadingVoiceNote", progress: nil
end
defmodule FoundMessages do
  @moduledoc  """
  Contains a list of messages found by a search.

  | Name | Type | Description |
  |------|------| ------------|
  | messages | message[] | List of messages. |
  | next_from_search_id | string | Value to pass as from_search_id to get more results. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_messages.html).
  """

  defstruct "@type": "foundMessages", messages: nil, next_from_search_id: nil
end
defmodule InlineQueryResultAudio do
  @moduledoc  """
  Represents an audio file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | audio | audio | Audio file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_audio.html).
  """

  defstruct "@type": "inlineQueryResultAudio", id: nil, audio: nil
end
defmodule InlineQueryResultLocation do
  @moduledoc  """
  Represents a point on the map.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | location | location | Location result. |
  | title | string | Title of the result. |
  | thumbnail | photoSize | Result thumbnail; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_location.html).
  """

  defstruct "@type": "inlineQueryResultLocation", id: nil, location: nil, title: nil, thumbnail: nil
end
defmodule AuthenticationCodeTypeTelegramMessage do
  @moduledoc  """
  An authentication code is delivered via a private Telegram message, which can be viewed in another client.

  | Name | Type | Description |
  |------|------| ------------|
  | length | number | Length of the code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_telegram_message.html).
  """

  defstruct "@type": "authenticationCodeTypeTelegramMessage", length: nil
end
defmodule MessagePhoto do
  @moduledoc  """
  A photo message.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | photo | Message content. |
  | caption | string | Photo caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_photo.html).
  """

  defstruct "@type": "messagePhoto", photo: nil, caption: nil
end
defmodule FileTypeVoiceNote do
  @moduledoc  """
  The file is a voice note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_voice_note.html).
  """

  defstruct "@type": "fileTypeVoiceNote"
end
defmodule ChatMemberStatusAdministrator do
  @moduledoc  """
  The user is a member of a chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, and ban unprivileged members. In supergroups and channels, there are more detailed options for administrator privileges.

  | Name | Type | Description |
  |------|------| ------------|
  | can_be_edited | bool | True, if the current user can edit the administrator privileges for the called user. |
  | can_change_info | bool | True, if the administrator can change the chat title, photo, and other settings. |
  | can_post_messages | bool | True, if the administrator can create channel posts; applicable to channels only. |
  | can_edit_messages | bool | True, if the administrator can edit messages of other users and pin messages; applicable to channels only. |
  | can_delete_messages | bool | True, if the administrator can delete messages of other users. |
  | can_invite_users | bool | True, if the administrator can invite new users to the chat. |
  | can_restrict_members | bool | True, if the administrator can restrict, ban, or unban chat members. |
  | can_pin_messages | bool | True, if the administrator can pin messages; applicable to supergroups only. |
  | can_promote_members | bool | True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that were directly or indirectly promoted by him. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_administrator.html).
  """

  defstruct "@type": "chatMemberStatusAdministrator", can_be_edited: nil, can_change_info: nil, can_post_messages: nil, can_edit_messages: nil, can_delete_messages: nil, can_invite_users: nil, can_restrict_members: nil, can_pin_messages: nil, can_promote_members: nil
end
defmodule PageBlockDivider do
  @moduledoc  """
  An empty block separating a page.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_divider.html).
  """

  defstruct "@type": "pageBlockDivider"
end
defmodule UpdateNewShippingQuery do
  @moduledoc  """
  A new incoming shipping query; for bots only. Only for invoices with flexible price.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique query identifier. |
  | sender_user_id | number | Identifier of the user who sent the query. |
  | invoice_payload | string | Invoice payload. |
  | shipping_address | shippingAddress | User shipping address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_shipping_query.html).
  """

  defstruct "@type": "updateNewShippingQuery", id: nil, sender_user_id: nil, invoice_payload: nil, shipping_address: nil
end
defmodule WebPage do
  @moduledoc  """
  Describes a web page preview.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Original URL of the link. |
  | display_url | string | URL to display. |
  | type | string | Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else. |
  | site_name | string | Short name of the site (e.g., Google Docs, App Store). |
  | title | string | Title of the content. |
  | description | string | Description of the content. |
  | photo | photo | Image representing the content; may be null. |
  | embed_url | string | URL to show in the embedded preview. |
  | embed_type | string | MIME type of the embedded preview, (e.g., text/html or video/mp4). |
  | embed_width | number | Width of the embedded preview. |
  | embed_height | number | Height of the embedded preview. |
  | duration | number | Duration of the content, in seconds. |
  | author | string | Author of the content. |
  | animation | animation | Preview of the content as an animation, if available; may be null. |
  | audio | audio | Preview of the content as an audio file, if available; may be null. |
  | document | document | Preview of the content as a document, if available (currently only available for small PDF files and ZIP archives); may be null. |
  | sticker | sticker | Preview of the content as a sticker for small WEBP files, if available; may be null. |
  | video | video | Preview of the content as a video, if available; may be null. |
  | video_note | videoNote | Preview of the content as a video note, if available; may be null. |
  | voice_note | voiceNote | Preview of the content as a voice note, if available; may be null. |
  | has_instant_view | bool | True, if the web page has an instant view. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_page.html).
  """

  defstruct "@type": "webPage", url: nil, display_url: nil, type: nil, site_name: nil, title: nil, description: nil, photo: nil, embed_url: nil, embed_type: nil, embed_width: nil, embed_height: nil, duration: nil, author: nil, animation: nil, audio: nil, document: nil, sticker: nil, video: nil, video_note: nil, voice_note: nil, has_instant_view: nil
end
defmodule SearchMessagesFilterUrl do
  @moduledoc  """
  Returns only messages containing URLs.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_url.html).
  """

  defstruct "@type": "searchMessagesFilterUrl"
end
defmodule UpdateNewChat do
  @moduledoc  """
  A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the client. The chat field changes will be reported through separate updates.

  | Name | Type | Description |
  |------|------| ------------|
  | chat | chat | The chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chat.html).
  """

  defstruct "@type": "updateNewChat", chat: nil
end
defmodule MessageVideo do
  @moduledoc  """
  A video message.

  | Name | Type | Description |
  |------|------| ------------|
  | video | video | Message content. |
  | caption | string | Video caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video.html).
  """

  defstruct "@type": "messageVideo", video: nil, caption: nil
end
defmodule UpdateMessageSendSucceeded do
  @moduledoc  """
  A message has been successfully sent.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Information about the sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change. |
  | old_message_id | string | The previous temporary message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_succeeded.html).
  """

  defstruct "@type": "updateMessageSendSucceeded", message: nil, old_message_id: nil
end
defmodule InputFileRemote do
  @moduledoc  """
  A file defined by its remote ID.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Remote file identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_remote.html).
  """

  defstruct "@type": "inputFileRemote", id: nil
end
defmodule UpdateUserStatus do
  @moduledoc  """
  The user went online or offline.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |
  | status | UserStatus | New status of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_status.html).
  """

  defstruct "@type": "updateUserStatus", user_id: nil, status: nil
end
defmodule SupergroupMembersFilterSearch do
  @moduledoc  """
  Used to search for supergroup or channel members via a (string) query.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_search.html).
  """

  defstruct "@type": "supergroupMembersFilterSearch", query: nil
end
defmodule UpdateChatIsPinned do
  @moduledoc  """
  A chat was pinned or unpinned.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | is_pinned | bool | New value of is_pinned. |
  | order | string | New value of the chat order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_is_pinned.html).
  """

  defstruct "@type": "updateChatIsPinned", chat_id: nil, is_pinned: nil, order: nil
end
defmodule RecoveryEmailAddress do
  @moduledoc  """
  Contains information about the current recovery email address.

  | Name | Type | Description |
  |------|------| ------------|
  | recovery_email_address | string | Recovery email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recovery_email_address.html).
  """

  defstruct "@type": "recoveryEmailAddress", recovery_email_address: nil
end
defmodule FileTypeSecretThumbnail do
  @moduledoc  """
  The file is a thumbnail of a file from a secret chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secret_thumbnail.html).
  """

  defstruct "@type": "fileTypeSecretThumbnail"
end
defmodule AccountTtl do
  @moduledoc  """
  Contains information about the period of inactivity after which the current user's account will automatically be deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | days | number | Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1account_ttl.html).
  """

  defstruct "@type": "accountTtl", days: nil
end
defmodule BasicGroupFullInfo do
  @moduledoc  """
  Contains full information about a basic group.

  | Name | Type | Description |
  |------|------| ------------|
  | creator_user_id | number | User identifier of the creator of the group; 0 if unknown. |
  | members | chatMember[] | Group members. |
  | invite_link | string | Invite link for this group; available only for the group creator and only after it has been generated at least once. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1basic_group_full_info.html).
  """

  defstruct "@type": "basicGroupFullInfo", creator_user_id: nil, members: nil, invite_link: nil
end
defmodule InputMessageContent do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_message_content.html).
  """

  defstruct "@type": "InputMessageContent"
end
defmodule UserPrivacySettingRuleRestrictAll do
  @moduledoc  """
  A rule to restrict all users from doing something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_all.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictAll"
end
defmodule InputMessageContact do
  @moduledoc  """
  A message containing a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | contact | contact | Contact to send. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_contact.html).
  """

  defstruct "@type": "inputMessageContact", contact: nil
end
defmodule PageBlockPhoto do
  @moduledoc  """
  A photo.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | photo | Photo file; may be null. |
  | caption | RichText | Photo caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_photo.html).
  """

  defstruct "@type": "pageBlockPhoto", photo: nil, caption: nil
end
defmodule ChatEventMessageDeleted do
  @moduledoc  """
  A message was deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Deleted message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_deleted.html).
  """

  defstruct "@type": "chatEventMessageDeleted", message: nil
end
defmodule InputFileLocal do
  @moduledoc  """
  A file defined by a local path.

  | Name | Type | Description |
  |------|------| ------------|
  | path | string | Local path to the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_local.html).
  """

  defstruct "@type": "inputFileLocal", path: nil
end
defmodule UpdateAuthorizationState do
  @moduledoc  """
  The user authorization state has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | authorization_state | AuthorizationState | New authorization state. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_authorization_state.html).
  """

  defstruct "@type": "updateAuthorizationState", authorization_state: nil
end
defmodule ChatReportSpamState do
  @moduledoc  """
  Contains information about the availability of the "Report spam" action for a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | can_report_spam | bool | True, if a prompt with the "Report spam" action should be shown to the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_spam_state.html).
  """

  defstruct "@type": "chatReportSpamState", can_report_spam: nil
end
defmodule UpdateOption do
  @moduledoc  """
  An option changed its value.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | The option name. |
  | value | OptionValue | The new option value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_option.html).
  """

  defstruct "@type": "updateOption", name: nil, value: nil
end
defmodule InlineKeyboardButtonTypeCallback do
  @moduledoc  """
  A button that sends a special callback query to a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | Data to be sent to the bot via a callback query. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeCallback", data: nil
end
defmodule MessageAnimation do
  @moduledoc  """
  An animation message (GIF-style).

  | Name | Type | Description |
  |------|------| ------------|
  | animation | animation | Message content. |
  | caption | string | Animation caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_animation.html).
  """

  defstruct "@type": "messageAnimation", animation: nil, caption: nil
end
defmodule UpdateChatOrder do
  @moduledoc  """
  The order of the chat in the chats list has changed. Instead of this update updateChatLastMessage, updateChatIsPinned or updateChatDraftMessage might be sent.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | order | string | New value of the order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_order.html).
  """

  defstruct "@type": "updateChatOrder", chat_id: nil, order: nil
end
defmodule ReplyMarkupRemoveKeyboard do
  @moduledoc  """
  Instructs clients to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0 will be sent.

  | Name | Type | Description |
  |------|------| ------------|
  | is_personal | bool | True, if the keyboard is removed only for the mentioned users or the target user of a reply. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_remove_keyboard.html).
  """

  defstruct "@type": "replyMarkupRemoveKeyboard", is_personal: nil
end
defmodule ValidatedOrderInfo do
  @moduledoc  """
  Contains a temporary identifier of validated order information, which is stored for one hour. Also contains the available shipping options.

  | Name | Type | Description |
  |------|------| ------------|
  | order_info_id | string | Temporary identifier of the order information. |
  | shipping_options | shippingOption[] | Available shipping options. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1validated_order_info.html).
  """

  defstruct "@type": "validatedOrderInfo", order_info_id: nil, shipping_options: nil
end
defmodule AuthorizationStateWaitPhoneNumber do
  @moduledoc  """
  TDLib needs the user's phone number to authorize.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_phone_number.html).
  """

  defstruct "@type": "authorizationStateWaitPhoneNumber"
end
defmodule FileTypeAudio do
  @moduledoc  """
  The file is an audio file.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_audio.html).
  """

  defstruct "@type": "fileTypeAudio"
end
defmodule DeviceTokenApplePush do
  @moduledoc  """
  A token for Apple Push Notification Service.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token, may be empty to de-register a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_apple_push.html).
  """

  defstruct "@type": "deviceTokenApplePush", token: nil
end
defmodule NetworkTypeNone do
  @moduledoc  """
  The network is not available.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_none.html).
  """

  defstruct "@type": "networkTypeNone"
end
defmodule InputInlineQueryResultAudio do
  @moduledoc  """
  Represents a link to an MP3 audio file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the audio file. |
  | performer | string | Performer of the audio file. |
  | audio_url | string | The URL of the audio file. |
  | audio_duration | number | Audio file duration, in seconds. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAudio, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_audio.html).
  """

  defstruct "@type": "inputInlineQueryResultAudio", id: nil, title: nil, performer: nil, audio_url: nil, audio_duration: nil, reply_markup: nil, input_message_content: nil
end
defmodule CallDiscardReasonMissed do
  @moduledoc  """
  The call was ended before the conversation started. It was cancelled by the caller or missed by the other party.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_missed.html).
  """

  defstruct "@type": "callDiscardReasonMissed"
end
defmodule TextEntityTypePreCode do
  @moduledoc  """
  Text that must be formatted as if inside pre, and code HTML tags.

  | Name | Type | Description |
  |------|------| ------------|
  | language | string | Programming language of the code; as defined by the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_pre_code.html).
  """

  defstruct "@type": "textEntityTypePreCode", language: nil
end
defmodule MessageContact do
  @moduledoc  """
  A message with a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | contact | contact | Message content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_contact.html).
  """

  defstruct "@type": "messageContact", contact: nil
end
defmodule TextEntityTypeTextUrl do
  @moduledoc  """
  A text description shown instead of a raw URL.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | URL to be opened when the link is clicked. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_text_url.html).
  """

  defstruct "@type": "textEntityTypeTextUrl", url: nil
end
defmodule CallConnection do
  @moduledoc  """
  Describes the address of UDP reflectors.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Reflector identifier. |
  | ip | string | IPv4 reflector address. |
  | ipv6 | string | IPv6 reflector address. |
  | port | number | Reflector port number. |
  | peer_tag | string | Connection peer tag. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_connection.html).
  """

  defstruct "@type": "callConnection", id: nil, ip: nil, ipv6: nil, port: nil, peer_tag: nil
end
defmodule Photo do
  @moduledoc  """
  Describes a photo.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Photo identifier; 0 for deleted photos. |
  | has_stickers | bool | True, if stickers were added to the photo. |
  | sizes | photoSize[] | Available variants of the photo, in different sizes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1photo.html).
  """

  defstruct "@type": "photo", id: nil, has_stickers: nil, sizes: nil
end
defmodule TestVectorStringObject do
  @moduledoc  """
  A simple object containing a vector of objects that hold a string; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | testString[] | Vector of objects. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_string_object.html).
  """

  defstruct "@type": "testVectorStringObject", value: nil
end
defmodule ChatMemberStatusBanned do
  @moduledoc  """
  The user was banned (and hence is not a member of the chat). Implies the user can't return to the chat or view messages.

  | Name | Type | Description |
  |------|------| ------------|
  | banned_until_date | number | Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_banned.html).
  """

  defstruct "@type": "chatMemberStatusBanned", banned_until_date: nil
end
defmodule InlineQueryResultVideo do
  @moduledoc  """
  Represents a video.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | video | video | Video. |
  | title | string | Title of the video. |
  | description | string | Description of the video. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_video.html).
  """

  defstruct "@type": "inlineQueryResultVideo", id: nil, video: nil, title: nil, description: nil
end
defmodule ConnectionStateConnectingToProxy do
  @moduledoc  """
  Currently establishing a connection with a proxy server.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_connecting_to_proxy.html).
  """

  defstruct "@type": "connectionStateConnectingToProxy"
end
defmodule InputInlineQueryResultVideo do
  @moduledoc  """
  Represents a link to a page containing an embedded video player or a video file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the result. |
  | description | string | A short description of the result, if known. |
  | thumbnail_url | string | The URL of the video thumbnail (JPEG), if it exists. |
  | video_url | string | URL of the embedded video player or video file. |
  | mime_type | string | MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported. |
  | video_width | number | Width of the video. |
  | video_height | number | Height of the video. |
  | video_duration | number | Video duration, in seconds. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVideo, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_video.html).
  """

  defstruct "@type": "inputInlineQueryResultVideo", id: nil, title: nil, description: nil, thumbnail_url: nil, video_url: nil, mime_type: nil, video_width: nil, video_height: nil, video_duration: nil, reply_markup: nil, input_message_content: nil
end
defmodule AuthenticationCodeType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_authentication_code_type.html).
  """

  defstruct "@type": "AuthenticationCodeType"
end
defmodule LocalFile do
  @moduledoc  """
  Represents a local file.

  | Name | Type | Description |
  |------|------| ------------|
  | path | string | Local path to the locally available file part; may be empty. |
  | can_be_downloaded | bool | True, if it is possible to try to download or generate the file. |
  | can_be_deleted | bool | True, if the file can be deleted. |
  | is_downloading_active | bool | True, if the file is currently being downloaded (or a local copy is being generated by some other means). |
  | is_downloading_completed | bool | True, if the local copy is fully available. |
  | downloaded_prefix_size | number | If is_downloading_completed is false, then only some prefix of the file is ready to be read. downloaded_prefix_size is the size of that prefix. |
  | downloaded_size | number | Total downloaded file bytes. Should be used only for calculating download progress. The actual file size may be bigger, and some parts of it may contain garbage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1local_file.html).
  """

  defstruct "@type": "localFile", path: nil, can_be_downloaded: nil, can_be_deleted: nil, is_downloading_active: nil, is_downloading_completed: nil, downloaded_prefix_size: nil, downloaded_size: nil
end
defmodule CallStateError do
  @moduledoc  """
  The call has ended with an error.

  | Name | Type | Description |
  |------|------| ------------|
  | error | error | Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_error.html).
  """

  defstruct "@type": "callStateError", error: nil
end
defmodule DeviceTokenUbuntuPush do
  @moduledoc  """
  A token for Ubuntu Push Client service.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token, may be empty to de-register a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_ubuntu_push.html).
  """

  defstruct "@type": "deviceTokenUbuntuPush", token: nil
end
defmodule UpdateSupergroup do
  @moduledoc  """
  Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the client as long as the library has information on the supergroup.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup | supergroup | New data about the supergroup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_supergroup.html).
  """

  defstruct "@type": "updateSupergroup", supergroup: nil
end
defmodule PageBlockPullQuote do
  @moduledoc  """
  A pull quote.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Quote text. |
  | caption | RichText | Quote caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_pull_quote.html).
  """

  defstruct "@type": "pageBlockPullQuote", text: nil, caption: nil
end
defmodule FileTypeNone do
  @moduledoc  """
  The data is not a file.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_none.html).
  """

  defstruct "@type": "fileTypeNone"
end
defmodule ChatEventAction do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_event_action.html).
  """

  defstruct "@type": "ChatEventAction"
end
defmodule PageBlockSubheader do
  @moduledoc  """
  A subheader.

  | Name | Type | Description |
  |------|------| ------------|
  | subheader | RichText | Subheader. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_subheader.html).
  """

  defstruct "@type": "pageBlockSubheader", subheader: nil
end
defmodule UpdateRecentStickers do
  @moduledoc  """
  The list of recently used stickers was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | is_attached | bool | True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated. |
  | sticker_ids | number[] | The new list of file identifiers of recently used stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_recent_stickers.html).
  """

  defstruct "@type": "updateRecentStickers", is_attached: nil, sticker_ids: nil
end
defmodule CallStateHangingUp do
  @moduledoc  """
  The call is hanging up after discardCall has been called.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_hanging_up.html).
  """

  defstruct "@type": "callStateHangingUp"
end
defmodule InlineKeyboardButtonTypeBuy do
  @moduledoc  """
  A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_buy.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeBuy"
end
defmodule UpdateUserChatAction do
  @moduledoc  """
  User activity in the chat has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | user_id | number | Identifier of a user performing an action. |
  | action | ChatAction | The action description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_chat_action.html).
  """

  defstruct "@type": "updateUserChatAction", chat_id: nil, user_id: nil, action: nil
end
defmodule UpdateFile do
  @moduledoc  """
  Information about a file was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | file | file | New data about the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file.html).
  """

  defstruct "@type": "updateFile", file: nil
end
defmodule MessageForwardedFromUser do
  @moduledoc  """
  The message was originally written by a known user.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_user_id | number | Identifier of the user that originally sent this message. |
  | date | number | Point in time (Unix timestamp) when the message was originally sent. |
  | forwarded_from_chat_id | string | For messages forwarded to the chat with the current user (saved messages), the identifier of the chat from which the message was forwarded; 0 if unknown. |
  | forwarded_from_message_id | string | For messages forwarded to the chat with the current user (saved messages) the identifier of the original message from which the new message was forwarded; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forwarded_from_user.html).
  """

  defstruct "@type": "messageForwardedFromUser", sender_user_id: nil, date: nil, forwarded_from_chat_id: nil, forwarded_from_message_id: nil
end
defmodule TestVectorIntObject do
  @moduledoc  """
  A simple object containing a vector of objects that hold a number; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | testInt[] | Vector of objects. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_int_object.html).
  """

  defstruct "@type": "testVectorIntObject", value: nil
end
defmodule UpdateSecretChat do
  @moduledoc  """
  Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the client as long as the library has information about the secret chat.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat | secretChat | New data about the secret chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_secret_chat.html).
  """

  defstruct "@type": "updateSecretChat", secret_chat: nil
end
defmodule MessageText do
  @moduledoc  """
  A text message.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the message. |
  | entities | textEntity[] | Entities contained in the text. |
  | web_page | webPage | A preview of the web page that's mentioned in the text; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_text.html).
  """

  defstruct "@type": "messageText", text: nil, entities: nil, web_page: nil
end
defmodule User do
  @moduledoc  """
  Represents a user.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | User identifier. |
  | first_name | string | First name of the user. |
  | last_name | string | Last name of the user. |
  | username | string | Username of the user. |
  | phone_number | string | Phone number of the user. |
  | status | UserStatus | Current online status of the user. |
  | profile_photo | profilePhoto | Profile photo of the user; may be null. |
  | outgoing_link | LinkState | Relationship from the current user to the other user. |
  | incoming_link | LinkState | Relationship from the other user to the current user. |
  | is_verified | bool | True, if the user is verified. |
  | restriction_reason | string | If non-empty, it contains the reason why access to this user must be restricted. The format of the string is "{type}: {description}". {type} contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or "-wp", which describe the platforms on which access should be restricted. (For example, "terms-ios-android". {description} contains a human-readable description of the restriction, which can be shown to the user.) |
  | have_access | bool | If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser. |
  | type | UserType | Type of the user. |
  | language_code | string | IETF language tag of the user's language; only available to bots. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user.html).
  """

  defstruct "@type": "user", id: nil, first_name: nil, last_name: nil, username: nil, phone_number: nil, status: nil, profile_photo: nil, outgoing_link: nil, incoming_link: nil, is_verified: nil, restriction_reason: nil, have_access: nil, type: nil, language_code: nil
end
defmodule InputMessagePhoto do
  @moduledoc  """
  A photo message.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | InputFile | Photo to send. |
  | thumbnail | inputThumbnail | Photo thumbnail to be sent, this is sent to the other party in secret chats only. |
  | added_sticker_file_ids | number[] | File identifiers of the stickers added to the photo, if applicable. |
  | width | number | Photo width. |
  | height | number | Photo height. |
  | caption | string | Photo caption; 0-200 characters. |
  | ttl | number | Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_photo.html).
  """

  defstruct "@type": "inputMessagePhoto", photo: nil, thumbnail: nil, added_sticker_file_ids: nil, width: nil, height: nil, caption: nil, ttl: nil
end
defmodule TestString do
  @moduledoc  """
  A simple object containing a string; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | String. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_string.html).
  """

  defstruct "@type": "testString", value: nil
end
defmodule TMeUrlTypeChatInvite do
  @moduledoc  """
  A chat invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | info | chatInviteLinkInfo | Chat invite link info. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_chat_invite.html).
  """

  defstruct "@type": "tMeUrlTypeChatInvite", info: nil
end
defmodule InputInlineQueryResultAnimatedMpeg4 do
  @moduledoc  """
  Represents a link to an animated (i.e. without sound) H.264/MPEG-4 AVC video.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the result. |
  | thumbnail_url | string | URL of the static result thumbnail (JPEG or GIF), if it exists. |
  | mpeg4_url | string | The URL of the MPEG4-file (file size must not exceed 1MB). |
  | mpeg4_duration | number | Duration of the video, in seconds. |
  | mpeg4_width | number | Width of the video. |
  | mpeg4_height | number | Height of the video. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_animated_mpeg4.html).
  """

  defstruct "@type": "inputInlineQueryResultAnimatedMpeg4", id: nil, title: nil, thumbnail_url: nil, mpeg4_url: nil, mpeg4_duration: nil, mpeg4_width: nil, mpeg4_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule KeyboardButtonTypeText do
  @moduledoc  """
  A simple button, with text that should be sent when the button is pressed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_text.html).
  """

  defstruct "@type": "keyboardButtonTypeText"
end
defmodule Wallpapers do
  @moduledoc  """
  Contains a list of wallpapers.

  | Name | Type | Description |
  |------|------| ------------|
  | wallpapers | wallpaper[] | A list of wallpapers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1wallpapers.html).
  """

  defstruct "@type": "wallpapers", wallpapers: nil
end
defmodule FileTypeSticker do
  @moduledoc  """
  The file is a sticker.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_sticker.html).
  """

  defstruct "@type": "fileTypeSticker"
end
defmodule CallStatePending do
  @moduledoc  """
  The call is pending, waiting to be accepted by a user.

  | Name | Type | Description |
  |------|------| ------------|
  | is_created | bool | True, if the call has already been created by the server. |
  | is_received | bool | True, if the call has already been received by the other party. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_pending.html).
  """

  defstruct "@type": "callStatePending", is_created: nil, is_received: nil
end
defmodule ReplyMarkupInlineKeyboard do
  @moduledoc  """
  Contains an inline keyboard layout.

  | Name | Type | Description |
  |------|------| ------------|
  | rows | inlineKeyboardButton[][] | A list of rows of inline keyboard buttons. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_inline_keyboard.html).
  """

  defstruct "@type": "replyMarkupInlineKeyboard", rows: nil
end
defmodule InputMessageInvoice do
  @moduledoc  """
  A message with an invoice; can be used only by bots and only in private chats.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice | invoice | Invoice. |
  | title | string | Product title; 1-32 characters. |
  | description | string | Product description; 0-255 characters. |
  | photo_url | string | Product photo URL; optional. |
  | photo_size | number | Product photo size. |
  | photo_width | number | Product photo width. |
  | photo_height | number | Product photo height. |
  | payload | string | The invoice payload. |
  | provider_token | string | Payment provider token. |
  | provider_data | string | JSON-encoded data about the invoice, which will be shared with the payment provider. |
  | start_parameter | string | Unique invoice bot start_parameter for the generation of this invoice. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_invoice.html).
  """

  defstruct "@type": "inputMessageInvoice", invoice: nil, title: nil, description: nil, photo_url: nil, photo_size: nil, photo_width: nil, photo_height: nil, payload: nil, provider_token: nil, provider_data: nil, start_parameter: nil
end
defmodule NotificationSettingsScopeChat do
  @moduledoc  """
  Notification settings applied to a particular chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_chat.html).
  """

  defstruct "@type": "notificationSettingsScopeChat", chat_id: nil
end
defmodule MessageAudio do
  @moduledoc  """
  An audio message.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | audio | Message content. |
  | caption | string | Audio caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_audio.html).
  """

  defstruct "@type": "messageAudio", audio: nil, caption: nil
end
defmodule InputInlineQueryResultAnimatedGif do
  @moduledoc  """
  Represents a link to an animated GIF.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the query result. |
  | thumbnail_url | string | URL of the static result thumbnail (JPEG or GIF), if it exists. |
  | gif_url | string | The URL of the GIF-file (file size must not exceed 1MB). |
  | gif_duration | number | Duration of the GIF, in seconds. |
  | gif_width | number | Width of the GIF. |
  | gif_height | number | Height of the GIF. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_animated_gif.html).
  """

  defstruct "@type": "inputInlineQueryResultAnimatedGif", id: nil, title: nil, thumbnail_url: nil, gif_url: nil, gif_duration: nil, gif_width: nil, gif_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule StickerSetInfo do
  @moduledoc  """
  Represents short information about a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Identifier of the sticker set. |
  | title | string | Title of the sticker set. |
  | name | string | Name of the sticker set. |
  | is_installed | bool | True, if the sticker set has been installed by current user. |
  | is_archived | bool | True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. |
  | is_official | bool | True, if the sticker set is official. |
  | is_masks | bool | True, if the stickers in the set are masks. |
  | is_viewed | bool | True for already viewed trending sticker sets. |
  | size | number | Total number of stickers in the set. |
  | covers | sticker[] | Contains up to the first 5 stickers from the set, depending on the context. If the client needs more stickers the full set should be requested. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_set_info.html).
  """

  defstruct "@type": "stickerSetInfo", id: nil, title: nil, name: nil, is_installed: nil, is_archived: nil, is_official: nil, is_masks: nil, is_viewed: nil, size: nil, covers: nil
end
defmodule NetworkType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_network_type.html).
  """

  defstruct "@type": "NetworkType"
end
defmodule MessageLocation do
  @moduledoc  """
  A message with a location.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Message content. |
  | live_period | number | Time relative to the message sent date until which the location can be updated, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_location.html).
  """

  defstruct "@type": "messageLocation", location: nil, live_period: nil
end
defmodule RichTextBold do
  @moduledoc  """
  A bold rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_bold.html).
  """

  defstruct "@type": "richTextBold", text: nil
end
defmodule MessageForwardInfo do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_forward_info.html).
  """

  defstruct "@type": "MessageForwardInfo"
end
defmodule UserStatusOnline do
  @moduledoc  """
  The user is online.

  | Name | Type | Description |
  |------|------| ------------|
  | expires | number | Point in time (Unix timestamp) when the user's online status will expire. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_online.html).
  """

  defstruct "@type": "userStatusOnline", expires: nil
end
defmodule DeviceTokenMicrosoftPush do
  @moduledoc  """
  A token for Microsoft Push Notification Service.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token, may be empty to de-register a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_microsoft_push.html).
  """

  defstruct "@type": "deviceTokenMicrosoftPush", token: nil
end
defmodule ChatType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_type.html).
  """

  defstruct "@type": "ChatType"
end
defmodule InputMessageGame do
  @moduledoc  """
  A message with a game; not supported for channels or secret chats.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | number | User identifier of the bot that owns the game. |
  | game_short_name | string | Short name of the game. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_game.html).
  """

  defstruct "@type": "inputMessageGame", bot_user_id: nil, game_short_name: nil
end
defmodule UpdateNewInlineCallbackQuery do
  @moduledoc  """
  A new incoming callback query from a message sent via a bot; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique query identifier. |
  | sender_user_id | number | Identifier of the user who sent the query. |
  | inline_message_id | string | Identifier of the inline message, from which the query originated. |
  | chat_instance | string | An identifier uniquely corresponding to the chat a message was sent to. |
  | payload | CallbackQueryPayload | Query payload. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_inline_callback_query.html).
  """

  defstruct "@type": "updateNewInlineCallbackQuery", id: nil, sender_user_id: nil, inline_message_id: nil, chat_instance: nil, payload: nil
end
defmodule SearchMessagesFilterMention do
  @moduledoc  """
  Returns only messages with mentions of the current user, or messages that are replies to their messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_mention.html).
  """

  defstruct "@type": "searchMessagesFilterMention"
end
defmodule NetworkTypeWiFi do
  @moduledoc  """
  A Wi-Fi network.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_wi_fi.html).
  """

  defstruct "@type": "networkTypeWiFi"
end
defmodule AuthenticationCodeTypeSms do
  @moduledoc  """
  An authentication code is delivered via an SMS message to the specified phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | length | number | Length of the code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_sms.html).
  """

  defstruct "@type": "authenticationCodeTypeSms", length: nil
end
defmodule ChatMemberStatusMember do
  @moduledoc  """
  The user is a member of a chat, without any additional privileges or restrictions.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_member.html).
  """

  defstruct "@type": "chatMemberStatusMember"
end
defmodule ChatEventLogFilters do
  @moduledoc  """
  Represents a set of filters used to obtain a chat event log.

  | Name | Type | Description |
  |------|------| ------------|
  | message_edits | bool | True, if message edits should be returned. |
  | message_deletions | bool | True, if message deletions should be returned. |
  | message_pins | bool | True, if pin/unpin events should be returned. |
  | member_joins | bool | True, if members joining events should be returned. |
  | member_leaves | bool | True, if members leaving events should be returned. |
  | member_invites | bool | True, if invited member events should be returned. |
  | member_promotions | bool | True, if member promotion/demotion events should be returned. |
  | member_restrictions | bool | True, if member restricted/unrestricted/banned/unbanned events should be returned. |
  | info_changes | bool | True, if changes in chat information should be returned. |
  | setting_changes | bool | True, if changes in chat settings should be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_log_filters.html).
  """

  defstruct "@type": "chatEventLogFilters", message_edits: nil, message_deletions: nil, message_pins: nil, member_joins: nil, member_leaves: nil, member_invites: nil, member_promotions: nil, member_restrictions: nil, info_changes: nil, setting_changes: nil
end
defmodule CallbackQueryPayloadGame do
  @moduledoc  """
  The payload from a game callback button.

  | Name | Type | Description |
  |------|------| ------------|
  | game_short_name | string | A short name of the game that was attached to the callback button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_game.html).
  """

  defstruct "@type": "callbackQueryPayloadGame", game_short_name: nil
end
defmodule Text do
  @moduledoc  """
  Contains some text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text.html).
  """

  defstruct "@type": "text", text: nil
end
defmodule InlineQueryResultPhoto do
  @moduledoc  """
  Represents a photo.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | photo | photo | Photo. |
  | title | string | Title of the result, if known. |
  | description | string | A short description of the result, if known. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_photo.html).
  """

  defstruct "@type": "inlineQueryResultPhoto", id: nil, photo: nil, title: nil, description: nil
end
defmodule CallbackQueryPayload do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_callback_query_payload.html).
  """

  defstruct "@type": "CallbackQueryPayload"
end
defmodule PageBlockTitle do
  @moduledoc  """
  The title of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | title | RichText | Title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_title.html).
  """

  defstruct "@type": "pageBlockTitle", title: nil
end
defmodule UpdateFavoriteStickers do
  @moduledoc  """
  The list of favorite stickers was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_ids | number[] | The new list of file identifiers of favorite stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_favorite_stickers.html).
  """

  defstruct "@type": "updateFavoriteStickers", sticker_ids: nil
end
defmodule PasswordRecoveryInfo do
  @moduledoc  """
  Contains information available to the user after requesting password recovery.

  | Name | Type | Description |
  |------|------| ------------|
  | recovery_email_address_pattern | string | Pattern of the email address to which a recovery email was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1password_recovery_info.html).
  """

  defstruct "@type": "passwordRecoveryInfo", recovery_email_address_pattern: nil
end
defmodule TMeUrls do
  @moduledoc  """
  Contains a list of t.me URLs.

  | Name | Type | Description |
  |------|------| ------------|
  | urls | tMeUrl[] | List of URLs. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_urls.html).
  """

  defstruct "@type": "tMeUrls", urls: nil
end
defmodule UpdateServiceNotification do
  @moduledoc  """
  Service notification from the server. Upon receiving this the client must show a popup with the content of the notification.

  | Name | Type | Description |
  |------|------| ------------|
  | type | string | Notification type. |
  | content | MessageContent | Notification content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_service_notification.html).
  """

  defstruct "@type": "updateServiceNotification", type: nil, content: nil
end
defmodule PaymentForm do
  @moduledoc  """
  Contains information about an invoice payment form.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice | invoice | Full information of the invoice. |
  | url | string | Payment form URL. |
  | payments_provider | paymentsProviderStripe | Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null. |
  | saved_order_info | orderInfo | Saved server-side order information; may be null. |
  | saved_credentials | savedCredentials | Contains information about saved card credentials; may be null. |
  | can_save_credentials | bool | True, if the user can choose to save credentials. |
  | need_password | bool | True, if the user will be able to save credentials protected by a password they set up. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_form.html).
  """

  defstruct "@type": "paymentForm", invoice: nil, url: nil, payments_provider: nil, saved_order_info: nil, saved_credentials: nil, can_save_credentials: nil, need_password: nil
end
defmodule File do
  @moduledoc  """
  Represents a file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Unique file identifier. |
  | size | number | File size; 0 if unknown. |
  | expected_size | number | Expected file size in case the exact file size is unknown, but an approximate size is known. Can be used to show download/upload progress. |
  | local | localFile | Information about the local copy of the file. |
  | remote | remoteFile | Information about the remote copy of the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file.html).
  """

  defstruct "@type": "file", id: nil, size: nil, expected_size: nil, local: nil, remote: nil
end
defmodule ChatMember do
  @moduledoc  """
  A user with information about joining/leaving a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier of the chat member. |
  | inviter_user_id | number | Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown. |
  | joined_chat_date | number | Point in time (Unix timestamp) when the user joined a chat. |
  | status | ChatMemberStatus | Status of the member in the chat. |
  | bot_info | botInfo | If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not a chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member.html).
  """

  defstruct "@type": "chatMember", user_id: nil, inviter_user_id: nil, joined_chat_date: nil, status: nil, bot_info: nil
end
defmodule TdlibParameters do
  @moduledoc  """
  Contains parameters for TDLib initialization.

  | Name | Type | Description |
  |------|------| ------------|
  | use_test_dc | bool | If set to true, the Telegram test environment will be used instead of the production environment. |
  | database_directory | string | The path to the directory for the persistent database; if empty, the current working directory will be used. |
  | files_directory | string | The path to the directory for storing files; if empty, database_directory will be used. |
  | use_file_database | bool | If set to true, information about downloaded and uploaded files will be saved between application restarts. |
  | use_chat_info_database | bool | If set to true, the library will maintain a cache of users, basic groups, supergroups, channels and secret chats. Implies use_file_database. |
  | use_message_database | bool | If set to true, the library will maintain a cache of chats and messages. Implies use_chat_info_database. |
  | use_secret_chats | bool | If set to true, support for secret chats will be enabled. |
  | api_id | number | Application identifier for Telegram API access, which can be obtained at <a href="https://my.telegram.org">https://my.telegram.org</a>. |
  | api_hash | string | Application identifier hash for Telegram API access, which can be obtained at <a href="https://my.telegram.org">https://my.telegram.org</a>. |
  | system_language_code | string | IETF language tag of the user's operating system language. |
  | device_model | string | Model of the device the application is being run on. |
  | system_version | string | Version of the operating system the application is being run on. |
  | application_version | string | Application version. |
  | enable_storage_optimizer | bool | If set to true, old files will automatically be deleted. |
  | ignore_file_names | bool | If set to true, original file names will be ignored. Otherwise, downloaded files will be saved under names as close as possible to the original name. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1tdlib_parameters.html).
  """

  defstruct "@type": "tdlibParameters", use_test_dc: nil, database_directory: nil, files_directory: nil, use_file_database: nil, use_chat_info_database: nil, use_message_database: nil, use_secret_chats: nil, api_id: nil, api_hash: nil, system_language_code: nil, device_model: nil, system_version: nil, application_version: nil, enable_storage_optimizer: nil, ignore_file_names: nil
end
defmodule UserPrivacySettingAllowChatInvites do
  @moduledoc  """
  A privacy setting for managing whether the user can be invited to chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_chat_invites.html).
  """

  defstruct "@type": "userPrivacySettingAllowChatInvites"
end
defmodule InlineKeyboardButtonTypeSwitchInline do
  @moduledoc  """
  A button that forces an inline query to the bot to be inserted in the input field.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Inline query to be sent to the bot. |
  | in_current_chat | bool | True, if the inline query should be sent from the current chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_switch_inline.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeSwitchInline", query: nil, in_current_chat: nil
end
defmodule SecretChat do
  @moduledoc  """
  Represents a secret chat.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Secret chat identifier. |
  | user_id | number | Identifier of the chat partner. |
  | state | SecretChatState | State of the secret chat. |
  | is_outbound | bool | True, if the chat was created by the current user; otherwise false. |
  | ttl | number | Current message Time To Live setting (self-destruct timer) for the chat, in seconds. |
  | key_hash | string | Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 bytes, which must be used to make a 12x12 square image with a color depth of 4. The first 16 bytes should be used to make a central 8x8 square, while the remaining 20 bytes should be used to construct a 2-pixel-wide border around that square. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers. |
  | layer | number | Secret chat layer; determines features supported by the other client. Video notes are supported if the layer >= 66. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat.html).
  """

  defstruct "@type": "secretChat", id: nil, user_id: nil, state: nil, is_outbound: nil, ttl: nil, key_hash: nil, layer: nil
end
defmodule UpdateNewCustomEvent do
  @moduledoc  """
  A new incoming event; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | event | string | A JSON-serialized event. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_custom_event.html).
  """

  defstruct "@type": "updateNewCustomEvent", event: nil
end
defmodule TextEntityTypeItalic do
  @moduledoc  """
  An italic text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_italic.html).
  """

  defstruct "@type": "textEntityTypeItalic"
end
defmodule RichTextFixed do
  @moduledoc  """
  A fixed-width rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_fixed.html).
  """

  defstruct "@type": "richTextFixed", text: nil
end
defmodule SecretChatStateClosed do
  @moduledoc  """
  The secret chat is closed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_closed.html).
  """

  defstruct "@type": "secretChatStateClosed"
end
defmodule CallbackQueryPayloadData do
  @moduledoc  """
  The payload from a general callback button.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | Data that was attached to the callback button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_data.html).
  """

  defstruct "@type": "callbackQueryPayloadData", data: nil
end
defmodule ChatActionCancel do
  @moduledoc  """
  The user has cancelled the previous action.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_cancel.html).
  """

  defstruct "@type": "chatActionCancel"
end
defmodule PageBlockAnchor do
  @moduledoc  """
  An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the anchor. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_anchor.html).
  """

  defstruct "@type": "pageBlockAnchor", name: nil
end
defmodule MessageContactRegistered do
  @moduledoc  """
  A contact has registered with Telegram.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_contact_registered.html).
  """

  defstruct "@type": "messageContactRegistered"
end
defmodule InputMessageForwarded do
  @moduledoc  """
  A forwarded message.

  | Name | Type | Description |
  |------|------| ------------|
  | from_chat_id | string | Identifier for the chat this forwarded message came from. |
  | message_id | string | Identifier of the message to forward. |
  | in_game_share | bool | True, if a game message should be shared within a launched game; applies only to game messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_forwarded.html).
  """

  defstruct "@type": "inputMessageForwarded", from_chat_id: nil, message_id: nil, in_game_share: nil
end
defmodule InputInlineQueryResultLocation do
  @moduledoc  """
  Represents a point on the map.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | location | location | Location result. |
  | live_period | number | Amount of time relative to the message sent time until the location can be updated, in seconds. |
  | title | string | Title of the result. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | number | Thumbnail width, if known. |
  | thumbnail_height | number | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_location.html).
  """

  defstruct "@type": "inputInlineQueryResultLocation", id: nil, location: nil, live_period: nil, title: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule Call do
  @moduledoc  """
  Describes a call.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Call identifier, not persistent. |
  | user_id | number | Peer user identifier. |
  | is_outgoing | bool | True, if the call is outgoing. |
  | state | CallState | Call state. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call.html).
  """

  defstruct "@type": "call", id: nil, user_id: nil, is_outgoing: nil, state: nil
end
defmodule CallDiscardReason do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_discard_reason.html).
  """

  defstruct "@type": "CallDiscardReason"
end
defmodule StorageStatisticsFast do
  @moduledoc  """
  Contains approximate storage usage statistics, excluding files of unknown file type.

  | Name | Type | Description |
  |------|------| ------------|
  | files_size | string | Approximate total size of files. |
  | file_count | number | Approximate number of files. |
  | database_size | string | Size of the database. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_fast.html).
  """

  defstruct "@type": "storageStatisticsFast", files_size: nil, file_count: nil, database_size: nil
end
defmodule KeyboardButtonTypeRequestPhoneNumber do
  @moduledoc  """
  A button that sends the user's phone number when pressed; available only in private chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_phone_number.html).
  """

  defstruct "@type": "keyboardButtonTypeRequestPhoneNumber"
end
defmodule SearchMessagesFilterVoiceNote do
  @moduledoc  """
  Returns only voice note messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_voice_note.html).
  """

  defstruct "@type": "searchMessagesFilterVoiceNote"
end
defmodule RichTextItalic do
  @moduledoc  """
  An italicized rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_italic.html).
  """

  defstruct "@type": "richTextItalic", text: nil
end
defmodule ChatEventMessageUnpinned do
  @moduledoc  """
  A message was unpinned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_unpinned.html).
  """

  defstruct "@type": "chatEventMessageUnpinned"
end
defmodule PageBlockBlockQuote do
  @moduledoc  """
  A block quote.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Quote text. |
  | caption | RichText | Quote caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_block_quote.html).
  """

  defstruct "@type": "pageBlockBlockQuote", text: nil, caption: nil
end
defmodule NotificationSettings do
  @moduledoc  """
  Contains information about notification settings for a chat or several chats.

  | Name | Type | Description |
  |------|------| ------------|
  | mute_for | number | Time left before notifications will be unmuted, in seconds. |
  | sound | string | An audio file name for notification sounds; only applies to iOS applications. |
  | show_preview | bool | True, if message content should be displayed in notifications. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings.html).
  """

  defstruct "@type": "notificationSettings", mute_for: nil, sound: nil, show_preview: nil
end
defmodule InputFile do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_file.html).
  """

  defstruct "@type": "InputFile"
end
defmodule ChatMemberStatusRestricted do
  @moduledoc  """
  The user is under certain restrictions in the chat. Not supported in basic groups and channels.

  | Name | Type | Description |
  |------|------| ------------|
  | is_member | bool | True, if the user is a member of the chat. |
  | restricted_until_date | number | Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever. |
  | can_send_messages | bool | True, if the user can send text messages, contacts, locations, and venues. |
  | can_send_media_messages | bool | True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions. |
  | can_send_other_messages | bool | True, if the user can send animations, games, and stickers and use inline bots. Implies can_send_media_messages permissions. |
  | can_add_web_page_previews | bool | True, if the user may add a web page preview to his messages. Implies can_send_messages permissions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_restricted.html).
  """

  defstruct "@type": "chatMemberStatusRestricted", is_member: nil, restricted_until_date: nil, can_send_messages: nil, can_send_media_messages: nil, can_send_other_messages: nil, can_add_web_page_previews: nil
end
defmodule UpdateTrendingStickerSets do
  @moduledoc  """
  The list of trending sticker sets was updated or some of them were viewed.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_sets | stickerSets | The new list of trending sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_trending_sticker_sets.html).
  """

  defstruct "@type": "updateTrendingStickerSets", sticker_sets: nil
end
defmodule ChatMemberStatusCreator do
  @moduledoc  """
  The user is the creator of a chat and has all the administrator privileges.

  | Name | Type | Description |
  |------|------| ------------|
  | is_member | bool | True, if the user is a member of the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_creator.html).
  """

  defstruct "@type": "chatMemberStatusCreator", is_member: nil
end
defmodule ChatEventInvitesToggled do
  @moduledoc  """
  The anyone_can_invite setting of a supergroup chat was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | anyone_can_invite | bool | New value of anyone_can_invite. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invites_toggled.html).
  """

  defstruct "@type": "chatEventInvitesToggled", anyone_can_invite: nil
end
defmodule PageBlockSlideshow do
  @moduledoc  """
  A slideshow.

  | Name | Type | Description |
  |------|------| ------------|
  | page_blocks | PageBlock[] | Slideshow item contents. |
  | caption | RichText | Block caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_slideshow.html).
  """

  defstruct "@type": "pageBlockSlideshow", page_blocks: nil, caption: nil
end
defmodule ChatActionStartPlayingGame do
  @moduledoc  """
  The user has started to play a game.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_start_playing_game.html).
  """

  defstruct "@type": "chatActionStartPlayingGame"
end
defmodule InputInlineQueryResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_inline_query_result.html).
  """

  defstruct "@type": "InputInlineQueryResult"
end
defmodule Invoice do
  @moduledoc  """
  Product invoice.

  | Name | Type | Description |
  |------|------| ------------|
  | currency | string | ISO 4217 currency code. |
  | price_parts | labeledPricePart[] | A list of objects used to calculate the total price of the product. |
  | is_test | bool | True, if the payment is a test payment. |
  | need_name | bool | True, if the user's name is needed for payment. |
  | need_phone_number | bool | True, if the user's phone number is needed for payment. |
  | need_email_address | bool | True, if the user's email address is needed for payment. |
  | need_shipping_address | bool | True, if the user's shipping address is needed for payment. |
  | send_phone_number_to_provider | bool | True, if the user's phone number will be sent to the provider. |
  | send_email_address_to_provider | bool | True, if the user's email address will be sent to the provider. |
  | is_flexible | bool | True, if the total price depends on the shipping method. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1invoice.html).
  """

  defstruct "@type": "invoice", currency: nil, price_parts: nil, is_test: nil, need_name: nil, need_phone_number: nil, need_email_address: nil, need_shipping_address: nil, send_phone_number_to_provider: nil, send_email_address_to_provider: nil, is_flexible: nil
end
defmodule SearchMessagesFilterVoiceAndVideoNote do
  @moduledoc  """
  Returns only voice and video note messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_voice_and_video_note.html).
  """

  defstruct "@type": "searchMessagesFilterVoiceAndVideoNote"
end
defmodule UpdateMessageContent do
  @moduledoc  """
  The message content has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_id | string | Message identifier. |
  | new_content | MessageContent | New message content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_content.html).
  """

  defstruct "@type": "updateMessageContent", chat_id: nil, message_id: nil, new_content: nil
end
defmodule UpdateConnectionState do
  @moduledoc  """
  The connection state has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | state | ConnectionState | The new connection state. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_connection_state.html).
  """

  defstruct "@type": "updateConnectionState", state: nil
end
defmodule MessageVenue do
  @moduledoc  """
  A message with information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | venue | venue | Message content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_venue.html).
  """

  defstruct "@type": "messageVenue", venue: nil
end
defmodule DraftMessage do
  @moduledoc  """
  Contains information about a message draft.

  | Name | Type | Description |
  |------|------| ------------|
  | reply_to_message_id | string | Identifier of the message to reply to; 0 if none. |
  | input_message_text | InputMessageContent | Content of the message draft; this should always be of type <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1draft_message.html).
  """

  defstruct "@type": "draftMessage", reply_to_message_id: nil, input_message_text: nil
end
defmodule ChatEventMemberPromoted do
  @moduledoc  """
  A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Chat member user identifier. |
  | old_status | ChatMemberStatus | Previous status of the chat member. |
  | new_status | ChatMemberStatus | New status of the chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_promoted.html).
  """

  defstruct "@type": "chatEventMemberPromoted", user_id: nil, old_status: nil, new_status: nil
end
defmodule NetworkStatisticsEntryCall do
  @moduledoc  """
  Contains information about the total amount of data that was used for calls.

  | Name | Type | Description |
  |------|------| ------------|
  | network_type | NetworkType | Type of the network the data was sent through. Call <a class="el" href="classtd_1_1td__api_1_1set_network_type.html">setNetworkType</a> to maintain the actual network type. |
  | sent_bytes | string | Total number of bytes sent. |
  | received_bytes | string | Total number of bytes received. |
  | duration | double | Total call duration, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics_entry_call.html).
  """

  defstruct "@type": "networkStatisticsEntryCall", network_type: nil, sent_bytes: nil, received_bytes: nil, duration: nil
end
defmodule ChatEventMemberRestricted do
  @moduledoc  """
  A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Chat member user identifier. |
  | old_status | ChatMemberStatus | Previous status of the chat member. |
  | new_status | ChatMemberStatus | New status of the chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_restricted.html).
  """

  defstruct "@type": "chatEventMemberRestricted", user_id: nil, old_status: nil, new_status: nil
end
defmodule PageBlockCollage do
  @moduledoc  """
  A collage.

  | Name | Type | Description |
  |------|------| ------------|
  | page_blocks | PageBlock[] | Collage item contents. |
  | caption | RichText | Block caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_collage.html).
  """

  defstruct "@type": "pageBlockCollage", page_blocks: nil, caption: nil
end
defmodule UpdateBasicGroupFullInfo do
  @moduledoc  """
  Some data from basicGroupFullInfo has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | number | Identifier of a basic group. |
  | basic_group_full_info | basicGroupFullInfo | New full information about the group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_basic_group_full_info.html).
  """

  defstruct "@type": "updateBasicGroupFullInfo", basic_group_id: nil, basic_group_full_info: nil
end
defmodule InlineKeyboardButton do
  @moduledoc  """
  Represents a single button in an inline keyboard.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the button. |
  | type | InlineKeyboardButtonType | Type of the button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button.html).
  """

  defstruct "@type": "inlineKeyboardButton", text: nil, type: nil
end
defmodule MessageSupergroupChatCreate do
  @moduledoc  """
  A newly created supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the supergroup or channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_supergroup_chat_create.html).
  """

  defstruct "@type": "messageSupergroupChatCreate", title: nil
end
defmodule MessageCustomServiceAction do
  @moduledoc  """
  A non-standard action has happened in the chat.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Message text to be shown in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_custom_service_action.html).
  """

  defstruct "@type": "messageCustomServiceAction", text: nil
end
defmodule MessageExpiredVideo do
  @moduledoc  """
  An expired video message (self-destructed after TTL has elapsed).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_expired_video.html).
  """

  defstruct "@type": "messageExpiredVideo"
end
defmodule TopChatCategoryUsers do
  @moduledoc  """
  A category containing frequently used private chats with non-bot users.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_users.html).
  """

  defstruct "@type": "topChatCategoryUsers"
end
defmodule InputMessageText do
  @moduledoc  """
  A text message.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text to be sent. |
  | disable_web_page_preview | bool | True, if rich web page previews for URLs in the message text should be disabled. |
  | clear_draft | bool | True, if a chat message draft should be deleted. |
  | entities | textEntity[] | Bold, Italic, Code, Pre, PreCode and TextUrl entities contained in the text. Can't be used with a non-null parse_mode. |
  | parse_mode | TextParseMode | Text parse mode; may be null. Can't be used in combination with enitities. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_text.html).
  """

  defstruct "@type": "inputMessageText", text: nil, disable_web_page_preview: nil, clear_draft: nil, entities: nil, parse_mode: nil
end
defmodule NetworkStatisticsEntry do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_network_statistics_entry.html).
  """

  defstruct "@type": "NetworkStatisticsEntry"
end
defmodule Sticker do
  @moduledoc  """
  Describes a sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | set_id | string | The identifier of the sticker set to which the sticker belongs; 0 if none. |
  | width | number | Sticker width; as defined by the sender. |
  | height | number | Sticker height; as defined by the sender. |
  | emoji | string | Emoji corresponding to the sticker. |
  | is_mask | bool | True, if the sticker is a mask. |
  | mask_position | maskPosition | Position where the mask should be placed; may be null. |
  | thumbnail | photoSize | Sticker thumbnail in WEBP or JPEG format; may be null. |
  | sticker | file | File containing the sticker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker.html).
  """

  defstruct "@type": "sticker", set_id: nil, width: nil, height: nil, emoji: nil, is_mask: nil, mask_position: nil, thumbnail: nil, sticker: nil
end
defmodule UserTypeRegular do
  @moduledoc  """
  A regular user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_regular.html).
  """

  defstruct "@type": "userTypeRegular"
end
defmodule Supergroup do
  @moduledoc  """
  Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Supergroup or channel identifier. |
  | username | string | Username of the supergroup or channel; empty for private supergroups or channels. |
  | date | number | Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member. |
  | status | ChatMemberStatus | Status of the current user in the supergroup or channel. |
  | member_count | number | Member count; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was found through SearchPublicChats. |
  | anyone_can_invite | bool | True, if any member of the supergroup can invite other members. This field has no meaning for channels. |
  | sign_messages | bool | True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels. |
  | is_channel | bool | True, if the supergroup is a channel. |
  | is_verified | bool | True, if the supergroup or channel is verified. |
  | restriction_reason | string | If non-empty, contains the reason why access to this supergroup or channel must be restricted. Format of the string is "{type}: {description}". {type} Contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or "-wp", which describe the platforms on which access should be restricted. (For example, "terms-ios-android". {description} contains a human-readable description of the restriction, which can be shown to the user.) |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup.html).
  """

  defstruct "@type": "supergroup", id: nil, username: nil, date: nil, status: nil, member_count: nil, anyone_can_invite: nil, sign_messages: nil, is_channel: nil, is_verified: nil, restriction_reason: nil
end
defmodule SearchMessagesFilterUnreadMention do
  @moduledoc  """
  Returns only messages with unread mentions of the current user or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query or by the sending user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_unread_mention.html).
  """

  defstruct "@type": "searchMessagesFilterUnreadMention"
end
defmodule InputMessageDocument do
  @moduledoc  """
  A document message (general file).

  | Name | Type | Description |
  |------|------| ------------|
  | document | InputFile | Document to be sent. |
  | thumbnail | inputThumbnail | Document thumbnail, if available. |
  | caption | string | Document caption; 0-200 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_document.html).
  """

  defstruct "@type": "inputMessageDocument", document: nil, thumbnail: nil, caption: nil
end
defmodule MessageChatChangeTitle do
  @moduledoc  """
  An updated chat title.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | New chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_change_title.html).
  """

  defstruct "@type": "messageChatChangeTitle", title: nil
end
defmodule Location do
  @moduledoc  """
  Describes a location on planet Earth.

  | Name | Type | Description |
  |------|------| ------------|
  | latitude | double | Latitude of the location in degrees; as defined by the sender. |
  | longitude | double | Longitude of the location, in degrees; as defined by the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1location.html).
  """

  defstruct "@type": "location", latitude: nil, longitude: nil
end
defmodule MessageBasicGroupChatCreate do
  @moduledoc  """
  A newly created basic group.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the basic group. |
  | member_user_ids | number[] | User identifiers of members in the basic group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_basic_group_chat_create.html).
  """

  defstruct "@type": "messageBasicGroupChatCreate", title: nil, member_user_ids: nil
end
defmodule UpdateNotificationSettings do
  @moduledoc  """
  Notification settings for some chats were updated.

  | Name | Type | Description |
  |------|------| ------------|
  | scope | NotificationSettingsScope | Types of chats for which notification settings were updated. |
  | notification_settings | notificationSettings | The new notification settings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_notification_settings.html).
  """

  defstruct "@type": "updateNotificationSettings", scope: nil, notification_settings: nil
end
defmodule MessageGameScore do
  @moduledoc  """
  A new high score was achieved in a game.

  | Name | Type | Description |
  |------|------| ------------|
  | game_message_id | string | Identifier of the message with the game, can be an identifier of a deleted message. |
  | game_id | string | Identifier of the game, may be different from the games presented in the message with the game. |
  | score | number | New score. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_game_score.html).
  """

  defstruct "@type": "messageGameScore", game_message_id: nil, game_id: nil, score: nil
end
defmodule TextEntityTypePre do
  @moduledoc  """
  Text that must be formatted as if inside a pre HTML tag.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_pre.html).
  """

  defstruct "@type": "textEntityTypePre"
end
defmodule AuthorizationStateClosing do
  @moduledoc  """
  TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_closing.html).
  """

  defstruct "@type": "authorizationStateClosing"
end
defmodule MessageChatUpgradeTo do
  @moduledoc  """
  A basic group was upgraded to a supergroup and was deactivated as the result.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the supergroup to which the basic group was upgraded. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_upgrade_to.html).
  """

  defstruct "@type": "messageChatUpgradeTo", supergroup_id: nil
end
defmodule LabeledPricePart do
  @moduledoc  """
  Portion of the price of a product (e.g., "delivery cost", "tax amount").

  | Name | Type | Description |
  |------|------| ------------|
  | label | string | Label for this portion of the product price. |
  | amount | string | Currency amount in minimal quantity of the currency. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1labeled_price_part.html).
  """

  defstruct "@type": "labeledPricePart", label: nil, amount: nil
end
defmodule UpdateFileGenerationStop do
  @moduledoc  """
  File generation is no longer needed.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | string | Unique identifier for the generation process. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_generation_stop.html).
  """

  defstruct "@type": "updateFileGenerationStop", generation_id: nil
end
defmodule CallStateDiscarded do
  @moduledoc  """
  The call has ended successfully.

  | Name | Type | Description |
  |------|------| ------------|
  | reason | CallDiscardReason | The reason, why the call has ended. |
  | need_rating | bool | True, if the call rating should be sent to the server. |
  | need_debug_information | bool | True, if the call debug information should be sent to the server. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_discarded.html).
  """

  defstruct "@type": "callStateDiscarded", reason: nil, need_rating: nil, need_debug_information: nil
end
defmodule RemoteFile do
  @moduledoc  """
  Represents a remote file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Remote file identifier, may be empty. Can be used across application restarts or even from other devices for the current user. If the ID starts with "<a href="http://"">http://&quot;</a> or "<a href="https://",">https://&quot;,</a> it represents the HTTP URL of the file. TDLib is currently unable to download files if only their URL is known. If <a class="el" href="classtd_1_1td__api_1_1download_file.html">downloadFile</a> is called on such a file or if it is sent to a secret chat, TDLib starts a file generation process by sending <a class="el" href="classtd_1_1td__api_1_1update_file_generation_start.html">updateFileGenerationStart</a> to the client with the HTTP URL in the original_path and "#url#" as the conversion string. Clients should generate the file by downloading it to the specified location. |
  | is_uploading_active | bool | True, if the file is currently being uploaded (or a remote copy is being generated by some other means). |
  | is_uploading_completed | bool | True, if a remote copy is fully available. |
  | uploaded_size | number | Size of the remote available part of the file; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remote_file.html).
  """

  defstruct "@type": "remoteFile", id: nil, is_uploading_active: nil, is_uploading_completed: nil, uploaded_size: nil
end
defmodule SupergroupMembersFilterBanned do
  @moduledoc  """
  Returns users banned from the supergroup or channel; can be used only by administrators.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_banned.html).
  """

  defstruct "@type": "supergroupMembersFilterBanned", query: nil
end
defmodule Stickers do
  @moduledoc  """
  Represents a list of stickers.

  | Name | Type | Description |
  |------|------| ------------|
  | stickers | sticker[] | List of stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1stickers.html).
  """

  defstruct "@type": "stickers", stickers: nil
end
defmodule AuthenticationCodeTypeCall do
  @moduledoc  """
  An authentication code is delivered via a phone call to the specified phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | length | number | Length of the code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_call.html).
  """

  defstruct "@type": "authenticationCodeTypeCall", length: nil
end
defmodule Wallpaper do
  @moduledoc  """
  Contains information about a wallpaper.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Unique persistent wallpaper identifier. |
  | sizes | photoSize[] | Available variants of the wallpaper in different sizes. These photos can only be downloaded; they can't be sent in a message. |
  | color | number | Main color of the wallpaper in RGB24 format; should be treated as background color if no photos are specified. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1wallpaper.html).
  """

  defstruct "@type": "wallpaper", id: nil, sizes: nil, color: nil
end
defmodule ConnectionStateConnecting do
  @moduledoc  """
  Currently establishing a connection to the Telegram servers.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_connecting.html).
  """

  defstruct "@type": "connectionStateConnecting"
end
defmodule OptionValue do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_option_value.html).
  """

  defstruct "@type": "OptionValue"
end
defmodule MessageInvoice do
  @moduledoc  """
  A message with an invoice from a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Product title. |
  | description | string | Product description. |
  | photo | photo | Product photo; may be null. |
  | currency | string | Currency for the product price. |
  | total_amount | string | Product total price in the minimal quantity of the currency. |
  | start_parameter | string | Unique invoice bot start_parameter. To share an invoice use the URL <a href="https://t.me/{bot_username}?start={start_parameter}">https://t.me/{bot_username}?start={start_parameter}</a>. |
  | is_test | bool | True, if the invoice is a test invoice. |
  | need_shipping_address | bool | True, if the shipping address should be specified. |
  | receipt_message_id | string | The identifier of the message with the receipt, after the product has been purchased. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_invoice.html).
  """

  defstruct "@type": "messageInvoice", title: nil, description: nil, photo: nil, currency: nil, total_amount: nil, start_parameter: nil, is_test: nil, need_shipping_address: nil, receipt_message_id: nil
end
defmodule MaskPosition do
  @moduledoc  """
  Position on a photo where a mask should be placed.

  | Name | Type | Description |
  |------|------| ------------|
  | point | MaskPoint | Part of the face, relative to which the mask should be placed. |
  | x_shift | double | Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position.) |
  | y_shift | double | Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position.) |
  | scale | double | Mask scaling coefficient. (For example, 2.0 means a doubled size.) |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_position.html).
  """

  defstruct "@type": "maskPosition", point: nil, x_shift: nil, y_shift: nil, scale: nil
end
defmodule MessageChatChangePhoto do
  @moduledoc  """
  An updated chat photo.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | photo | New chat photo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_change_photo.html).
  """

  defstruct "@type": "messageChatChangePhoto", photo: nil
end
defmodule StorageStatisticsByChat do
  @moduledoc  """
  Contains the storage usage statistics for a specific chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier; 0 if none. |
  | size | string | Total size of the files in the chat. |
  | count | number | Total number of files in the chat. |
  | by_file_type | storageStatisticsByFileType[] | Statistics split by file types. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_by_chat.html).
  """

  defstruct "@type": "storageStatisticsByChat", chat_id: nil, size: nil, count: nil, by_file_type: nil
end
defmodule TextEntityTypeCode do
  @moduledoc  """
  Text that must be formatted as if inside a code HTML tag.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_code.html).
  """

  defstruct "@type": "textEntityTypeCode"
end
defmodule SearchMessagesFilterAnimation do
  @moduledoc  """
  Returns only animation messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_animation.html).
  """

  defstruct "@type": "searchMessagesFilterAnimation"
end
defmodule InputCredentials do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_credentials.html).
  """

  defstruct "@type": "InputCredentials"
end
defmodule TemporaryPasswordState do
  @moduledoc  """
  Returns information about the availability of a temporary password, which can be used for payments.

  | Name | Type | Description |
  |------|------| ------------|
  | has_password | bool | True, if a temporary password is available. |
  | valid_for | number | Time left before the temporary password expires, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1temporary_password_state.html).
  """

  defstruct "@type": "temporaryPasswordState", has_password: nil, valid_for: nil
end
defmodule Venue do
  @moduledoc  """
  Describes a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Venue location; as defined by the sender. |
  | title | string | Venue name; as defined by the sender. |
  | address | string | Venue address; as defined by the sender. |
  | provider | string | Provider of the venue database; as defined by the sender. Currently only "foursquare" needs to be supported. |
  | id | string | Identifier of the venue in the provider database; as defined by the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1venue.html).
  """

  defstruct "@type": "venue", location: nil, title: nil, address: nil, provider: nil, id: nil
end
defmodule TMeUrlTypeUser do
  @moduledoc  """
  A URL linking to a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Identifier of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_user.html).
  """

  defstruct "@type": "tMeUrlTypeUser", user_id: nil
end
defmodule ChatAction do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_action.html).
  """

  defstruct "@type": "ChatAction"
end
defmodule SecretChatState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_secret_chat_state.html).
  """

  defstruct "@type": "SecretChatState"
end
defmodule AuthorizationStateClosed do
  @moduledoc  """
  TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to with error code 500. To continue working, one should create a new instance of the TDLib client.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_closed.html).
  """

  defstruct "@type": "authorizationStateClosed"
end
defmodule UserPrivacySettingRuleRestrictUsers do
  @moduledoc  """
  A rule to restrict all specified users from doing something.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | number[] | The user identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_users.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictUsers", user_ids: nil
end
defmodule InputInlineQueryResultVenue do
  @moduledoc  """
  Represents information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | venue | venue | Venue result. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | number | Thumbnail width, if known. |
  | thumbnail_height | number | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_venue.html).
  """

  defstruct "@type": "inputInlineQueryResultVenue", id: nil, venue: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule SupergroupMembersFilter do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_supergroup_members_filter.html).
  """

  defstruct "@type": "SupergroupMembersFilter"
end
defmodule SearchMessagesFilterPhoto do
  @moduledoc  """
  Returns only photo messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_photo.html).
  """

  defstruct "@type": "searchMessagesFilterPhoto"
end
defmodule TMeUrlType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_t_me_url_type.html).
  """

  defstruct "@type": "TMeUrlType"
end
defmodule WebPageInstantView do
  @moduledoc  """
  Describes an instant view page for a web page.

  | Name | Type | Description |
  |------|------| ------------|
  | page_blocks | PageBlock[] | Content of the web page. |
  | is_full | bool | True, if the instant view contains the full page. A network request might be needed to get the full web page instant view. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_page_instant_view.html).
  """

  defstruct "@type": "webPageInstantView", page_blocks: nil, is_full: nil
end
defmodule Animations do
  @moduledoc  """
  Represents a list of animations.

  | Name | Type | Description |
  |------|------| ------------|
  | animations | animation[] | List of animations. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animations.html).
  """

  defstruct "@type": "animations", animations: nil
end
defmodule InputMessageSticker do
  @moduledoc  """
  A sticker message.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker to be sent. |
  | thumbnail | inputThumbnail | Sticker thumbnail, if available. |
  | width | number | Sticker width. |
  | height | number | Sticker height. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_sticker.html).
  """

  defstruct "@type": "inputMessageSticker", sticker: nil, thumbnail: nil, width: nil, height: nil
end
defmodule TextEntityTypeBold do
  @moduledoc  """
  A bold text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bold.html).
  """

  defstruct "@type": "textEntityTypeBold"
end
defmodule PaymentResult do
  @moduledoc  """
  Contains the result of a payment request.

  | Name | Type | Description |
  |------|------| ------------|
  | success | bool | True, if the payment request was successful; otherwise the verification_url will be not empty. |
  | verification_url | string | URL for additional payment credentials verification. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_result.html).
  """

  defstruct "@type": "paymentResult", success: nil, verification_url: nil
end
defmodule InputCredentialsAndroidPay do
  @moduledoc  """
  Applies if a user enters new credentials using Android Pay.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | JSON-encoded data with the credential identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_android_pay.html).
  """

  defstruct "@type": "inputCredentialsAndroidPay", data: nil
end
defmodule Message do
  @moduledoc  """
  Describes a message.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique message identifier. |
  | sender_user_id | number | Identifier of the user who sent the message; 0 if unknown. It is unknown for channel posts. |
  | chat_id | string | Chat identifier. |
  | sending_state | MessageSendingState | Information about the sending state of the message; may be null. |
  | is_outgoing | bool | True, if the message is outgoing. |
  | can_be_edited | bool | True, if the message can be edited. |
  | can_be_forwarded | bool | True, if the message can be forwarded. |
  | can_be_deleted_only_for_self | bool | True, if the message can be deleted only for the current user while other users will continue to see it. |
  | can_be_deleted_for_all_users | bool | True, if the message can be deleted for all users. |
  | is_channel_post | bool | True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts. |
  | contains_unread_mention | bool | True, if the message contains an unread mention for the current user. |
  | date | number | Point in time (Unix timestamp) when the message was sent. |
  | edit_date | number | Point in time (Unix timestamp) when the message was last edited. |
  | forward_info | MessageForwardInfo | Information about the initial message sender; may be null. |
  | reply_to_message_id | string | If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message. |
  | ttl | number | For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send <a class="el" href="classtd_1_1td__api_1_1update_delete_messages.html">updateDeleteMessages</a> or <a class="el" href="classtd_1_1td__api_1_1update_message_content.html">updateMessageContent</a> once the TTL expires. |
  | ttl_expires_in | double | Time left before the message expires, in seconds. |
  | via_bot_user_id | number | If non-zero, the user identifier of the bot through which this message was sent. |
  | author_signature | string | For channel posts, optional author signature. |
  | views | number | Number of times this message was viewed. |
  | media_album_id | string | Unique identifier of an album this message belongs to. Only photos and videos can be grouped together in albums. |
  | content | MessageContent | Content of the message. |
  | reply_markup | ReplyMarkup | Reply markup for the message; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message.html).
  """

  defstruct "@type": "message", id: nil, sender_user_id: nil, chat_id: nil, sending_state: nil, is_outgoing: nil, can_be_edited: nil, can_be_forwarded: nil, can_be_deleted_only_for_self: nil, can_be_deleted_for_all_users: nil, is_channel_post: nil, contains_unread_mention: nil, date: nil, edit_date: nil, forward_info: nil, reply_to_message_id: nil, ttl: nil, ttl_expires_in: nil, via_bot_user_id: nil, author_signature: nil, views: nil, media_album_id: nil, content: nil, reply_markup: nil
end
defmodule CustomRequestResult do
  @moduledoc  """
  Contains the result of a custom request.

  | Name | Type | Description |
  |------|------| ------------|
  | result | string | A JSON-serialized result. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1custom_request_result.html).
  """

  defstruct "@type": "customRequestResult", result: nil
end
defmodule MessageVideoNote do
  @moduledoc  """
  A video note message.

  | Name | Type | Description |
  |------|------| ------------|
  | video_note | videoNote | Message content. |
  | is_viewed | bool | True, if at least one of the recipients has viewed the video note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_note.html).
  """

  defstruct "@type": "messageVideoNote", video_note: nil, is_viewed: nil
end
defmodule InputMessageVenue do
  @moduledoc  """
  A message with information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | venue | venue | Venue to send. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_venue.html).
  """

  defstruct "@type": "inputMessageVenue", venue: nil
end
defmodule UserPrivacySettingRuleRestrictContacts do
  @moduledoc  """
  A rule to restrict all contacts of a user from doing something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_contacts.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictContacts"
end
defmodule VideoNote do
  @moduledoc  """
  Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | number | Duration of the video, in seconds; as defined by the sender. |
  | length | number | Video width and height; as defined by the sender. |
  | thumbnail | photoSize | Video thumbnail; as defined by the sender; may be null. |
  | video | file | File containing the video. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video_note.html).
  """

  defstruct "@type": "videoNote", duration: nil, length: nil, thumbnail: nil, video: nil
end
defmodule KeyboardButtonTypeRequestLocation do
  @moduledoc  """
  A button that sends the user's location when pressed; available only in private chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_location.html).
  """

  defstruct "@type": "keyboardButtonTypeRequestLocation"
end
defmodule ChatReportReasonViolence do
  @moduledoc  """
  The chat promotes violence.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_violence.html).
  """

  defstruct "@type": "chatReportReasonViolence"
end
defmodule InputInlineQueryResultDocument do
  @moduledoc  """
  Represents a link to a file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the resulting file. |
  | description | string | Short description of the result, if known. |
  | document_url | string | URL of the file. |
  | mime_type | string | MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed. |
  | thumbnail_url | string | The URL of the file thumbnail, if it exists. |
  | thumbnail_width | number | Width of the thumbnail. |
  | thumbnail_height | number | Height of the thumbnail. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageDocument, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_document.html).
  """

  defstruct "@type": "inputInlineQueryResultDocument", id: nil, title: nil, description: nil, document_url: nil, mime_type: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule Contact do
  @moduledoc  """
  Describes a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | Phone number of the user. |
  | first_name | string | First name of the user; 1-255 characters in length. |
  | last_name | string | Last name of the user. |
  | user_id | number | Identifier of the user, if known; otherwise 0. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1contact.html).
  """

  defstruct "@type": "contact", phone_number: nil, first_name: nil, last_name: nil, user_id: nil
end
defmodule MaskPointForehead do
  @moduledoc  """
  A mask should be placed relatively to the forehead.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_forehead.html).
  """

  defstruct "@type": "maskPointForehead"
end
defmodule DeviceTokenSimplePush do
  @moduledoc  """
  A token for Simple Push API.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token, may be empty to de-register a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_simple_push.html).
  """

  defstruct "@type": "deviceTokenSimplePush", token: nil
end
defmodule LinkState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_link_state.html).
  """

  defstruct "@type": "LinkState"
end
defmodule SearchMessagesFilterChatPhoto do
  @moduledoc  """
  Returns only messages containing chat photos.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_chat_photo.html).
  """

  defstruct "@type": "searchMessagesFilterChatPhoto"
end
defmodule MessageSendingState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_sending_state.html).
  """

  defstruct "@type": "MessageSendingState"
end
defmodule ConnectionStateUpdating do
  @moduledoc  """
  Downloading data received while the client was offline.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_updating.html).
  """

  defstruct "@type": "connectionStateUpdating"
end
defmodule MaskPointChin do
  @moduledoc  """
  A mask should be placed relatively to the chin.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_chin.html).
  """

  defstruct "@type": "maskPointChin"
end
defmodule ChatInviteLinkInfo do
  @moduledoc  """
  Contains information about a chat invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier of the invite link; 0 if the user is not a member of this chat. |
  | type | ChatType | Contains information about the type of the chat. |
  | title | string | Title of the chat. |
  | photo | chatPhoto | Chat photo; may be null. |
  | member_count | number | Number of members. |
  | member_user_ids | number[] | User identifiers of some chat members that may be known to the current user. |
  | is_public | bool | True, if the chat is a public supergroup or channel with a username. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_info.html).
  """

  defstruct "@type": "chatInviteLinkInfo", chat_id: nil, type: nil, title: nil, photo: nil, member_count: nil, member_user_ids: nil, is_public: nil
end
defmodule InlineQueryResultVenue do
  @moduledoc  """
  Represents information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | venue | venue | Venue result. |
  | thumbnail | photoSize | Result thumbnail; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_venue.html).
  """

  defstruct "@type": "inlineQueryResultVenue", id: nil, venue: nil, thumbnail: nil
end
defmodule RichTextUnderline do
  @moduledoc  """
  An underlined rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_underline.html).
  """

  defstruct "@type": "richTextUnderline", text: nil
end
defmodule ChatEventIsAllHistoryAvailableToggled do
  @moduledoc  """
  The is_all_history_available setting of a supergroup was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | is_all_history_available | bool | New value of is_all_history_available. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_is_all_history_available_toggled.html).
  """

  defstruct "@type": "chatEventIsAllHistoryAvailableToggled", is_all_history_available: nil
end
defmodule InputInlineQueryResultPhoto do
  @moduledoc  """
  Represents link to a JPEG image.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the result, if known. |
  | description | string | A short description of the result, if known. |
  | thumbnail_url | string | URL of the photo thumbnail, if it exists. |
  | photo_url | string | The URL of the JPEG photo (photo size must not exceed 5MB). |
  | photo_width | number | Width of the photo. |
  | photo_height | number | Height of the photo. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessagePhoto, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_photo.html).
  """

  defstruct "@type": "inputInlineQueryResultPhoto", id: nil, title: nil, description: nil, thumbnail_url: nil, photo_url: nil, photo_width: nil, photo_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule VoiceNote do
  @moduledoc  """
  Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | number | Duration of the voice note, in seconds; as defined by the sender. |
  | waveform | string | A waveform representation of the voice note in 5-bit format. |
  | mime_type | string | MIME type of the file; as defined by the sender. |
  | voice | file | File containing the voice note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1voice_note.html).
  """

  defstruct "@type": "voiceNote", duration: nil, waveform: nil, mime_type: nil, voice: nil
end
defmodule OptionValueEmpty do
  @moduledoc  """
  An unknown option or an option which has a default value.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_empty.html).
  """

  defstruct "@type": "optionValueEmpty"
end
defmodule UserStatusLastWeek do
  @moduledoc  """
  The user is offline, but was online last week.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_last_week.html).
  """

  defstruct "@type": "userStatusLastWeek"
end
defmodule SearchMessagesFilterMissedCall do
  @moduledoc  """
  Returns only incoming call messages with missed/declined discard reasons.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_missed_call.html).
  """

  defstruct "@type": "searchMessagesFilterMissedCall"
end
defmodule CallId do
  @moduledoc  """
  Contains the call identifier.

  | Name | Type | Description |
  |------|------| ------------|
  | id | number | Call identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_id.html).
  """

  defstruct "@type": "callId", id: nil
end
defmodule MessageExpiredPhoto do
  @moduledoc  """
  An expired photo message (self-destructed after TTL has elapsed).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_expired_photo.html).
  """

  defstruct "@type": "messageExpiredPhoto"
end
defmodule SecretChatStateReady do
  @moduledoc  """
  The secret chat is ready to use.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_ready.html).
  """

  defstruct "@type": "secretChatStateReady"
end
defmodule ChatActionRecordingVideoNote do
  @moduledoc  """
  The user is recording a video note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_video_note.html).
  """

  defstruct "@type": "chatActionRecordingVideoNote"
end
defmodule UserPrivacySettingRules do
  @moduledoc  """
  A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed.

  | Name | Type | Description |
  |------|------| ------------|
  | rules | UserPrivacySettingRule[] | A list of rules. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rules.html).
  """

  defstruct "@type": "userPrivacySettingRules", rules: nil
end
defmodule InputMessageLocation do
  @moduledoc  """
  A message with a location.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Location to be sent. |
  | live_period | number | Period for which the location can be updated, in seconds; should bebetween 60 and 86400 for a live location and 0 otherwise. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_location.html).
  """

  defstruct "@type": "inputMessageLocation", location: nil, live_period: nil
end
defmodule ChatMemberStatusLeft do
  @moduledoc  """
  The user is not a chat member.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_left.html).
  """

  defstruct "@type": "chatMemberStatusLeft"
end
defmodule InputInlineQueryResultContact do
  @moduledoc  """
  Represents a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | contact | contact | User contact. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | number | Thumbnail width, if known. |
  | thumbnail_height | number | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_contact.html).
  """

  defstruct "@type": "inputInlineQueryResultContact", id: nil, contact: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule ChatActionRecordingVoiceNote do
  @moduledoc  """
  The user is recording a voice note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_voice_note.html).
  """

  defstruct "@type": "chatActionRecordingVoiceNote"
end
defmodule PageBlockEmbedded do
  @moduledoc  """
  An embedded web page.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Web page URL, if available. |
  | html | string | HTML-markup of the embedded page. |
  | poster_photo | photo | Poster photo, if available; may be null. |
  | width | number | Block width. |
  | height | number | Block height. |
  | caption | RichText | Block caption. |
  | is_full_width | bool | True, if the block should be full width. |
  | allow_scrolling | bool | True, if scrolling should be allowed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_embedded.html).
  """

  defstruct "@type": "pageBlockEmbedded", url: nil, html: nil, poster_photo: nil, width: nil, height: nil, caption: nil, is_full_width: nil, allow_scrolling: nil
end
defmodule CallDiscardReasonEmpty do
  @moduledoc  """
  The call wasn't discarded, or the reason is unknown.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_empty.html).
  """

  defstruct "@type": "callDiscardReasonEmpty"
end
defmodule StorageStatistics do
  @moduledoc  """
  Contains the exact storage usage statistics split by chats and file type.

  | Name | Type | Description |
  |------|------| ------------|
  | size | string | Total size of files. |
  | count | number | Total number of files. |
  | by_chat | storageStatisticsByChat[] | Statistics split by chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics.html).
  """

  defstruct "@type": "storageStatistics", size: nil, count: nil, by_chat: nil
end
defmodule ShippingOption do
  @moduledoc  """
  One shipping option.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Shipping option identifier. |
  | title | string | Option title. |
  | price_parts | labeledPricePart[] | A list of objects used to calculate the total shipping costs. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1shipping_option.html).
  """

  defstruct "@type": "shippingOption", id: nil, title: nil, price_parts: nil
end
defmodule Chat do
  @moduledoc  """
  A chat. (Can be a private chat, basic group, supergroup, or secret chat.)

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Chat unique identifier. |
  | type | ChatType | Type of the chat. |
  | title | string | Chat title. |
  | photo | chatPhoto | Chat photo; may be null. |
  | last_message | message | Last message in the chat; may be null. |
  | order | string | Descending parameter by which chats are sorted in the main chat list. If the order number of two chats is the same, they must be sorted in descending order by ID. If 0, the position of the chat in the list is undetermined. |
  | is_pinned | bool | True, if the chat is pinned. |
  | unread_count | number | Number of unread messages in the chat. |
  | last_read_inbox_message_id | string | Identifier of the last read incoming message. |
  | last_read_outbox_message_id | string | Identifier of the last read outgoing message. |
  | unread_mention_count | number | Number of unread messages with a mention/reply in the chat. |
  | notification_settings | notificationSettings | Notification settings for this chat. |
  | reply_markup_message_id | string | Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat. |
  | draft_message | draftMessage | A draft of a message in the chat; may be null. parse_mode in input_message_text will always be null. |
  | client_data | string | Contains client-specific data associated with the chat. (For example, the chat position or local chat notification settings can be stored here.) Persistent if a message database is used. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat.html).
  """

  defstruct "@type": "chat", id: nil, type: nil, title: nil, photo: nil, last_message: nil, order: nil, is_pinned: nil, unread_count: nil, last_read_inbox_message_id: nil, last_read_outbox_message_id: nil, unread_mention_count: nil, notification_settings: nil, reply_markup_message_id: nil, draft_message: nil, client_data: nil
end
defmodule SearchMessagesFilterEmpty do
  @moduledoc  """
  Returns all found messages, no filter is applied.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_empty.html).
  """

  defstruct "@type": "searchMessagesFilterEmpty"
end
defmodule UpdateUser do
  @moduledoc  """
  Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the client as long as the library has information on the user.

  | Name | Type | Description |
  |------|------| ------------|
  | user | user | New data about the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user.html).
  """

  defstruct "@type": "updateUser", user: nil
end
defmodule InlineQueryResultGame do
  @moduledoc  """
  Represents information about a game.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | game | game | Game result. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_game.html).
  """

  defstruct "@type": "inlineQueryResultGame", id: nil, game: nil
end
defmodule PageBlockAuthorDate do
  @moduledoc  """
  The author and publishing date of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | author | RichText | Author. |
  | publish_date | number | Point in time (Unix timestamp) when the article was published; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_author_date.html).
  """

  defstruct "@type": "pageBlockAuthorDate", author: nil, publish_date: nil
end
defmodule AuthorizationStateReady do
  @moduledoc  """
  The user has been successfully authorized. TDLib is now ready to answer queries.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_ready.html).
  """

  defstruct "@type": "authorizationStateReady"
end
defmodule PageBlockVideo do
  @moduledoc  """
  A video.

  | Name | Type | Description |
  |------|------| ------------|
  | video | video | Video file; may be null. |
  | caption | RichText | Video caption. |
  | need_autoplay | bool | True, if the video should be played automatically. |
  | is_looped | bool | True, if the video should be looped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_video.html).
  """

  defstruct "@type": "pageBlockVideo", video: nil, caption: nil, need_autoplay: nil, is_looped: nil
end
defmodule UpdateFileGenerationStart do
  @moduledoc  """
  The file generation process needs to be started by the client.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | string | Unique identifier for the generation process. |
  | original_path | string | The path to a file from which a new file is generated, may be empty. |
  | destination_path | string | The path to a file that should be created and where the new file should be generated. |
  | conversion | string | String specifying the conversion applied to the original file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_generation_start.html).
  """

  defstruct "@type": "updateFileGenerationStart", generation_id: nil, original_path: nil, destination_path: nil, conversion: nil
end
defmodule ChatEvent do
  @moduledoc  """
  Represents a chat event.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Chat event identifier. |
  | date | number | Point in time (Unix timestamp) when the event happened. |
  | user_id | number | Identifier of the user who performed the action that triggered the event. |
  | action | ChatEventAction | Action performed by the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event.html).
  """

  defstruct "@type": "chatEvent", id: nil, date: nil, user_id: nil, action: nil
end
defmodule ProxyEmpty do
  @moduledoc  """
  An empty proxy server.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_empty.html).
  """

  defstruct "@type": "proxyEmpty"
end
defmodule UserStatus do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_status.html).
  """

  defstruct "@type": "UserStatus"
end
defmodule ProfilePhoto do
  @moduledoc  """
  Describes a user profile photo.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of <a class="el" href="classtd_1_1td__api_1_1user_profile_photos.html">userProfilePhotos</a>. |
  | small | file | A small (160x160) user profile photo. |
  | big | file | A big (640x640) user profile photo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1profile_photo.html).
  """

  defstruct "@type": "profilePhoto", id: nil, small: nil, big: nil
end
defmodule UserPrivacySettingRuleAllowContacts do
  @moduledoc  """
  A rule to allow all of a user's contacts to do something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_contacts.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowContacts"
end
defmodule RichTexts do
  @moduledoc  """
  A concatenation of rich texts.

  | Name | Type | Description |
  |------|------| ------------|
  | texts | RichText[] | Texts. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_texts.html).
  """

  defstruct "@type": "richTexts", texts: nil
end
defmodule SecretChatStatePending do
  @moduledoc  """
  The secret chat is not yet created; waiting for the other user to get online.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_pending.html).
  """

  defstruct "@type": "secretChatStatePending"
end
defmodule LinkStateIsContact do
  @moduledoc  """
  The phone number of user A has been saved to the contacts list of user B.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1link_state_is_contact.html).
  """

  defstruct "@type": "linkStateIsContact"
end
defmodule InputMessageAudio do
  @moduledoc  """
  An audio message.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | InputFile | Audio file to be sent. |
  | album_cover_thumbnail | inputThumbnail | Thumbnail of the cover for the album, if available. |
  | duration | number | Duration of the audio, in seconds; may be replaced by the server. |
  | title | string | Title of the audio; 0-64 characters; may be replaced by the server. |
  | performer | string | Performer of the audio; 0-64 characters, may be replaced by the server. |
  | caption | string | Audio caption; 0-200 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_audio.html).
  """

  defstruct "@type": "inputMessageAudio", audio: nil, album_cover_thumbnail: nil, duration: nil, title: nil, performer: nil, caption: nil
end
defmodule MessageDocument do
  @moduledoc  """
  A document message (general file).

  | Name | Type | Description |
  |------|------| ------------|
  | document | document | Message content. |
  | caption | string | Document caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_document.html).
  """

  defstruct "@type": "messageDocument", document: nil, caption: nil
end
defmodule ChatReportReason do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_report_reason.html).
  """

  defstruct "@type": "ChatReportReason"
end
defmodule ChatMembers do
  @moduledoc  """
  Contains a list of chat members.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | number | Approximate total count of chat members found. |
  | members | chatMember[] | A list of chat members. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members.html).
  """

  defstruct "@type": "chatMembers", total_count: nil, members: nil
end
defmodule RichTextEmailAddress do
  @moduledoc  """
  A rich text email link.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |
  | email_address | string | Email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_email_address.html).
  """

  defstruct "@type": "richTextEmailAddress", text: nil, email_address: nil
end
defmodule UserPrivacySettingShowStatus do
  @moduledoc  """
  A privacy setting for managing whether the user's online status is visible.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_status.html).
  """

  defstruct "@type": "userPrivacySettingShowStatus"
end
defmodule CallProtocol do
  @moduledoc  """
  Specifies the supported call protocols.

  | Name | Type | Description |
  |------|------| ------------|
  | udp_p2p | bool | True, if UDP peer-to-peer connections are supported. |
  | udp_reflector | bool | True, if connection through UDP reflectors is supported. |
  | min_layer | number | Minimum supported API layer; use 65. |
  | max_layer | number | Maximum supported API layer; use 65. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_protocol.html).
  """

  defstruct "@type": "callProtocol", udp_p2p: nil, udp_reflector: nil, min_layer: nil, max_layer: nil
end
defmodule GameHighScore do
  @moduledoc  """
  Contains one row of the game high score table.

  | Name | Type | Description |
  |------|------| ------------|
  | position | number | Position in the high score table. |
  | user_id | number | User identifier. |
  | score | number | User score. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game_high_score.html).
  """

  defstruct "@type": "gameHighScore", position: nil, user_id: nil, score: nil
end
defmodule UserPrivacySettingRuleAllowUsers do
  @moduledoc  """
  A rule to allow certain specified users to do something.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | number[] | The user identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_users.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowUsers", user_ids: nil
end
defmodule ChatEvents do
  @moduledoc  """
  Contains a list of chat events.

  | Name | Type | Description |
  |------|------| ------------|
  | events | chatEvent[] | List of events. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_events.html).
  """

  defstruct "@type": "chatEvents", events: nil
end
defmodule Chats do
  @moduledoc  """
  Represents a list of chats.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_ids | string[] | List of chat identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chats.html).
  """

  defstruct "@type": "chats", chat_ids: nil
end
defmodule MessageSticker do
  @moduledoc  """
  A sticker message.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | sticker | Message content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sticker.html).
  """

  defstruct "@type": "messageSticker", sticker: nil
end
defmodule PageBlock do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block.html).
  """

  defstruct "@type": "PageBlock"
end
defmodule ChatActionChoosingContact do
  @moduledoc  """
  The user is picking a contact to send.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_contact.html).
  """

  defstruct "@type": "chatActionChoosingContact"
end
defmodule TextEntityTypeHashtag do
  @moduledoc  """
  A hashtag text, beginning with "#".


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_hashtag.html).
  """

  defstruct "@type": "textEntityTypeHashtag"
end
defmodule TextParseModeHTML do
  @moduledoc  """
  The text should be parsed in HTML-style.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_parse_mode_h_t_m_l.html).
  """

  defstruct "@type": "textParseModeHTML"
end
defmodule FileType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_file_type.html).
  """

  defstruct "@type": "FileType"
end
defmodule UpdateChatPhoto do
  @moduledoc  """
  A chat photo was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | photo | chatPhoto | The new chat photo; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_photo.html).
  """

  defstruct "@type": "updateChatPhoto", chat_id: nil, photo: nil
end
defmodule ChatActionUploadingDocument do
  @moduledoc  """
  The user is uploading a document.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | number | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_document.html).
  """

  defstruct "@type": "chatActionUploadingDocument", progress: nil
end
defmodule SearchMessagesFilterPhotoAndVideo do
  @moduledoc  """
  Returns only photo and video messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_photo_and_video.html).
  """

  defstruct "@type": "searchMessagesFilterPhotoAndVideo"
end
defmodule InlineQueryResultContact do
  @moduledoc  """
  Represents a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | contact | contact | A user contact. |
  | thumbnail | photoSize | Result thumbnail; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_contact.html).
  """

  defstruct "@type": "inlineQueryResultContact", id: nil, contact: nil, thumbnail: nil
end
defmodule MessageChatJoinByLink do
  @moduledoc  """
  A new member joined the chat by invite link.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_join_by_link.html).
  """

  defstruct "@type": "messageChatJoinByLink"
end
defmodule PasswordState do
  @moduledoc  """
  Represents the current state of 2-step verification.

  | Name | Type | Description |
  |------|------| ------------|
  | has_password | bool | True if a 2-step verification password has been set up. |
  | password_hint | string | Hint for the password; can be empty. |
  | has_recovery_email_address | bool | True if a recovery email has been set up. |
  | unconfirmed_recovery_email_address_pattern | string | Pattern of the email address to which a confirmation email was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1password_state.html).
  """

  defstruct "@type": "passwordState", has_password: nil, password_hint: nil, has_recovery_email_address: nil, unconfirmed_recovery_email_address_pattern: nil
end
defmodule TextParseModeMarkdown do
  @moduledoc  """
  The text should be parsed in markdown-style.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_parse_mode_markdown.html).
  """

  defstruct "@type": "textParseModeMarkdown"
end
defmodule Audio do
  @moduledoc  """
  Describes an audio file. Audio is usually in MP3 format.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | number | Duration of the audio, in seconds; as defined by the sender. |
  | title | string | Title of the audio; as defined by the sender. |
  | performer | string | Performer of the audio; as defined by the sender. |
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | The MIME type of the file; as defined by the sender. |
  | album_cover_thumbnail | photoSize | The thumbnail of the album cover; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null. |
  | audio | file | File containing the audio. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1audio.html).
  """

  defstruct "@type": "audio", duration: nil, title: nil, performer: nil, file_name: nil, mime_type: nil, album_cover_thumbnail: nil, audio: nil
end
defmodule ChatTypeBasicGroup do
  @moduledoc  """
  A basic group (i.e., a chat with 0-200 other users).

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | number | Basic group identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_basic_group.html).
  """

  defstruct "@type": "chatTypeBasicGroup", basic_group_id: nil
end
defmodule CallbackQueryAnswer do
  @moduledoc  """
  Contains a bot's answer to a callback query.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the answer. |
  | show_alert | bool | True, if an alert should be shown to the user instead of a toast notification. |
  | url | string | URL to be opened. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_answer.html).
  """

  defstruct "@type": "callbackQueryAnswer", text: nil, show_alert: nil, url: nil
end
defmodule UserStatusRecently do
  @moduledoc  """
  The user was online recently.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_recently.html).
  """

  defstruct "@type": "userStatusRecently"
end
defmodule FileTypeUnknown do
  @moduledoc  """
  The file type is not yet known.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_unknown.html).
  """

  defstruct "@type": "fileTypeUnknown"
end
defmodule NetworkTypeMobileRoaming do
  @moduledoc  """
  A mobile roaming network.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_mobile_roaming.html).
  """

  defstruct "@type": "networkTypeMobileRoaming"
end
defmodule InputMessageAnimation do
  @moduledoc  """
  An animation message (GIF-style).

  | Name | Type | Description |
  |------|------| ------------|
  | animation | InputFile | Animation file to be sent. |
  | thumbnail | inputThumbnail | Animation thumbnail, if available. |
  | duration | number | Duration of the animation, in seconds. |
  | width | number | Width of the animation; may be replaced by the server. |
  | height | number | Height of the animation; may be replaced by the server. |
  | caption | string | Animation caption; 0-200 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_animation.html).
  """

  defstruct "@type": "inputMessageAnimation", animation: nil, thumbnail: nil, duration: nil, width: nil, height: nil, caption: nil
end
defmodule UpdateSupergroupFullInfo do
  @moduledoc  """
  Some data from supergroupFullInfo has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the supergroup or channel. |
  | supergroup_full_info | supergroupFullInfo | New full information about the supergroup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_supergroup_full_info.html).
  """

  defstruct "@type": "updateSupergroupFullInfo", supergroup_id: nil, supergroup_full_info: nil
end
defmodule PaymentReceipt do
  @moduledoc  """
  Contains information about a successful payment.

  | Name | Type | Description |
  |------|------| ------------|
  | date | number | Point in time (Unix timestamp) when the payment was made. |
  | payments_provider_user_id | number | User identifier of the payment provider bot. |
  | invoice | invoice | Contains information about the invoice. |
  | order_info | orderInfo | Contains order information; may be null. |
  | shipping_option | shippingOption | Chosen shipping option; may be null. |
  | credentials_title | string | Title of the saved credentials. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_receipt.html).
  """

  defstruct "@type": "paymentReceipt", date: nil, payments_provider_user_id: nil, invoice: nil, order_info: nil, shipping_option: nil, credentials_title: nil
end
defmodule UserPrivacySettingRule do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_privacy_setting_rule.html).
  """

  defstruct "@type": "UserPrivacySettingRule"
end
defmodule ChatActionUploadingVideo do
  @moduledoc  """
  The user is uploading a video.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | number | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_video.html).
  """

  defstruct "@type": "chatActionUploadingVideo", progress: nil
end
defmodule NetworkStatistics do
  @moduledoc  """
  A full list of available network statistic entries.

  | Name | Type | Description |
  |------|------| ------------|
  | since_date | number | Point in time (Unix timestamp) when the app began collecting statistics. |
  | entries | NetworkStatisticsEntry[] | Network statistics entries. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics.html).
  """

  defstruct "@type": "networkStatistics", since_date: nil, entries: nil
end
defmodule Game do
  @moduledoc  """
  Describes a game.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Game ID. |
  | short_name | string | Game short name. To share a game use the URL <a href="https://t.me/{bot_username}?game={game_short_name}">https://t.me/{bot_username}?game={game_short_name}</a>. |
  | title | string | Game title. |
  | text | string | Game text, usually containing scoreboards for a game. |
  | text_entities | textEntity[] | Entities contained in the text. |
  | description | string | Game description. |
  | photo | photo | Game photo. |
  | animation | animation | Game animation; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game.html).
  """

  defstruct "@type": "game", id: nil, short_name: nil, title: nil, text: nil, text_entities: nil, description: nil, photo: nil, animation: nil
end
defmodule InputCredentialsNew do
  @moduledoc  """
  Applies if a user enters new credentials on a payment provider website.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | Contains JSON-encoded data with a credential identifier from the payment provider. |
  | allow_save | bool | True, if the credential identifier can be saved on the server side. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_new.html).
  """

  defstruct "@type": "inputCredentialsNew", data: nil, allow_save: nil
end
defmodule TextEntityTypeMentionName do
  @moduledoc  """
  A text shows instead of a raw mention of the user (e.g., when the user has no username).

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Identifier of the mentioned user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_mention_name.html).
  """

  defstruct "@type": "textEntityTypeMentionName", user_id: nil
end
defmodule BotCommand do
  @moduledoc  """
  Represents commands supported by a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | command | string | Text of the bot command. |
  | description | string | Description of the bot command. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command.html).
  """

  defstruct "@type": "botCommand", command: nil, description: nil
end
defmodule Proxy do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_proxy.html).
  """

  defstruct "@type": "Proxy"
end
defmodule ChatReportReasonSpam do
  @moduledoc  """
  The chat contains spam messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_spam.html).
  """

  defstruct "@type": "chatReportReasonSpam"
end
defmodule Video do
  @moduledoc  """
  Describes a video file.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | number | Duration of the video, in seconds; as defined by the sender. |
  | width | number | Video width; as defined by the sender. |
  | height | number | Video height; as defined by the sender. |
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | MIME type of the file; as defined by the sender. |
  | has_stickers | bool | True, if stickers were added to the photo. |
  | thumbnail | photoSize | Video thumbnail; as defined by the sender; may be null. |
  | video | file | File containing the video. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video.html).
  """

  defstruct "@type": "video", duration: nil, width: nil, height: nil, file_name: nil, mime_type: nil, has_stickers: nil, thumbnail: nil, video: nil
end
defmodule DeviceTokenGoogleCloudMessaging do
  @moduledoc  """
  A token for Google Cloud Messaging.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token, may be empty to de-register a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_google_cloud_messaging.html).
  """

  defstruct "@type": "deviceTokenGoogleCloudMessaging", token: nil
end
defmodule PaymentsProviderStripe do
  @moduledoc  """
  Stripe payment provider.

  | Name | Type | Description |
  |------|------| ------------|
  | publishable_key | string | Stripe API publishable key. |
  | need_country | bool | True, if the user country must be provided. |
  | need_postal_code | bool | True, if the user ZIP/postal code must be provided. |
  | need_cardholder_name | bool | True, if the cardholder name must be provided. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payments_provider_stripe.html).
  """

  defstruct "@type": "paymentsProviderStripe", publishable_key: nil, need_country: nil, need_postal_code: nil, need_cardholder_name: nil
end
defmodule CallState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_state.html).
  """

  defstruct "@type": "CallState"
end
defmodule UpdateMessageContentOpened do
  @moduledoc  """
  The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_id | string | Message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_content_opened.html).
  """

  defstruct "@type": "updateMessageContentOpened", chat_id: nil, message_id: nil
end
defmodule MaskPointEyes do
  @moduledoc  """
  A mask should be placed relatively to the eyes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_eyes.html).
  """

  defstruct "@type": "maskPointEyes"
end
defmodule MessageUnsupported do
  @moduledoc  """
  Message content that is not supported by the client.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_unsupported.html).
  """

  defstruct "@type": "messageUnsupported"
end
defmodule LinkStateKnowsPhoneNumber do
  @moduledoc  """
  The phone number of user A is known but that number has not been saved to the contacts list of user B.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1link_state_knows_phone_number.html).
  """

  defstruct "@type": "linkStateKnowsPhoneNumber"
end
defmodule PageBlockHeader do
  @moduledoc  """
  A header.

  | Name | Type | Description |
  |------|------| ------------|
  | header | RichText | Header. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_header.html).
  """

  defstruct "@type": "pageBlockHeader", header: nil
end
defmodule UserFullInfo do
  @moduledoc  """
  Contains full information about a user (except the full list of profile photos).

  | Name | Type | Description |
  |------|------| ------------|
  | is_blocked | bool | True, if the user is blacklisted by the current user. |
  | can_be_called | bool | True, if the user can be called. |
  | has_private_calls | bool | True, if the user can't be called due to their privacy settings. |
  | bio | string | A short user bio. |
  | share_text | string | For bots, the text that is included with the link when users share the bot. |
  | group_in_common_count | number | Number of group chats where both the other user and the current user are a member; 0 for the current user. |
  | bot_info | botInfo | If the user is a bot, information about the bot; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_full_info.html).
  """

  defstruct "@type": "userFullInfo", is_blocked: nil, can_be_called: nil, has_private_calls: nil, bio: nil, share_text: nil, group_in_common_count: nil, bot_info: nil
end
defmodule NetworkTypeOther do
  @moduledoc  """
  A different network type (e.g., Ethernet network).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_other.html).
  """

  defstruct "@type": "networkTypeOther"
end
defmodule TopChatCategoryBots do
  @moduledoc  """
  A category containing frequently used private chats with bot users.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_bots.html).
  """

  defstruct "@type": "topChatCategoryBots"
end
defmodule SupergroupMembersFilterAdministrators do
  @moduledoc  """
  Returns the creator and administrators.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_administrators.html).
  """

  defstruct "@type": "supergroupMembersFilterAdministrators"
end
defmodule UserType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_type.html).
  """

  defstruct "@type": "UserType"
end
defmodule Document do
  @moduledoc  """
  Describes a document of any type.

  | Name | Type | Description |
  |------|------| ------------|
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | MIME type of the file; as defined by the sender. |
  | thumbnail | photoSize | Document thumbnail; as defined by the sender; may be null. |
  | document | file | File containing the document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1document.html).
  """

  defstruct "@type": "document", file_name: nil, mime_type: nil, thumbnail: nil, document: nil
end
defmodule TextEntityTypeBotCommand do
  @moduledoc  """
  A bot command, beginning with "/". This shouldn't be highlighted if there are no bots in the chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bot_command.html).
  """

  defstruct "@type": "textEntityTypeBotCommand"
end
defmodule CallDiscardReasonDeclined do
  @moduledoc  """
  The call was ended before the conversation started. It was declined by the other party.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_declined.html).
  """

  defstruct "@type": "callDiscardReasonDeclined"
end
defmodule ChatEventSignMessagesToggled do
  @moduledoc  """
  The sign_messages setting of a channel was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | sign_messages | bool | New value of sign_messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_sign_messages_toggled.html).
  """

  defstruct "@type": "chatEventSignMessagesToggled", sign_messages: nil
end
defmodule InputInlineQueryResultGame do
  @moduledoc  """
  Represents a game.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | game_short_name | string | Short name of the game. |
  | reply_markup | ReplyMarkup | Message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_game.html).
  """

  defstruct "@type": "inputInlineQueryResultGame", id: nil, game_short_name: nil, reply_markup: nil
end
defmodule PageBlockList do
  @moduledoc  """
  A list of texts.

  | Name | Type | Description |
  |------|------| ------------|
  | items | RichText[] | Texts. |
  | is_ordered | bool | True, if the items should be marked with numbers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_list.html).
  """

  defstruct "@type": "pageBlockList", items: nil, is_ordered: nil
end
defmodule InlineQueryResultSticker do
  @moduledoc  """
  Represents a sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | sticker | sticker | Sticker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_sticker.html).
  """

  defstruct "@type": "inlineQueryResultSticker", id: nil, sticker: nil
end
defmodule PageBlockPreformatted do
  @moduledoc  """
  A preformatted text paragraph.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Paragraph text. |
  | language | string | Programming language for which the text should be formatted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_preformatted.html).
  """

  defstruct "@type": "pageBlockPreformatted", text: nil, language: nil
end
defmodule TopChatCategoryGroups do
  @moduledoc  """
  A category containing frequently used basic groups and supergroups.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_groups.html).
  """

  defstruct "@type": "topChatCategoryGroups"
end
defmodule InlineKeyboardButtonTypeUrl do
  @moduledoc  """
  A button that opens a specified URL.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | URL to open. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_url.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeUrl", url: nil
end
defmodule SearchMessagesFilterCall do
  @moduledoc  """
  Returns only call messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_call.html).
  """

  defstruct "@type": "searchMessagesFilterCall"
end
defmodule FileTypeVideoNote do
  @moduledoc  """
  The file is a video note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video_note.html).
  """

  defstruct "@type": "fileTypeVideoNote"
end
defmodule MessageChatUpgradeFrom do
  @moduledoc  """
  A supergroup has been created from a basic group.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the newly created supergroup. |
  | basic_group_id | number | The identifier of the original basic group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_upgrade_from.html).
  """

  defstruct "@type": "messageChatUpgradeFrom", title: nil, basic_group_id: nil
end
defmodule AuthorizationStateWaitCode do
  @moduledoc  """
  TDLib needs the user's authentication code to finalize authorization.

  | Name | Type | Description |
  |------|------| ------------|
  | is_registered | bool | True, if the user is already registered. |
  | code_info | authenticationCodeInfo | Information about the authorization code that was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_code.html).
  """

  defstruct "@type": "authorizationStateWaitCode", is_registered: nil, code_info: nil
end
defmodule TopChatCategoryCalls do
  @moduledoc  """
  A category containing frequently used chats used for calls.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_calls.html).
  """

  defstruct "@type": "topChatCategoryCalls"
end
defmodule ChatEventPhotoChanged do
  @moduledoc  """
  The chat photo was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_photo | chatPhoto | Previous chat photo value; may be null. |
  | new_photo | chatPhoto | New chat photo value; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_photo_changed.html).
  """

  defstruct "@type": "chatEventPhotoChanged", old_photo: nil, new_photo: nil
end
defmodule MessageSendingStatePending do
  @moduledoc  """
  The message is being sent now, but has not yet been delivered to the server.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sending_state_pending.html).
  """

  defstruct "@type": "messageSendingStatePending"
end
defmodule ProxySocks5 do
  @moduledoc  """
  A SOCKS5 proxy server.

  | Name | Type | Description |
  |------|------| ------------|
  | server | string | <a class="el" href="classtd_1_1td__api_1_1_proxy.html">Proxy</a> server IP address. |
  | port | number | <a class="el" href="classtd_1_1td__api_1_1_proxy.html">Proxy</a> server port. |
  | username | string | Username for logging in. |
  | password | string | Password for logging in. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_socks5.html).
  """

  defstruct "@type": "proxySocks5", server: nil, port: nil, username: nil, password: nil
end
defmodule UpdateMessageSendFailed do
  @moduledoc  """
  A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Contains information about the message that failed to send. |
  | old_message_id | string | The previous temporary message identifier. |
  | error_code | number | An error code. |
  | error_message | string | Error message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_failed.html).
  """

  defstruct "@type": "updateMessageSendFailed", message: nil, old_message_id: nil, error_code: nil, error_message: nil
end
defmodule InlineKeyboardButtonTypeCallbackGame do
  @moduledoc  """
  A button with a game that sends a special callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback_game.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeCallbackGame"
end
defmodule PageBlockSubtitle do
  @moduledoc  """
  The subtitle of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | subtitle | RichText | Subtitle. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_subtitle.html).
  """

  defstruct "@type": "pageBlockSubtitle", subtitle: nil
end
defmodule PageBlockParagraph do
  @moduledoc  """
  A text paragraph.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Paragraph text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_paragraph.html).
  """

  defstruct "@type": "pageBlockParagraph", text: nil
end
defmodule MaskPointMouth do
  @moduledoc  """
  A mask should be placed relatively to the mouth.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_mouth.html).
  """

  defstruct "@type": "maskPointMouth"
end
defmodule MessageCall do
  @moduledoc  """
  A message with information about an ended call.

  | Name | Type | Description |
  |------|------| ------------|
  | discard_reason | CallDiscardReason | Reason why the call was discarded. |
  | duration | number | Call duration, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_call.html).
  """

  defstruct "@type": "messageCall", discard_reason: nil, duration: nil
end
defmodule PhotoSize do
  @moduledoc  """
  Photo description.

  | Name | Type | Description |
  |------|------| ------------|
  | type | string | Thumbnail type (see <a href="https://core.telegram.org/constructor/photoSize">https://core.telegram.org/constructor/photoSize</a>). |
  | photo | file | Information about the photo file. |
  | width | number | Photo width. |
  | height | number | Photo height. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1photo_size.html).
  """

  defstruct "@type": "photoSize", type: nil, photo: nil, width: nil, height: nil
end
defmodule InlineKeyboardButtonType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_keyboard_button_type.html).
  """

  defstruct "@type": "InlineKeyboardButtonType"
end
defmodule TextEntityType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_text_entity_type.html).
  """

  defstruct "@type": "TextEntityType"
end
defmodule AuthorizationStateLoggingOut do
  @moduledoc  """
  The user is currently logging out.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_logging_out.html).
  """

  defstruct "@type": "authorizationStateLoggingOut"
end
defmodule UserPrivacySettingAllowCalls do
  @moduledoc  """
  A privacy setting for managing whether the user can be called.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_calls.html).
  """

  defstruct "@type": "userPrivacySettingAllowCalls"
end
defmodule InlineQueryResultDocument do
  @moduledoc  """
  Represents a document.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | document | document | Document. |
  | title | string | Document title. |
  | description | string | Document description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_document.html).
  """

  defstruct "@type": "inlineQueryResultDocument", id: nil, document: nil, title: nil, description: nil
end
defmodule PageBlockEmbeddedPost do
  @moduledoc  """
  An embedded post.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Web page URL. |
  | author | string | Post author. |
  | author_photo | photo | Post author photo. |
  | date | number | Point in time (Unix timestamp) when the post was created; 0 if unknown. |
  | page_blocks | PageBlock[] | Post content. |
  | caption | RichText | Post caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_embedded_post.html).
  """

  defstruct "@type": "pageBlockEmbeddedPost", url: nil, author: nil, author_photo: nil, date: nil, page_blocks: nil, caption: nil
end
defmodule UpdateChatReadOutbox do
  @moduledoc  """
  Outgoing messages were read.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | last_read_outbox_message_id | string | Identifier of last read outgoing message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_read_outbox.html).
  """

  defstruct "@type": "updateChatReadOutbox", chat_id: nil, last_read_outbox_message_id: nil
end
defmodule AuthorizationStateWaitTdlibParameters do
  @moduledoc  """
  TDLib needs TdlibParameters for initialization.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_tdlib_parameters.html).
  """

  defstruct "@type": "authorizationStateWaitTdlibParameters"
end
defmodule OptionValueBoolean do
  @moduledoc  """
  Boolean option.

  | Name | Type | Description |
  |------|------| ------------|
  | value | bool | The value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_boolean.html).
  """

  defstruct "@type": "optionValueBoolean", value: nil
end
defmodule Animation do
  @moduledoc  """
  Describes an animation file. The animation must be encoded in GIF or MPEG4 format.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | number | Duration of the animation, in seconds; as defined by the sender. |
  | width | number | Width of the animation. |
  | height | number | Height of the animation. |
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | MIME type of the file, usually "image/gif" or "video/mp4". |
  | thumbnail | photoSize | Animation thumbnail; may be null. |
  | animation | file | File containing the animation. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animation.html).
  """

  defstruct "@type": "animation", duration: nil, width: nil, height: nil, file_name: nil, mime_type: nil, thumbnail: nil, animation: nil
end
defmodule UpdateChatReplyMarkup do
  @moduledoc  """
  The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | reply_markup_message_id | string | Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_reply_markup.html).
  """

  defstruct "@type": "updateChatReplyMarkup", chat_id: nil, reply_markup_message_id: nil
end
defmodule NotificationSettingsScopeBasicGroupChats do
  @moduledoc  """
  Notification settings applied to all basic groups and channels. (Supergroups have no common settings.)


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_basic_group_chats.html).
  """

  defstruct "@type": "notificationSettingsScopeBasicGroupChats"
end
defmodule UpdateChatLastMessage do
  @moduledoc  """
  The last message of a chat was changed. If last_message is null then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | last_message | message | The new last message in the chat; may be null. |
  | order | string | New value of the chat order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_last_message.html).
  """

  defstruct "@type": "updateChatLastMessage", chat_id: nil, last_message: nil, order: nil
end
defmodule UpdateUserFullInfo do
  @moduledoc  """
  Some data from userFullInfo has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |
  | user_full_info | userFullInfo | New full information about the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_full_info.html).
  """

  defstruct "@type": "updateUserFullInfo", user_id: nil, user_full_info: nil
end
defmodule InlineQueryResults do
  @moduledoc  """
  Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_query_id | string | Unique identifier of the inline query. |
  | next_offset | string | The offset for the next request. If empty, there are no more results. |
  | results | InlineQueryResult[] | Results of the query. |
  | switch_pm_text | string | If non-empty, this text should be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter. |
  | switch_pm_parameter | string | Parameter for the bot start message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_results.html).
  """

  defstruct "@type": "inlineQueryResults", inline_query_id: nil, next_offset: nil, results: nil, switch_pm_text: nil, switch_pm_parameter: nil
end
defmodule MessageChatAddMembers do
  @moduledoc  """
  New chat members were added.

  | Name | Type | Description |
  |------|------| ------------|
  | member_user_ids | number[] | User identifiers of the new members. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_add_members.html).
  """

  defstruct "@type": "messageChatAddMembers", member_user_ids: nil
end
defmodule RichTextStrikethrough do
  @moduledoc  """
  A strike-through rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_strikethrough.html).
  """

  defstruct "@type": "richTextStrikethrough", text: nil
end
defmodule PageBlockAnimation do
  @moduledoc  """
  An animation.

  | Name | Type | Description |
  |------|------| ------------|
  | animation | animation | Animation file; may be null. |
  | caption | RichText | Animation caption. |
  | need_autoplay | bool | True, if the animation should be played automatically. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_animation.html).
  """

  defstruct "@type": "pageBlockAnimation", animation: nil, caption: nil, need_autoplay: nil
end
defmodule UpdateChatReadInbox do
  @moduledoc  """
  Incoming messages were read.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | last_read_inbox_message_id | string | Identifier of the last read incoming message. |
  | unread_count | number | The number of unread messages left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_read_inbox.html).
  """

  defstruct "@type": "updateChatReadInbox", chat_id: nil, last_read_inbox_message_id: nil, unread_count: nil
end
defmodule FileTypeAnimation do
  @moduledoc  """
  The file is an animation.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_animation.html).
  """

  defstruct "@type": "fileTypeAnimation"
end
defmodule UpdateChatUnreadMentionCount do
  @moduledoc  """
  The chat unread_mention_count has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | unread_mention_count | number | The number of unread mention messages left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_unread_mention_count.html).
  """

  defstruct "@type": "updateChatUnreadMentionCount", chat_id: nil, unread_mention_count: nil
end
defmodule InputThumbnail do
  @moduledoc  """
  A thumbnail to be sent along with a file; should be in JPEG or WEBP format for stickers, and less than 200 kB in size.

  | Name | Type | Description |
  |------|------| ------------|
  | thumbnail | InputFile | Thumbnail file to send. Sending thumbnails by file_id is currently not supported. |
  | width | number | Thumbnail width, usually shouldn't exceed 90. Use 0 if unknown. |
  | height | number | Thumbnail height, usually shouldn't exceed 90. Use 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_thumbnail.html).
  """

  defstruct "@type": "inputThumbnail", thumbnail: nil, width: nil, height: nil
end
defmodule ChatEventMessageEdited do
  @moduledoc  """
  A message was edited.

  | Name | Type | Description |
  |------|------| ------------|
  | old_message | message | The original message before the edit. |
  | new_message | message | The message after it was edited. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_edited.html).
  """

  defstruct "@type": "chatEventMessageEdited", old_message: nil, new_message: nil
end
defmodule SupergroupFullInfo do
  @moduledoc  """
  Contains full information about a supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | description | string | Supergroup or channel description. |
  | member_count | number | Number of members in the supergroup or channel; 0 if unknown. |
  | administrator_count | number | Number of privileged users in the supergroup or channel; 0 if unknown. |
  | restricted_count | number | Number of restricted users in the supergroup; 0 if unknown. |
  | banned_count | number | Number of users banned from chat; 0 if unknown. |
  | can_get_members | bool | True, if members of the chat can be retrieved. |
  | can_set_username | bool | True, if the chat can be made public. |
  | can_set_sticker_set | bool | True, if the supergroup sticker set can be changed. |
  | is_all_history_available | bool | True, if new chat members will have access to old messages. In public supergroups and both public and private channels, old messages are always available, so this option affects only private supergroups. The value of this field is only available for chat administrators. |
  | sticker_set_id | string | Identifier of the supergroup sticker set; 0 if none. |
  | invite_link | string | Invite link for this chat. |
  | pinned_message_id | string | Identifier of the pinned message in the chat; 0 if none. |
  | upgraded_from_basic_group_id | number | Identifier of the basic group from which supergroup was upgraded; 0 if none. |
  | upgraded_from_max_message_id | string | Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_full_info.html).
  """

  defstruct "@type": "supergroupFullInfo", description: nil, member_count: nil, administrator_count: nil, restricted_count: nil, banned_count: nil, can_get_members: nil, can_set_username: nil, can_set_sticker_set: nil, is_all_history_available: nil, sticker_set_id: nil, invite_link: nil, pinned_message_id: nil, upgraded_from_basic_group_id: nil, upgraded_from_max_message_id: nil
end
defmodule Error do
  @moduledoc  """
  An object of this type can be returned on every function call, in case of an error.

  | Name | Type | Description |
  |------|------| ------------|
  | code | number | Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user. |
  | message | string | Error message; subject to future changes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1error.html).
  """

  defstruct "@type": "error", code: nil, message: nil
end
defmodule ChatActionUploadingVideoNote do
  @moduledoc  """
  The user is uploading a video note.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | number | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_video_note.html).
  """

  defstruct "@type": "chatActionUploadingVideoNote", progress: nil
end
defmodule PageBlockFooter do
  @moduledoc  """
  The footer of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | footer | RichText | Footer. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_footer.html).
  """

  defstruct "@type": "pageBlockFooter", footer: nil
end
defmodule TMeUrlTypeStickerSet do
  @moduledoc  """
  A URL linking to a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_set_id | string | Identifier of the sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_sticker_set.html).
  """

  defstruct "@type": "tMeUrlTypeStickerSet", sticker_set_id: nil
end
defmodule InputCredentialsSaved do
  @moduledoc  """
  Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password.

  | Name | Type | Description |
  |------|------| ------------|
  | saved_credentials_id | string | Identifier of the saved credentials. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_saved.html).
  """

  defstruct "@type": "inputCredentialsSaved", saved_credentials_id: nil
end
defmodule SearchMessagesFilterVideo do
  @moduledoc  """
  Returns only video messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_video.html).
  """

  defstruct "@type": "searchMessagesFilterVideo"
end
defmodule ChatEventMemberInvited do
  @moduledoc  """
  A new chat member was invited.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | New member user identifier. |
  | status | ChatMemberStatus | New member status. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_invited.html).
  """

  defstruct "@type": "chatEventMemberInvited", user_id: nil, status: nil
end
defmodule TextEntity do
  @moduledoc  """
  Represents a part of the text that needs to be formatted in some unusual way.

  | Name | Type | Description |
  |------|------| ------------|
  | offset | number | Offset of the entity in UTF-16 code points. |
  | length | number | Length of the entity, in UTF-16 code points. |
  | type | TextEntityType | Type of the entity. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity.html).
  """

  defstruct "@type": "textEntity", offset: nil, length: nil, type: nil
end
defmodule FileTypeDocument do
  @moduledoc  """
  The file is a document.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_document.html).
  """

  defstruct "@type": "fileTypeDocument"
end
defmodule ChatActionUploadingPhoto do
  @moduledoc  """
  The user is uploading a photo.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | number | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_photo.html).
  """

  defstruct "@type": "chatActionUploadingPhoto", progress: nil
end
defmodule Hashtags do
  @moduledoc  """
  Contains a list of hashtags.

  | Name | Type | Description |
  |------|------| ------------|
  | hashtags | string[] | A list of hashtags. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1hashtags.html).
  """

  defstruct "@type": "hashtags", hashtags: nil
end
defmodule ChatEventDescriptionChanged do
  @moduledoc  """
  The chat description was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_description | string | Previous chat description. |
  | new_description | string | New chat description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_description_changed.html).
  """

  defstruct "@type": "chatEventDescriptionChanged", old_description: nil, new_description: nil
end
defmodule InputInlineQueryResultArticle do
  @moduledoc  """
  Represents a link to an article or web page.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | url | string | URL of the result, if it exists. |
  | hide_url | bool | True, if the URL must be not shown. |
  | title | string | Title of the result. |
  | description | string | A short description of the result. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | number | Thumbnail width, if known. |
  | thumbnail_height | number | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_article.html).
  """

  defstruct "@type": "inputInlineQueryResultArticle", id: nil, url: nil, hide_url: nil, title: nil, description: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule TextParseMode do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_text_parse_mode.html).
  """

  defstruct "@type": "TextParseMode"
end
defmodule TextEntities do
  @moduledoc  """
  Contains a list of text entities.

  | Name | Type | Description |
  |------|------| ------------|
  | entities | textEntity[] | List of text entities. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entities.html).
  """

  defstruct "@type": "textEntities", entities: nil
end
defmodule SearchMessagesFilterAudio do
  @moduledoc  """
  Returns only audio messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_audio.html).
  """

  defstruct "@type": "searchMessagesFilterAudio"
end
defmodule OrderInfo do
  @moduledoc  """
  Order information.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the user. |
  | phone_number | string | Phone number of the user. |
  | email_address | string | Email address of the user. |
  | shipping_address | shippingAddress | Shipping address for this order; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1order_info.html).
  """

  defstruct "@type": "orderInfo", name: nil, phone_number: nil, email_address: nil, shipping_address: nil
end
defmodule UserStatusOffline do
  @moduledoc  """
  The user is offline.

  | Name | Type | Description |
  |------|------| ------------|
  | was_online | number | Point in time (Unix timestamp) when the user was last online. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_offline.html).
  """

  defstruct "@type": "userStatusOffline", was_online: nil
end
defmodule ChatTypeSupergroup do
  @moduledoc  """
  A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members).

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Supergroup or channel identifier. |
  | is_channel | bool | True, if the supergroup is a channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_supergroup.html).
  """

  defstruct "@type": "chatTypeSupergroup", supergroup_id: nil, is_channel: nil
end
defmodule InlineQueryResultVoiceNote do
  @moduledoc  """
  Represents a voice note.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | voice_note | voiceNote | Voice note. |
  | title | string | Title of the voice note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_voice_note.html).
  """

  defstruct "@type": "inlineQueryResultVoiceNote", id: nil, voice_note: nil, title: nil
end
defmodule ConnectionStateReady do
  @moduledoc  """
  There is a working connection to the Telegram servers.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_ready.html).
  """

  defstruct "@type": "connectionStateReady"
end
defmodule CallDiscardReasonHungUp do
  @moduledoc  """
  The call was ended because one of the parties hung up.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_hung_up.html).
  """

  defstruct "@type": "callDiscardReasonHungUp"
end
defmodule UpdateNewCallbackQuery do
  @moduledoc  """
  A new incoming callback query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique query identifier. |
  | sender_user_id | number | Identifier of the user who sent the query. |
  | chat_id | string | Identifier of the chat, in which the query was sent. |
  | message_id | string | Identifier of the message, from which the query originated. |
  | chat_instance | string | Identifier that uniquely corresponds to the chat to which the message was sent. |
  | payload | CallbackQueryPayload | Query payload. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_callback_query.html).
  """

  defstruct "@type": "updateNewCallbackQuery", id: nil, sender_user_id: nil, chat_id: nil, message_id: nil, chat_instance: nil, payload: nil
end
defmodule NetworkTypeMobile do
  @moduledoc  """
  A mobile network.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_mobile.html).
  """

  defstruct "@type": "networkTypeMobile"
end
defmodule FileTypeWallpaper do
  @moduledoc  """
  The file is a wallpaper.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_wallpaper.html).
  """

  defstruct "@type": "fileTypeWallpaper"
end
defmodule MessageChatDeleteMember do
  @moduledoc  """
  A chat member was deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier of the deleted chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_delete_member.html).
  """

  defstruct "@type": "messageChatDeleteMember", user_id: nil
end
defmodule UserStatusEmpty do
  @moduledoc  """
  The user status was never changed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_empty.html).
  """

  defstruct "@type": "userStatusEmpty"
end
defmodule Messages do
  @moduledoc  """
  Contains a list of messages.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | number | Approximate total count of messages found. |
  | messages | message[] | List of messages; messages may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1messages.html).
  """

  defstruct "@type": "messages", total_count: nil, messages: nil
end
defmodule ReplyMarkupShowKeyboard do
  @moduledoc  """
  Contains a custom keyboard layout to quickly reply to bots.

  | Name | Type | Description |
  |------|------| ------------|
  | rows | keyboardButton[][] | A list of rows of bot keyboard buttons. |
  | resize_keyboard | bool | True, if the client needs to resize the keyboard vertically. |
  | one_time | bool | True, if the client needs to hide the keyboard after use. |
  | is_personal | bool | True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_show_keyboard.html).
  """

  defstruct "@type": "replyMarkupShowKeyboard", rows: nil, resize_keyboard: nil, one_time: nil, is_personal: nil
end
defmodule MessageChatDeletePhoto do
  @moduledoc  """
  A deleted chat photo.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_delete_photo.html).
  """

  defstruct "@type": "messageChatDeletePhoto"
end
defmodule MessageScreenshotTaken do
  @moduledoc  """
  A screenshot of a message in the chat has been taken.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_screenshot_taken.html).
  """

  defstruct "@type": "messageScreenshotTaken"
end
defmodule TopChatCategoryInlineBots do
  @moduledoc  """
  A category containing frequently used chats with inline bots sorted by their usage in inline mode.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_inline_bots.html).
  """

  defstruct "@type": "topChatCategoryInlineBots"
end
defmodule UpdateUserPrivacySettingRules do
  @moduledoc  """
  Some privacy setting rules have been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | setting | UserPrivacySetting | The privacy setting. |
  | rules | userPrivacySettingRules | New privacy rules. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_privacy_setting_rules.html).
  """

  defstruct "@type": "updateUserPrivacySettingRules", setting: nil, rules: nil
end
defmodule ReplyMarkupForceReply do
  @moduledoc  """
  Instructs clients to force a reply to this message.

  | Name | Type | Description |
  |------|------| ------------|
  | is_personal | bool | True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_force_reply.html).
  """

  defstruct "@type": "replyMarkupForceReply", is_personal: nil
end
defmodule InlineQueryResultAnimation do
  @moduledoc  """
  Represents an animation file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | animation | animation | Animation file. |
  | title | string | Animation title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_animation.html).
  """

  defstruct "@type": "inlineQueryResultAnimation", id: nil, animation: nil, title: nil
end
defmodule TestInt do
  @moduledoc  """
  A simple object containing a number; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | number | Number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_int.html).
  """

  defstruct "@type": "testInt", value: nil
end
end