// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConfigVar> _$configVarSerializer = new _$ConfigVarSerializer();
Serializer<EntityListPost> _$entityListPostSerializer =
    new _$EntityListPostSerializer();
Serializer<BuiltEntityPost> _$builtEntityPostSerializer =
    new _$BuiltEntityPostSerializer();
Serializer<TagCreate> _$tagCreateSerializer = new _$TagCreateSerializer();
Serializer<TagDelete> _$tagDeleteSerializer = new _$TagDeleteSerializer();
Serializer<TagSearch> _$tagSearchSerializer = new _$TagSearchSerializer();
Serializer<TagDetail> _$tagDetailSerializer = new _$TagDetailSerializer();
Serializer<ClubTags> _$clubTagsSerializer = new _$ClubTagsSerializer();
Serializer<EntityTags> _$entityTagsSerializer = new _$EntityTagsSerializer();
Serializer<WorkshopResources> _$workshopResourcesSerializer =
    new _$WorkshopResourcesSerializer();
Serializer<BuiltAllWorkshopsPost> _$builtAllWorkshopsPostSerializer =
    new _$BuiltAllWorkshopsPostSerializer();
Serializer<BuiltWorkshopSummaryPost> _$builtWorkshopSummaryPostSerializer =
    new _$BuiltWorkshopSummaryPostSerializer();
Serializer<BuiltWorkshopDetailPost> _$builtWorkshopDetailPostSerializer =
    new _$BuiltWorkshopDetailPostSerializer();
Serializer<ContactPost> _$contactPostSerializer = new _$ContactPostSerializer();
Serializer<BuiltWorkshopSearchByStringPost>
    _$builtWorkshopSearchByStringPostSerializer =
    new _$BuiltWorkshopSearchByStringPostSerializer();
Serializer<BuiltAllCouncilsPost> _$builtAllCouncilsPostSerializer =
    new _$BuiltAllCouncilsPostSerializer();
Serializer<BuiltCouncilPost> _$builtCouncilPostSerializer =
    new _$BuiltCouncilPostSerializer();
Serializer<SecyPost> _$secyPostSerializer = new _$SecyPostSerializer();
Serializer<ClubListPost> _$clubListPostSerializer =
    new _$ClubListPostSerializer();
Serializer<BuiltClubPost> _$builtClubPostSerializer =
    new _$BuiltClubPostSerializer();
Serializer<BuiltWorkshopCreatePost> _$builtWorkshopCreatePostSerializer =
    new _$BuiltWorkshopCreatePostSerializer();
Serializer<BuiltProfilePost> _$builtProfilePostSerializer =
    new _$BuiltProfilePostSerializer();
Serializer<BuiltProfileSearchPost> _$builtProfileSearchPostSerializer =
    new _$BuiltProfileSearchPostSerializer();
Serializer<BuiltTeamMemberPost> _$builtTeamMemberPostSerializer =
    new _$BuiltTeamMemberPostSerializer();
Serializer<TeamMember> _$teamMemberSerializer = new _$TeamMemberSerializer();
Serializer<BuiltContacts> _$builtContactsSerializer =
    new _$BuiltContactsSerializer();
Serializer<BuiltTags> _$builtTagsSerializer = new _$BuiltTagsSerializer();
Serializer<LoginPost> _$loginPostSerializer = new _$LoginPostSerializer();
Serializer<Token> _$tokenSerializer = new _$TokenSerializer();
Serializer<BuiltAllNotices> _$builtAllNoticesSerializer =
    new _$BuiltAllNoticesSerializer();
Serializer<BuiltNoticeDetail> _$builtNoticeDetailSerializer =
    new _$BuiltNoticeDetailSerializer();
Serializer<NoticeCreatePost> _$noticeCreatePostSerializer =
    new _$NoticeCreatePostSerializer();
Serializer<CreateMinute> _$createMinuteSerializer =
    new _$CreateMinuteSerializer();
Serializer<CreateMinutePost> _$createMinutePostSerializer =
    new _$CreateMinutePostSerializer();
Serializer<CreateSuggestion> _$createSuggestionSerializer =
    new _$CreateSuggestionSerializer();
Serializer<CreateSuggestionPost> _$createSuggestionPostSerializer =
    new _$CreateSuggestionPostSerializer();
Serializer<GrievanceCount> _$grievanceCountSerializer =
    new _$GrievanceCountSerializer();
Serializer<GrievancePost> _$grievancePostSerializer =
    new _$GrievancePostSerializer();
Serializer<Grievance> _$grievanceSerializer = new _$GrievanceSerializer();
Serializer<LostAndFoundPost> _$lostAndFoundPostSerializer =
    new _$LostAndFoundPostSerializer();
Serializer<LostAndFound> _$lostAndFoundSerializer =
    new _$LostAndFoundSerializer();

class _$ConfigVarSerializer implements StructuredSerializer<ConfigVar> {
  @override
  final Iterable<Type> types = const [ConfigVar, _$ConfigVar];
  @override
  final String wireName = 'ConfigVar';

  @override
  Iterable<Object> serialize(Serializers serializers, ConfigVar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ConfigVar deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfigVarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EntityListPostSerializer
    implements StructuredSerializer<EntityListPost> {
  @override
  final Iterable<Type> types = const [EntityListPost, _$EntityListPost];
  @override
  final String wireName = 'EntityListPost';

  @override
  Iterable<Object> serialize(Serializers serializers, EntityListPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.small_image_url != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(object.small_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.large_image_url != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(object.large_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.is_permanent != null) {
      result
        ..add('is_permanent')
        ..add(serializers.serialize(object.is_permanent,
            specifiedType: const FullType(bool)));
    }
    if (object.is_highlighted != null) {
      result
        ..add('is_highlighted')
        ..add(serializers.serialize(object.is_highlighted,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  EntityListPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntityListPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small_image_url':
          result.small_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_image_url':
          result.large_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_permanent':
          result.is_permanent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_highlighted':
          result.is_highlighted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltEntityPostSerializer
    implements StructuredSerializer<BuiltEntityPost> {
  @override
  final Iterable<Type> types = const [BuiltEntityPost, _$BuiltEntityPost];
  @override
  final String wireName = 'BuiltEntityPost';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltEntityPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.point_of_contact != null) {
      result
        ..add('point_of_contact')
        ..add(serializers.serialize(object.point_of_contact,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SecyPost)])));
    }
    if (object.small_image_url != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(object.small_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.large_image_url != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(object.large_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.is_subscribed != null) {
      result
        ..add('is_subscribed')
        ..add(serializers.serialize(object.is_subscribed,
            specifiedType: const FullType(bool)));
    }
    if (object.subscribed_users != null) {
      result
        ..add('subscribed_users')
        ..add(serializers.serialize(object.subscribed_users,
            specifiedType: const FullType(int)));
    }
    if (object.is_permanent != null) {
      result
        ..add('is_permanent')
        ..add(serializers.serialize(object.is_permanent,
            specifiedType: const FullType(bool)));
    }
    if (object.is_highlighted != null) {
      result
        ..add('is_highlighted')
        ..add(serializers.serialize(object.is_highlighted,
            specifiedType: const FullType(bool)));
    }
    if (object.is_por_holder != null) {
      result
        ..add('is_por_holder')
        ..add(serializers.serialize(object.is_por_holder,
            specifiedType: const FullType(bool)));
    }
    if (object.website_url != null) {
      result
        ..add('website_url')
        ..add(serializers.serialize(object.website_url,
            specifiedType: const FullType(String)));
    }
    if (object.facebook_url != null) {
      result
        ..add('facebook_url')
        ..add(serializers.serialize(object.facebook_url,
            specifiedType: const FullType(String)));
    }
    if (object.twitter_url != null) {
      result
        ..add('twitter_url')
        ..add(serializers.serialize(object.twitter_url,
            specifiedType: const FullType(String)));
    }
    if (object.instagram_url != null) {
      result
        ..add('instagram_url')
        ..add(serializers.serialize(object.instagram_url,
            specifiedType: const FullType(String)));
    }
    if (object.linkedin_url != null) {
      result
        ..add('linkedin_url')
        ..add(serializers.serialize(object.linkedin_url,
            specifiedType: const FullType(String)));
    }
    if (object.youtube_url != null) {
      result
        ..add('youtube_url')
        ..add(serializers.serialize(object.youtube_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltEntityPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltEntityPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'point_of_contact':
          result.point_of_contact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SecyPost)]))
              as BuiltList<dynamic>);
          break;
        case 'small_image_url':
          result.small_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_image_url':
          result.large_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_subscribed':
          result.is_subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'subscribed_users':
          result.subscribed_users = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_permanent':
          result.is_permanent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_highlighted':
          result.is_highlighted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_por_holder':
          result.is_por_holder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'website_url':
          result.website_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facebook_url':
          result.facebook_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_url':
          result.twitter_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instagram_url':
          result.instagram_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'linkedin_url':
          result.linkedin_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'youtube_url':
          result.youtube_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TagCreateSerializer implements StructuredSerializer<TagCreate> {
  @override
  final Iterable<Type> types = const [TagCreate, _$TagCreate];
  @override
  final String wireName = 'TagCreate';

  @override
  Iterable<Object> serialize(Serializers serializers, TagCreate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tag_name',
      serializers.serialize(object.tag_name,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TagCreate deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagCreateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tag_name':
          result.tag_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TagDeleteSerializer implements StructuredSerializer<TagDelete> {
  @override
  final Iterable<Type> types = const [TagDelete, _$TagDelete];
  @override
  final String wireName = 'TagDelete';

  @override
  Iterable<Object> serialize(Serializers serializers, TagDelete object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tag_name',
      serializers.serialize(object.tag_name,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TagDelete deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagDeleteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tag_name':
          result.tag_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TagSearchSerializer implements StructuredSerializer<TagSearch> {
  @override
  final Iterable<Type> types = const [TagSearch, _$TagSearch];
  @override
  final String wireName = 'TagSearch';

  @override
  Iterable<Object> serialize(Serializers serializers, TagSearch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tag_name',
      serializers.serialize(object.tag_name,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TagSearch deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagSearchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tag_name':
          result.tag_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TagDetailSerializer implements StructuredSerializer<TagDetail> {
  @override
  final Iterable<Type> types = const [TagDetail, _$TagDetail];
  @override
  final String wireName = 'TagDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, TagDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tag_name',
      serializers.serialize(object.tag_name,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.club != null) {
      result
        ..add('club')
        ..add(serializers.serialize(object.club,
            specifiedType: const FullType(ClubListPost)));
    }
    if (object.entity != null) {
      result
        ..add('entity')
        ..add(serializers.serialize(object.entity,
            specifiedType: const FullType(EntityListPost)));
    }
    return result;
  }

  @override
  TagDetail deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tag_name':
          result.tag_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'club':
          result.club.replace(serializers.deserialize(value,
              specifiedType: const FullType(ClubListPost)) as ClubListPost);
          break;
        case 'entity':
          result.entity.replace(serializers.deserialize(value,
              specifiedType: const FullType(EntityListPost)) as EntityListPost);
          break;
      }
    }

    return result.build();
  }
}

class _$ClubTagsSerializer implements StructuredSerializer<ClubTags> {
  @override
  final Iterable<Type> types = const [ClubTags, _$ClubTags];
  @override
  final String wireName = 'ClubTags';

  @override
  Iterable<Object> serialize(Serializers serializers, ClubTags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.club_tags != null) {
      result
        ..add('club_tags')
        ..add(serializers.serialize(object.club_tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TagDetail)])));
    }
    return result;
  }

  @override
  ClubTags deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubTagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'club_tags':
          result.club_tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TagDetail)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$EntityTagsSerializer implements StructuredSerializer<EntityTags> {
  @override
  final Iterable<Type> types = const [EntityTags, _$EntityTags];
  @override
  final String wireName = 'EntityTags';

  @override
  Iterable<Object> serialize(Serializers serializers, EntityTags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.entity_tags != null) {
      result
        ..add('entity_tags')
        ..add(serializers.serialize(object.entity_tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TagDetail)])));
    }
    return result;
  }

  @override
  EntityTags deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntityTagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'entity_tags':
          result.entity_tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TagDetail)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkshopResourcesSerializer
    implements StructuredSerializer<WorkshopResources> {
  @override
  final Iterable<Type> types = const [WorkshopResources, _$WorkshopResources];
  @override
  final String wireName = 'WorkshopResources';

  @override
  Iterable<Object> serialize(Serializers serializers, WorkshopResources object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.resource_type != null) {
      result
        ..add('resource_type')
        ..add(serializers.serialize(object.resource_type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WorkshopResources deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkshopResourcesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource_type':
          result.resource_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllWorkshopsPostSerializer
    implements StructuredSerializer<BuiltAllWorkshopsPost> {
  @override
  final Iterable<Type> types = const [
    BuiltAllWorkshopsPost,
    _$BuiltAllWorkshopsPost
  ];
  @override
  final String wireName = 'BuiltAllWorkshopsPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltAllWorkshopsPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.active_workshops != null) {
      result
        ..add('active_workshops')
        ..add(serializers.serialize(object.active_workshops,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BuiltWorkshopSummaryPost)])));
    }
    if (object.past_workshops != null) {
      result
        ..add('past_workshops')
        ..add(serializers.serialize(object.past_workshops,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BuiltWorkshopSummaryPost)])));
    }
    return result;
  }

  @override
  BuiltAllWorkshopsPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllWorkshopsPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'active_workshops':
          result.active_workshops.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltWorkshopSummaryPost)
              ])) as BuiltList<dynamic>);
          break;
        case 'past_workshops':
          result.past_workshops.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltWorkshopSummaryPost)
              ])) as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltWorkshopSummaryPostSerializer
    implements StructuredSerializer<BuiltWorkshopSummaryPost> {
  @override
  final Iterable<Type> types = const [
    BuiltWorkshopSummaryPost,
    _$BuiltWorkshopSummaryPost
  ];
  @override
  final String wireName = 'BuiltWorkshopSummaryPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltWorkshopSummaryPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'is_workshop',
      serializers.serialize(object.is_workshop,
          specifiedType: const FullType(bool)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.club != null) {
      result
        ..add('club')
        ..add(serializers.serialize(object.club,
            specifiedType: const FullType(ClubListPost)));
    }
    if (object.entity != null) {
      result
        ..add('entity')
        ..add(serializers.serialize(object.entity,
            specifiedType: const FullType(EntityListPost)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    if (object.image_url != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.image_url,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TagDetail)])));
    }
    return result;
  }

  @override
  BuiltWorkshopSummaryPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltWorkshopSummaryPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'club':
          result.club.replace(serializers.deserialize(value,
              specifiedType: const FullType(ClubListPost)) as ClubListPost);
          break;
        case 'entity':
          result.entity.replace(serializers.deserialize(value,
              specifiedType: const FullType(EntityListPost)) as EntityListPost);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_workshop':
          result.is_workshop = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TagDetail)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltWorkshopDetailPostSerializer
    implements StructuredSerializer<BuiltWorkshopDetailPost> {
  @override
  final Iterable<Type> types = const [
    BuiltWorkshopDetailPost,
    _$BuiltWorkshopDetailPost
  ];
  @override
  final String wireName = 'BuiltWorkshopDetailPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltWorkshopDetailPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'is_workshop',
      serializers.serialize(object.is_workshop,
          specifiedType: const FullType(bool)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.club != null) {
      result
        ..add('club')
        ..add(serializers.serialize(object.club,
            specifiedType: const FullType(ClubListPost)));
    }
    if (object.entity != null) {
      result
        ..add('entity')
        ..add(serializers.serialize(object.entity,
            specifiedType: const FullType(EntityListPost)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.audience != null) {
      result
        ..add('audience')
        ..add(serializers.serialize(object.audience,
            specifiedType: const FullType(String)));
    }
    if (object.resources != null) {
      result
        ..add('resources')
        ..add(serializers.serialize(object.resources,
            specifiedType: const FullType(
                BuiltList, const [const FullType(WorkshopResources)])));
    }
    if (object.contacts != null) {
      result
        ..add('contacts')
        ..add(serializers.serialize(object.contacts,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContactPost)])));
    }
    if (object.image_url != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.image_url,
            specifiedType: const FullType(String)));
    }
    if (object.is_interested != null) {
      result
        ..add('is_interested')
        ..add(serializers.serialize(object.is_interested,
            specifiedType: const FullType(bool)));
    }
    if (object.interested_users != null) {
      result
        ..add('interested_users')
        ..add(serializers.serialize(object.interested_users,
            specifiedType: const FullType(int)));
    }
    if (object.is_workshop_contact != null) {
      result
        ..add('is_workshop_contact')
        ..add(serializers.serialize(object.is_workshop_contact,
            specifiedType: const FullType(bool)));
    }
    if (object.is_por_holder != null) {
      result
        ..add('is_por_holder')
        ..add(serializers.serialize(object.is_por_holder,
            specifiedType: const FullType(bool)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TagDetail)])));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltWorkshopDetailPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltWorkshopDetailPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'club':
          result.club.replace(serializers.deserialize(value,
              specifiedType: const FullType(ClubListPost)) as ClubListPost);
          break;
        case 'entity':
          result.entity.replace(serializers.deserialize(value,
              specifiedType: const FullType(EntityListPost)) as EntityListPost);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_workshop':
          result.is_workshop = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'audience':
          result.audience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resources':
          result.resources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WorkshopResources)]))
              as BuiltList<dynamic>);
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ContactPost)]))
              as BuiltList<dynamic>);
          break;
        case 'image_url':
          result.image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_interested':
          result.is_interested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'interested_users':
          result.interested_users = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_workshop_contact':
          result.is_workshop_contact = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_por_holder':
          result.is_por_holder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TagDetail)]))
              as BuiltList<dynamic>);
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactPostSerializer implements StructuredSerializer<ContactPost> {
  @override
  final Iterable<Type> types = const [ContactPost, _$ContactPost];
  @override
  final String wireName = 'ContactPost';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.phone_number != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phone_number,
            specifiedType: const FullType(String)));
    }
    if (object.photo_url != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(object.photo_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContactPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photo_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltWorkshopSearchByStringPostSerializer
    implements StructuredSerializer<BuiltWorkshopSearchByStringPost> {
  @override
  final Iterable<Type> types = const [
    BuiltWorkshopSearchByStringPost,
    _$BuiltWorkshopSearchByStringPost
  ];
  @override
  final String wireName = 'BuiltWorkshopSearchByStringPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltWorkshopSearchByStringPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.search_by != null) {
      result
        ..add('search_by')
        ..add(serializers.serialize(object.search_by,
            specifiedType: const FullType(String)));
    }
    if (object.search_string != null) {
      result
        ..add('search_string')
        ..add(serializers.serialize(object.search_string,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltWorkshopSearchByStringPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltWorkshopSearchByStringPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'search_by':
          result.search_by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'search_string':
          result.search_string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllCouncilsPostSerializer
    implements StructuredSerializer<BuiltAllCouncilsPost> {
  @override
  final Iterable<Type> types = const [
    BuiltAllCouncilsPost,
    _$BuiltAllCouncilsPost
  ];
  @override
  final String wireName = 'BuiltAllCouncilsPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltAllCouncilsPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.small_image_url != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(object.small_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.large_image_url != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(object.large_image_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltAllCouncilsPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllCouncilsPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small_image_url':
          result.small_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_image_url':
          result.large_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltCouncilPostSerializer
    implements StructuredSerializer<BuiltCouncilPost> {
  @override
  final Iterable<Type> types = const [BuiltCouncilPost, _$BuiltCouncilPost];
  @override
  final String wireName = 'BuiltCouncilPost';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltCouncilPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.gensec != null) {
      result
        ..add('gensec')
        ..add(serializers.serialize(object.gensec,
            specifiedType: const FullType(SecyPost)));
    }
    if (object.joint_gensec != null) {
      result
        ..add('joint_gensec')
        ..add(serializers.serialize(object.joint_gensec,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SecyPost)])));
    }
    if (object.clubs != null) {
      result
        ..add('clubs')
        ..add(serializers.serialize(object.clubs,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ClubListPost)])));
    }
    if (object.small_image_url != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(object.small_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.large_image_url != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(object.large_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.is_por_holder != null) {
      result
        ..add('is_por_holder')
        ..add(serializers.serialize(object.is_por_holder,
            specifiedType: const FullType(bool)));
    }
    if (object.website_url != null) {
      result
        ..add('website_url')
        ..add(serializers.serialize(object.website_url,
            specifiedType: const FullType(String)));
    }
    if (object.facebook_url != null) {
      result
        ..add('facebook_url')
        ..add(serializers.serialize(object.facebook_url,
            specifiedType: const FullType(String)));
    }
    if (object.twitter_url != null) {
      result
        ..add('twitter_url')
        ..add(serializers.serialize(object.twitter_url,
            specifiedType: const FullType(String)));
    }
    if (object.instagram_url != null) {
      result
        ..add('instagram_url')
        ..add(serializers.serialize(object.instagram_url,
            specifiedType: const FullType(String)));
    }
    if (object.linkedin_url != null) {
      result
        ..add('linkedin_url')
        ..add(serializers.serialize(object.linkedin_url,
            specifiedType: const FullType(String)));
    }
    if (object.youtube_url != null) {
      result
        ..add('youtube_url')
        ..add(serializers.serialize(object.youtube_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltCouncilPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltCouncilPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gensec':
          result.gensec.replace(serializers.deserialize(value,
              specifiedType: const FullType(SecyPost)) as SecyPost);
          break;
        case 'joint_gensec':
          result.joint_gensec.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SecyPost)]))
              as BuiltList<dynamic>);
          break;
        case 'clubs':
          result.clubs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ClubListPost)]))
              as BuiltList<dynamic>);
          break;
        case 'small_image_url':
          result.small_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_image_url':
          result.large_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_por_holder':
          result.is_por_holder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'website_url':
          result.website_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facebook_url':
          result.facebook_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_url':
          result.twitter_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instagram_url':
          result.instagram_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'linkedin_url':
          result.linkedin_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'youtube_url':
          result.youtube_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SecyPostSerializer implements StructuredSerializer<SecyPost> {
  @override
  final Iterable<Type> types = const [SecyPost, _$SecyPost];
  @override
  final String wireName = 'SecyPost';

  @override
  Iterable<Object> serialize(Serializers serializers, SecyPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.phone_number != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phone_number,
            specifiedType: const FullType(String)));
    }
    if (object.photo_url != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(object.photo_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SecyPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SecyPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photo_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ClubListPostSerializer implements StructuredSerializer<ClubListPost> {
  @override
  final Iterable<Type> types = const [ClubListPost, _$ClubListPost];
  @override
  final String wireName = 'ClubListPost';

  @override
  Iterable<Object> serialize(Serializers serializers, ClubListPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.council != null) {
      result
        ..add('council')
        ..add(serializers.serialize(object.council,
            specifiedType: const FullType(BuiltAllCouncilsPost)));
    }
    if (object.small_image_url != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(object.small_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.large_image_url != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(object.large_image_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ClubListPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubListPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'council':
          result.council.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltAllCouncilsPost))
              as BuiltAllCouncilsPost);
          break;
        case 'small_image_url':
          result.small_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_image_url':
          result.large_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltClubPostSerializer implements StructuredSerializer<BuiltClubPost> {
  @override
  final Iterable<Type> types = const [BuiltClubPost, _$BuiltClubPost];
  @override
  final String wireName = 'BuiltClubPost';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltClubPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.council != null) {
      result
        ..add('council')
        ..add(serializers.serialize(object.council,
            specifiedType: const FullType(BuiltAllCouncilsPost)));
    }
    if (object.secy != null) {
      result
        ..add('secy')
        ..add(serializers.serialize(object.secy,
            specifiedType: const FullType(SecyPost)));
    }
    if (object.joint_secy != null) {
      result
        ..add('joint_secy')
        ..add(serializers.serialize(object.joint_secy,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SecyPost)])));
    }
    if (object.small_image_url != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(object.small_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.large_image_url != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(object.large_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.is_subscribed != null) {
      result
        ..add('is_subscribed')
        ..add(serializers.serialize(object.is_subscribed,
            specifiedType: const FullType(bool)));
    }
    if (object.subscribed_users != null) {
      result
        ..add('subscribed_users')
        ..add(serializers.serialize(object.subscribed_users,
            specifiedType: const FullType(int)));
    }
    if (object.is_por_holder != null) {
      result
        ..add('is_por_holder')
        ..add(serializers.serialize(object.is_por_holder,
            specifiedType: const FullType(bool)));
    }
    if (object.website_url != null) {
      result
        ..add('website_url')
        ..add(serializers.serialize(object.website_url,
            specifiedType: const FullType(String)));
    }
    if (object.facebook_url != null) {
      result
        ..add('facebook_url')
        ..add(serializers.serialize(object.facebook_url,
            specifiedType: const FullType(String)));
    }
    if (object.twitter_url != null) {
      result
        ..add('twitter_url')
        ..add(serializers.serialize(object.twitter_url,
            specifiedType: const FullType(String)));
    }
    if (object.instagram_url != null) {
      result
        ..add('instagram_url')
        ..add(serializers.serialize(object.instagram_url,
            specifiedType: const FullType(String)));
    }
    if (object.linkedin_url != null) {
      result
        ..add('linkedin_url')
        ..add(serializers.serialize(object.linkedin_url,
            specifiedType: const FullType(String)));
    }
    if (object.youtube_url != null) {
      result
        ..add('youtube_url')
        ..add(serializers.serialize(object.youtube_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltClubPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltClubPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'council':
          result.council.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltAllCouncilsPost))
              as BuiltAllCouncilsPost);
          break;
        case 'secy':
          result.secy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SecyPost)) as SecyPost);
          break;
        case 'joint_secy':
          result.joint_secy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SecyPost)]))
              as BuiltList<dynamic>);
          break;
        case 'small_image_url':
          result.small_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_image_url':
          result.large_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_subscribed':
          result.is_subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'subscribed_users':
          result.subscribed_users = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_por_holder':
          result.is_por_holder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'website_url':
          result.website_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facebook_url':
          result.facebook_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_url':
          result.twitter_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instagram_url':
          result.instagram_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'linkedin_url':
          result.linkedin_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'youtube_url':
          result.youtube_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltWorkshopCreatePostSerializer
    implements StructuredSerializer<BuiltWorkshopCreatePost> {
  @override
  final Iterable<Type> types = const [
    BuiltWorkshopCreatePost,
    _$BuiltWorkshopCreatePost
  ];
  @override
  final String wireName = 'BuiltWorkshopCreatePost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltWorkshopCreatePost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'is_workshop',
      serializers.serialize(object.is_workshop,
          specifiedType: const FullType(bool)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.audience != null) {
      result
        ..add('audience')
        ..add(serializers.serialize(object.audience,
            specifiedType: const FullType(String)));
    }
    if (object.contacts != null) {
      result
        ..add('contacts')
        ..add(serializers.serialize(object.contacts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.image_url != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.image_url,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltWorkshopCreatePost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltWorkshopCreatePostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_workshop':
          result.is_workshop = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'audience':
          result.audience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'image_url':
          result.image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltProfilePostSerializer
    implements StructuredSerializer<BuiltProfilePost> {
  @override
  final Iterable<Type> types = const [BuiltProfilePost, _$BuiltProfilePost];
  @override
  final String wireName = 'BuiltProfilePost';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltProfilePost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.phone_number != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phone_number,
            specifiedType: const FullType(String)));
    }
    if (object.department != null) {
      result
        ..add('department')
        ..add(serializers.serialize(object.department,
            specifiedType: const FullType(String)));
    }
    if (object.year_of_joining != null) {
      result
        ..add('year_of_joining')
        ..add(serializers.serialize(object.year_of_joining,
            specifiedType: const FullType(String)));
    }
    if (object.club_subscriptions != null) {
      result
        ..add('club_subscriptions')
        ..add(serializers.serialize(object.club_subscriptions,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ClubListPost)])));
    }
    if (object.entity_subscriptions != null) {
      result
        ..add('entity_subscriptions')
        ..add(serializers.serialize(object.entity_subscriptions,
            specifiedType: const FullType(
                BuiltList, const [const FullType(EntityListPost)])));
    }
    if (object.club_privileges != null) {
      result
        ..add('club_privileges')
        ..add(serializers.serialize(object.club_privileges,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ClubListPost)])));
    }
    if (object.entity_privileges != null) {
      result
        ..add('entity_privileges')
        ..add(serializers.serialize(object.entity_privileges,
            specifiedType: const FullType(
                BuiltList, const [const FullType(EntityListPost)])));
    }
    if (object.photo_url != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(object.photo_url,
            specifiedType: const FullType(String)));
    }
    if (object.can_post_notice != null) {
      result
        ..add('can_post_notice')
        ..add(serializers.serialize(object.can_post_notice,
            specifiedType: const FullType(bool)));
    }
    if (object.can_add_parliament_details != null) {
      result
        ..add('can_add_parliament_details')
        ..add(serializers.serialize(object.can_add_parliament_details,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BuiltProfilePost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltProfilePostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year_of_joining':
          result.year_of_joining = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'club_subscriptions':
          result.club_subscriptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ClubListPost)]))
              as BuiltList<dynamic>);
          break;
        case 'entity_subscriptions':
          result.entity_subscriptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EntityListPost)]))
              as BuiltList<dynamic>);
          break;
        case 'club_privileges':
          result.club_privileges.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ClubListPost)]))
              as BuiltList<dynamic>);
          break;
        case 'entity_privileges':
          result.entity_privileges.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EntityListPost)]))
              as BuiltList<dynamic>);
          break;
        case 'photo_url':
          result.photo_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'can_post_notice':
          result.can_post_notice = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'can_add_parliament_details':
          result.can_add_parliament_details = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltProfileSearchPostSerializer
    implements StructuredSerializer<BuiltProfileSearchPost> {
  @override
  final Iterable<Type> types = const [
    BuiltProfileSearchPost,
    _$BuiltProfileSearchPost
  ];
  @override
  final String wireName = 'BuiltProfileSearchPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltProfileSearchPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.search_by != null) {
      result
        ..add('search_by')
        ..add(serializers.serialize(object.search_by,
            specifiedType: const FullType(String)));
    }
    if (object.search_string != null) {
      result
        ..add('search_string')
        ..add(serializers.serialize(object.search_string,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltProfileSearchPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltProfileSearchPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'search_by':
          result.search_by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'search_string':
          result.search_string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltTeamMemberPostSerializer
    implements StructuredSerializer<BuiltTeamMemberPost> {
  @override
  final Iterable<Type> types = const [
    BuiltTeamMemberPost,
    _$BuiltTeamMemberPost
  ];
  @override
  final String wireName = 'BuiltTeamMemberPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltTeamMemberPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }
    if (object.team_members != null) {
      result
        ..add('team_members')
        ..add(serializers.serialize(object.team_members,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TeamMember)])));
    }
    return result;
  }

  @override
  BuiltTeamMemberPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTeamMemberPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'team_members':
          result.team_members.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeamMember)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TeamMemberSerializer implements StructuredSerializer<TeamMember> {
  @override
  final Iterable<Type> types = const [TeamMember, _$TeamMember];
  @override
  final String wireName = 'TeamMember';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamMember object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.github_username != null) {
      result
        ..add('github_username')
        ..add(serializers.serialize(object.github_username,
            specifiedType: const FullType(String)));
    }
    if (object.github_image_url != null) {
      result
        ..add('github_image_url')
        ..add(serializers.serialize(object.github_image_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamMember deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMemberBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'github_username':
          result.github_username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'github_image_url':
          result.github_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltContactsSerializer implements StructuredSerializer<BuiltContacts> {
  @override
  final Iterable<Type> types = const [BuiltContacts, _$BuiltContacts];
  @override
  final String wireName = 'BuiltContacts';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltContacts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.contacts != null) {
      result
        ..add('contacts')
        ..add(serializers.serialize(object.contacts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  BuiltContacts deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltContactsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltTagsSerializer implements StructuredSerializer<BuiltTags> {
  @override
  final Iterable<Type> types = const [BuiltTags, _$BuiltTags];
  @override
  final String wireName = 'BuiltTags';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  BuiltTags deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginPostSerializer implements StructuredSerializer<LoginPost> {
  @override
  final Iterable<Type> types = const [LoginPost, _$LoginPost];
  @override
  final String wireName = 'LoginPost';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id_token',
      serializers.serialize(object.id_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id_token':
          result.id_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TokenSerializer implements StructuredSerializer<Token> {
  @override
  final Iterable<Type> types = const [Token, _$Token];
  @override
  final String wireName = 'Token';

  @override
  Iterable<Object> serialize(Serializers serializers, Token object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Token deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllNoticesSerializer
    implements StructuredSerializer<BuiltAllNotices> {
  @override
  final Iterable<Type> types = const [BuiltAllNotices, _$BuiltAllNotices];
  @override
  final String wireName = 'BuiltAllNotices';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAllNotices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.importance != null) {
      result
        ..add('importance')
        ..add(serializers.serialize(object.importance,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltAllNotices deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllNoticesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'importance':
          result.importance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltNoticeDetailSerializer
    implements StructuredSerializer<BuiltNoticeDetail> {
  @override
  final Iterable<Type> types = const [BuiltNoticeDetail, _$BuiltNoticeDetail];
  @override
  final String wireName = 'BuiltNoticeDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltNoticeDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.upvotes != null) {
      result
        ..add('upvotes')
        ..add(serializers.serialize(object.upvotes,
            specifiedType: const FullType(int)));
    }
    if (object.downvotes != null) {
      result
        ..add('downvotes')
        ..add(serializers.serialize(object.downvotes,
            specifiedType: const FullType(int)));
    }
    if (object.importance != null) {
      result
        ..add('importance')
        ..add(serializers.serialize(object.importance,
            specifiedType: const FullType(int)));
    }
    if (object.has_voted != null) {
      result
        ..add('has_voted')
        ..add(serializers.serialize(object.has_voted,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BuiltNoticeDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltNoticeDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'upvotes':
          result.upvotes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'downvotes':
          result.downvotes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'importance':
          result.importance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'has_voted':
          result.has_voted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NoticeCreatePostSerializer
    implements StructuredSerializer<NoticeCreatePost> {
  @override
  final Iterable<Type> types = const [NoticeCreatePost, _$NoticeCreatePost];
  @override
  final String wireName = 'NoticeCreatePost';

  @override
  Iterable<Object> serialize(Serializers serializers, NoticeCreatePost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.importance != null) {
      result
        ..add('importance')
        ..add(serializers.serialize(object.importance,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  NoticeCreatePost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticeCreatePostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'importance':
          result.importance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateMinuteSerializer implements StructuredSerializer<CreateMinute> {
  @override
  final Iterable<Type> types = const [CreateMinute, _$CreateMinute];
  @override
  final String wireName = 'CreateMinute';

  @override
  Iterable<Object> serialize(Serializers serializers, CreateMinute object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'committee',
      serializers.serialize(object.committee,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CreateMinute deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateMinuteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'committee':
          result.committee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateMinutePostSerializer
    implements StructuredSerializer<CreateMinutePost> {
  @override
  final Iterable<Type> types = const [CreateMinutePost, _$CreateMinutePost];
  @override
  final String wireName = 'CreateMinutePost';

  @override
  Iterable<Object> serialize(Serializers serializers, CreateMinutePost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'committee',
      serializers.serialize(object.committee,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CreateMinutePost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateMinutePostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'committee':
          result.committee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateSuggestionSerializer
    implements StructuredSerializer<CreateSuggestion> {
  @override
  final Iterable<Type> types = const [CreateSuggestion, _$CreateSuggestion];
  @override
  final String wireName = 'CreateSuggestion';

  @override
  Iterable<Object> serialize(Serializers serializers, CreateSuggestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CreateSuggestion deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateSuggestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateSuggestionPostSerializer
    implements StructuredSerializer<CreateSuggestionPost> {
  @override
  final Iterable<Type> types = const [
    CreateSuggestionPost,
    _$CreateSuggestionPost
  ];
  @override
  final String wireName = 'CreateSuggestionPost';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreateSuggestionPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CreateSuggestionPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateSuggestionPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GrievanceCountSerializer
    implements StructuredSerializer<GrievanceCount> {
  @override
  final Iterable<Type> types = const [GrievanceCount, _$GrievanceCount];
  @override
  final String wireName = 'GrievanceCount';

  @override
  Iterable<Object> serialize(Serializers serializers, GrievanceCount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pending != null) {
      result
        ..add('pending')
        ..add(serializers.serialize(object.pending,
            specifiedType: const FullType(int)));
    }
    if (object.registered != null) {
      result
        ..add('registered')
        ..add(serializers.serialize(object.registered,
            specifiedType: const FullType(int)));
    }
    if (object.closed != null) {
      result
        ..add('closed')
        ..add(serializers.serialize(object.closed,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GrievanceCount deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrievanceCountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pending':
          result.pending = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'registered':
          result.registered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'closed':
          result.closed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GrievancePostSerializer implements StructuredSerializer<GrievancePost> {
  @override
  final Iterable<Type> types = const [GrievancePost, _$GrievancePost];
  @override
  final String wireName = 'GrievancePost';

  @override
  Iterable<Object> serialize(Serializers serializers, GrievancePost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'branch',
      serializers.serialize(object.branch,
          specifiedType: const FullType(String)),
      'course',
      serializers.serialize(object.course,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'type_of_complaint',
      serializers.serialize(object.type_of_complaint,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];
    if (object.drive_link != null) {
      result
        ..add('drive_link')
        ..add(serializers.serialize(object.drive_link,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GrievancePost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrievancePostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type_of_complaint':
          result.type_of_complaint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'drive_link':
          result.drive_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GrievanceSerializer implements StructuredSerializer<Grievance> {
  @override
  final Iterable<Type> types = const [Grievance, _$Grievance];
  @override
  final String wireName = 'Grievance';

  @override
  Iterable<Object> serialize(Serializers serializers, Grievance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'branch',
      serializers.serialize(object.branch,
          specifiedType: const FullType(String)),
      'course',
      serializers.serialize(object.course,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'type_of_complaint',
      serializers.serialize(object.type_of_complaint,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
    ];
    if (object.drive_link != null) {
      result
        ..add('drive_link')
        ..add(serializers.serialize(object.drive_link,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Grievance deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrievanceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type_of_complaint':
          result.type_of_complaint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'drive_link':
          result.drive_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LostAndFoundPostSerializer
    implements StructuredSerializer<LostAndFoundPost> {
  @override
  final Iterable<Type> types = const [LostAndFoundPost, _$LostAndFoundPost];
  @override
  final String wireName = 'LostAndFoundPost';

  @override
  Iterable<Object> serialize(Serializers serializers, LostAndFoundPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'branch',
      serializers.serialize(object.branch,
          specifiedType: const FullType(String)),
      'course',
      serializers.serialize(object.course,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'type_of_lost_and_found',
      serializers.serialize(object.type_of_lost_and_found,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];
    if (object.drive_link != null) {
      result
        ..add('drive_link')
        ..add(serializers.serialize(object.drive_link,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LostAndFoundPost deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LostAndFoundPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type_of_lost_and_found':
          result.type_of_lost_and_found = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'drive_link':
          result.drive_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LostAndFoundSerializer implements StructuredSerializer<LostAndFound> {
  @override
  final Iterable<Type> types = const [LostAndFound, _$LostAndFound];
  @override
  final String wireName = 'LostAndFound';

  @override
  Iterable<Object> serialize(Serializers serializers, LostAndFound object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'branch',
      serializers.serialize(object.branch,
          specifiedType: const FullType(String)),
      'course',
      serializers.serialize(object.course,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'type_of_lost_and_found',
      serializers.serialize(object.type_of_lost_and_found,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];
    if (object.drive_link != null) {
      result
        ..add('drive_link')
        ..add(serializers.serialize(object.drive_link,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LostAndFound deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LostAndFoundBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type_of_lost_and_found':
          result.type_of_lost_and_found = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'drive_link':
          result.drive_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ConfigVar extends ConfigVar {
  @override
  final String name;
  @override
  final String value;

  factory _$ConfigVar([void Function(ConfigVarBuilder) updates]) =>
      (new ConfigVarBuilder()..update(updates)).build();

  _$ConfigVar._({this.name, this.value}) : super._();

  @override
  ConfigVar rebuild(void Function(ConfigVarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigVarBuilder toBuilder() => new ConfigVarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigVar && name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfigVar')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class ConfigVarBuilder implements Builder<ConfigVar, ConfigVarBuilder> {
  _$ConfigVar _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ConfigVarBuilder();

  ConfigVarBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigVar other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConfigVar;
  }

  @override
  void update(void Function(ConfigVarBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfigVar build() {
    final _$result = _$v ?? new _$ConfigVar._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

class _$EntityListPost extends EntityListPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String small_image_url;
  @override
  final String large_image_url;
  @override
  final bool is_permanent;
  @override
  final bool is_highlighted;

  factory _$EntityListPost([void Function(EntityListPostBuilder) updates]) =>
      (new EntityListPostBuilder()..update(updates)).build();

  _$EntityListPost._(
      {this.id,
      this.name,
      this.small_image_url,
      this.large_image_url,
      this.is_permanent,
      this.is_highlighted})
      : super._();

  @override
  EntityListPost rebuild(void Function(EntityListPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityListPostBuilder toBuilder() =>
      new EntityListPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityListPost &&
        id == other.id &&
        name == other.name &&
        small_image_url == other.small_image_url &&
        large_image_url == other.large_image_url &&
        is_permanent == other.is_permanent &&
        is_highlighted == other.is_highlighted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), name.hashCode),
                    small_image_url.hashCode),
                large_image_url.hashCode),
            is_permanent.hashCode),
        is_highlighted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EntityListPost')
          ..add('id', id)
          ..add('name', name)
          ..add('small_image_url', small_image_url)
          ..add('large_image_url', large_image_url)
          ..add('is_permanent', is_permanent)
          ..add('is_highlighted', is_highlighted))
        .toString();
  }
}

class EntityListPostBuilder
    implements Builder<EntityListPost, EntityListPostBuilder> {
  _$EntityListPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _small_image_url;
  String get small_image_url => _$this._small_image_url;
  set small_image_url(String small_image_url) =>
      _$this._small_image_url = small_image_url;

  String _large_image_url;
  String get large_image_url => _$this._large_image_url;
  set large_image_url(String large_image_url) =>
      _$this._large_image_url = large_image_url;

  bool _is_permanent;
  bool get is_permanent => _$this._is_permanent;
  set is_permanent(bool is_permanent) => _$this._is_permanent = is_permanent;

  bool _is_highlighted;
  bool get is_highlighted => _$this._is_highlighted;
  set is_highlighted(bool is_highlighted) =>
      _$this._is_highlighted = is_highlighted;

  EntityListPostBuilder();

  EntityListPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _small_image_url = _$v.small_image_url;
      _large_image_url = _$v.large_image_url;
      _is_permanent = _$v.is_permanent;
      _is_highlighted = _$v.is_highlighted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityListPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EntityListPost;
  }

  @override
  void update(void Function(EntityListPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EntityListPost build() {
    final _$result = _$v ??
        new _$EntityListPost._(
            id: id,
            name: name,
            small_image_url: small_image_url,
            large_image_url: large_image_url,
            is_permanent: is_permanent,
            is_highlighted: is_highlighted);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltEntityPost extends BuiltEntityPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final BuiltList<SecyPost> point_of_contact;
  @override
  final String small_image_url;
  @override
  final String large_image_url;
  @override
  final bool is_subscribed;
  @override
  final int subscribed_users;
  @override
  final bool is_permanent;
  @override
  final bool is_highlighted;
  @override
  final bool is_por_holder;
  @override
  final String website_url;
  @override
  final String facebook_url;
  @override
  final String twitter_url;
  @override
  final String instagram_url;
  @override
  final String linkedin_url;
  @override
  final String youtube_url;

  factory _$BuiltEntityPost([void Function(BuiltEntityPostBuilder) updates]) =>
      (new BuiltEntityPostBuilder()..update(updates)).build();

  _$BuiltEntityPost._(
      {this.id,
      this.name,
      this.description,
      this.point_of_contact,
      this.small_image_url,
      this.large_image_url,
      this.is_subscribed,
      this.subscribed_users,
      this.is_permanent,
      this.is_highlighted,
      this.is_por_holder,
      this.website_url,
      this.facebook_url,
      this.twitter_url,
      this.instagram_url,
      this.linkedin_url,
      this.youtube_url})
      : super._();

  @override
  BuiltEntityPost rebuild(void Function(BuiltEntityPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltEntityPostBuilder toBuilder() =>
      new BuiltEntityPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltEntityPost &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        point_of_contact == other.point_of_contact &&
        small_image_url == other.small_image_url &&
        large_image_url == other.large_image_url &&
        is_subscribed == other.is_subscribed &&
        subscribed_users == other.subscribed_users &&
        is_permanent == other.is_permanent &&
        is_highlighted == other.is_highlighted &&
        is_por_holder == other.is_por_holder &&
        website_url == other.website_url &&
        facebook_url == other.facebook_url &&
        twitter_url == other.twitter_url &&
        instagram_url == other.instagram_url &&
        linkedin_url == other.linkedin_url &&
        youtube_url == other.youtube_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            point_of_contact
                                                                .hashCode),
                                                        small_image_url
                                                            .hashCode),
                                                    large_image_url.hashCode),
                                                is_subscribed.hashCode),
                                            subscribed_users.hashCode),
                                        is_permanent.hashCode),
                                    is_highlighted.hashCode),
                                is_por_holder.hashCode),
                            website_url.hashCode),
                        facebook_url.hashCode),
                    twitter_url.hashCode),
                instagram_url.hashCode),
            linkedin_url.hashCode),
        youtube_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltEntityPost')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('point_of_contact', point_of_contact)
          ..add('small_image_url', small_image_url)
          ..add('large_image_url', large_image_url)
          ..add('is_subscribed', is_subscribed)
          ..add('subscribed_users', subscribed_users)
          ..add('is_permanent', is_permanent)
          ..add('is_highlighted', is_highlighted)
          ..add('is_por_holder', is_por_holder)
          ..add('website_url', website_url)
          ..add('facebook_url', facebook_url)
          ..add('twitter_url', twitter_url)
          ..add('instagram_url', instagram_url)
          ..add('linkedin_url', linkedin_url)
          ..add('youtube_url', youtube_url))
        .toString();
  }
}

class BuiltEntityPostBuilder
    implements Builder<BuiltEntityPost, BuiltEntityPostBuilder> {
  _$BuiltEntityPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<SecyPost> _point_of_contact;
  ListBuilder<SecyPost> get point_of_contact =>
      _$this._point_of_contact ??= new ListBuilder<SecyPost>();
  set point_of_contact(ListBuilder<SecyPost> point_of_contact) =>
      _$this._point_of_contact = point_of_contact;

  String _small_image_url;
  String get small_image_url => _$this._small_image_url;
  set small_image_url(String small_image_url) =>
      _$this._small_image_url = small_image_url;

  String _large_image_url;
  String get large_image_url => _$this._large_image_url;
  set large_image_url(String large_image_url) =>
      _$this._large_image_url = large_image_url;

  bool _is_subscribed;
  bool get is_subscribed => _$this._is_subscribed;
  set is_subscribed(bool is_subscribed) =>
      _$this._is_subscribed = is_subscribed;

  int _subscribed_users;
  int get subscribed_users => _$this._subscribed_users;
  set subscribed_users(int subscribed_users) =>
      _$this._subscribed_users = subscribed_users;

  bool _is_permanent;
  bool get is_permanent => _$this._is_permanent;
  set is_permanent(bool is_permanent) => _$this._is_permanent = is_permanent;

  bool _is_highlighted;
  bool get is_highlighted => _$this._is_highlighted;
  set is_highlighted(bool is_highlighted) =>
      _$this._is_highlighted = is_highlighted;

  bool _is_por_holder;
  bool get is_por_holder => _$this._is_por_holder;
  set is_por_holder(bool is_por_holder) =>
      _$this._is_por_holder = is_por_holder;

  String _website_url;
  String get website_url => _$this._website_url;
  set website_url(String website_url) => _$this._website_url = website_url;

  String _facebook_url;
  String get facebook_url => _$this._facebook_url;
  set facebook_url(String facebook_url) => _$this._facebook_url = facebook_url;

  String _twitter_url;
  String get twitter_url => _$this._twitter_url;
  set twitter_url(String twitter_url) => _$this._twitter_url = twitter_url;

  String _instagram_url;
  String get instagram_url => _$this._instagram_url;
  set instagram_url(String instagram_url) =>
      _$this._instagram_url = instagram_url;

  String _linkedin_url;
  String get linkedin_url => _$this._linkedin_url;
  set linkedin_url(String linkedin_url) => _$this._linkedin_url = linkedin_url;

  String _youtube_url;
  String get youtube_url => _$this._youtube_url;
  set youtube_url(String youtube_url) => _$this._youtube_url = youtube_url;

  BuiltEntityPostBuilder();

  BuiltEntityPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _point_of_contact = _$v.point_of_contact?.toBuilder();
      _small_image_url = _$v.small_image_url;
      _large_image_url = _$v.large_image_url;
      _is_subscribed = _$v.is_subscribed;
      _subscribed_users = _$v.subscribed_users;
      _is_permanent = _$v.is_permanent;
      _is_highlighted = _$v.is_highlighted;
      _is_por_holder = _$v.is_por_holder;
      _website_url = _$v.website_url;
      _facebook_url = _$v.facebook_url;
      _twitter_url = _$v.twitter_url;
      _instagram_url = _$v.instagram_url;
      _linkedin_url = _$v.linkedin_url;
      _youtube_url = _$v.youtube_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltEntityPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltEntityPost;
  }

  @override
  void update(void Function(BuiltEntityPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltEntityPost build() {
    _$BuiltEntityPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltEntityPost._(
              id: id,
              name: name,
              description: description,
              point_of_contact: _point_of_contact?.build(),
              small_image_url: small_image_url,
              large_image_url: large_image_url,
              is_subscribed: is_subscribed,
              subscribed_users: subscribed_users,
              is_permanent: is_permanent,
              is_highlighted: is_highlighted,
              is_por_holder: is_por_holder,
              website_url: website_url,
              facebook_url: facebook_url,
              twitter_url: twitter_url,
              instagram_url: instagram_url,
              linkedin_url: linkedin_url,
              youtube_url: youtube_url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'point_of_contact';
        _point_of_contact?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltEntityPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TagCreate extends TagCreate {
  @override
  final int id;
  @override
  final String tag_name;

  factory _$TagCreate([void Function(TagCreateBuilder) updates]) =>
      (new TagCreateBuilder()..update(updates)).build();

  _$TagCreate._({this.id, this.tag_name}) : super._() {
    if (tag_name == null) {
      throw new BuiltValueNullFieldError('TagCreate', 'tag_name');
    }
  }

  @override
  TagCreate rebuild(void Function(TagCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagCreateBuilder toBuilder() => new TagCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagCreate && id == other.id && tag_name == other.tag_name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), tag_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagCreate')
          ..add('id', id)
          ..add('tag_name', tag_name))
        .toString();
  }
}

class TagCreateBuilder implements Builder<TagCreate, TagCreateBuilder> {
  _$TagCreate _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _tag_name;
  String get tag_name => _$this._tag_name;
  set tag_name(String tag_name) => _$this._tag_name = tag_name;

  TagCreateBuilder();

  TagCreateBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _tag_name = _$v.tag_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagCreate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TagCreate;
  }

  @override
  void update(void Function(TagCreateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TagCreate build() {
    final _$result = _$v ?? new _$TagCreate._(id: id, tag_name: tag_name);
    replace(_$result);
    return _$result;
  }
}

class _$TagDelete extends TagDelete {
  @override
  final String tag_name;

  factory _$TagDelete([void Function(TagDeleteBuilder) updates]) =>
      (new TagDeleteBuilder()..update(updates)).build();

  _$TagDelete._({this.tag_name}) : super._() {
    if (tag_name == null) {
      throw new BuiltValueNullFieldError('TagDelete', 'tag_name');
    }
  }

  @override
  TagDelete rebuild(void Function(TagDeleteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagDeleteBuilder toBuilder() => new TagDeleteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagDelete && tag_name == other.tag_name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tag_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagDelete')..add('tag_name', tag_name))
        .toString();
  }
}

class TagDeleteBuilder implements Builder<TagDelete, TagDeleteBuilder> {
  _$TagDelete _$v;

  String _tag_name;
  String get tag_name => _$this._tag_name;
  set tag_name(String tag_name) => _$this._tag_name = tag_name;

  TagDeleteBuilder();

  TagDeleteBuilder get _$this {
    if (_$v != null) {
      _tag_name = _$v.tag_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagDelete other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TagDelete;
  }

  @override
  void update(void Function(TagDeleteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TagDelete build() {
    final _$result = _$v ?? new _$TagDelete._(tag_name: tag_name);
    replace(_$result);
    return _$result;
  }
}

class _$TagSearch extends TagSearch {
  @override
  final int id;
  @override
  final String tag_name;

  factory _$TagSearch([void Function(TagSearchBuilder) updates]) =>
      (new TagSearchBuilder()..update(updates)).build();

  _$TagSearch._({this.id, this.tag_name}) : super._() {
    if (tag_name == null) {
      throw new BuiltValueNullFieldError('TagSearch', 'tag_name');
    }
  }

  @override
  TagSearch rebuild(void Function(TagSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagSearchBuilder toBuilder() => new TagSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagSearch && id == other.id && tag_name == other.tag_name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), tag_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagSearch')
          ..add('id', id)
          ..add('tag_name', tag_name))
        .toString();
  }
}

class TagSearchBuilder implements Builder<TagSearch, TagSearchBuilder> {
  _$TagSearch _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _tag_name;
  String get tag_name => _$this._tag_name;
  set tag_name(String tag_name) => _$this._tag_name = tag_name;

  TagSearchBuilder();

  TagSearchBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _tag_name = _$v.tag_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagSearch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TagSearch;
  }

  @override
  void update(void Function(TagSearchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TagSearch build() {
    final _$result = _$v ?? new _$TagSearch._(id: id, tag_name: tag_name);
    replace(_$result);
    return _$result;
  }
}

class _$TagDetail extends TagDetail {
  @override
  final int id;
  @override
  final String tag_name;
  @override
  final ClubListPost club;
  @override
  final EntityListPost entity;

  factory _$TagDetail([void Function(TagDetailBuilder) updates]) =>
      (new TagDetailBuilder()..update(updates)).build();

  _$TagDetail._({this.id, this.tag_name, this.club, this.entity}) : super._() {
    if (tag_name == null) {
      throw new BuiltValueNullFieldError('TagDetail', 'tag_name');
    }
  }

  @override
  TagDetail rebuild(void Function(TagDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagDetailBuilder toBuilder() => new TagDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagDetail &&
        id == other.id &&
        tag_name == other.tag_name &&
        club == other.club &&
        entity == other.entity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), tag_name.hashCode), club.hashCode),
        entity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagDetail')
          ..add('id', id)
          ..add('tag_name', tag_name)
          ..add('club', club)
          ..add('entity', entity))
        .toString();
  }
}

class TagDetailBuilder implements Builder<TagDetail, TagDetailBuilder> {
  _$TagDetail _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _tag_name;
  String get tag_name => _$this._tag_name;
  set tag_name(String tag_name) => _$this._tag_name = tag_name;

  ClubListPostBuilder _club;
  ClubListPostBuilder get club => _$this._club ??= new ClubListPostBuilder();
  set club(ClubListPostBuilder club) => _$this._club = club;

  EntityListPostBuilder _entity;
  EntityListPostBuilder get entity =>
      _$this._entity ??= new EntityListPostBuilder();
  set entity(EntityListPostBuilder entity) => _$this._entity = entity;

  TagDetailBuilder();

  TagDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _tag_name = _$v.tag_name;
      _club = _$v.club?.toBuilder();
      _entity = _$v.entity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TagDetail;
  }

  @override
  void update(void Function(TagDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TagDetail build() {
    _$TagDetail _$result;
    try {
      _$result = _$v ??
          new _$TagDetail._(
              id: id,
              tag_name: tag_name,
              club: _club?.build(),
              entity: _entity?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'club';
        _club?.build();
        _$failedField = 'entity';
        _entity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TagDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ClubTags extends ClubTags {
  @override
  final BuiltList<TagDetail> club_tags;

  factory _$ClubTags([void Function(ClubTagsBuilder) updates]) =>
      (new ClubTagsBuilder()..update(updates)).build();

  _$ClubTags._({this.club_tags}) : super._();

  @override
  ClubTags rebuild(void Function(ClubTagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubTagsBuilder toBuilder() => new ClubTagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClubTags && club_tags == other.club_tags;
  }

  @override
  int get hashCode {
    return $jf($jc(0, club_tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClubTags')
          ..add('club_tags', club_tags))
        .toString();
  }
}

class ClubTagsBuilder implements Builder<ClubTags, ClubTagsBuilder> {
  _$ClubTags _$v;

  ListBuilder<TagDetail> _club_tags;
  ListBuilder<TagDetail> get club_tags =>
      _$this._club_tags ??= new ListBuilder<TagDetail>();
  set club_tags(ListBuilder<TagDetail> club_tags) =>
      _$this._club_tags = club_tags;

  ClubTagsBuilder();

  ClubTagsBuilder get _$this {
    if (_$v != null) {
      _club_tags = _$v.club_tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClubTags other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClubTags;
  }

  @override
  void update(void Function(ClubTagsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClubTags build() {
    _$ClubTags _$result;
    try {
      _$result = _$v ?? new _$ClubTags._(club_tags: _club_tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'club_tags';
        _club_tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClubTags', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EntityTags extends EntityTags {
  @override
  final BuiltList<TagDetail> entity_tags;

  factory _$EntityTags([void Function(EntityTagsBuilder) updates]) =>
      (new EntityTagsBuilder()..update(updates)).build();

  _$EntityTags._({this.entity_tags}) : super._();

  @override
  EntityTags rebuild(void Function(EntityTagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityTagsBuilder toBuilder() => new EntityTagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTags && entity_tags == other.entity_tags;
  }

  @override
  int get hashCode {
    return $jf($jc(0, entity_tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EntityTags')
          ..add('entity_tags', entity_tags))
        .toString();
  }
}

class EntityTagsBuilder implements Builder<EntityTags, EntityTagsBuilder> {
  _$EntityTags _$v;

  ListBuilder<TagDetail> _entity_tags;
  ListBuilder<TagDetail> get entity_tags =>
      _$this._entity_tags ??= new ListBuilder<TagDetail>();
  set entity_tags(ListBuilder<TagDetail> entity_tags) =>
      _$this._entity_tags = entity_tags;

  EntityTagsBuilder();

  EntityTagsBuilder get _$this {
    if (_$v != null) {
      _entity_tags = _$v.entity_tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityTags other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EntityTags;
  }

  @override
  void update(void Function(EntityTagsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EntityTags build() {
    _$EntityTags _$result;
    try {
      _$result = _$v ?? new _$EntityTags._(entity_tags: _entity_tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'entity_tags';
        _entity_tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EntityTags', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WorkshopResources extends WorkshopResources {
  @override
  final int id;
  @override
  final String name;
  @override
  final String link;
  @override
  final String resource_type;

  factory _$WorkshopResources(
          [void Function(WorkshopResourcesBuilder) updates]) =>
      (new WorkshopResourcesBuilder()..update(updates)).build();

  _$WorkshopResources._({this.id, this.name, this.link, this.resource_type})
      : super._();

  @override
  WorkshopResources rebuild(void Function(WorkshopResourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkshopResourcesBuilder toBuilder() =>
      new WorkshopResourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkshopResources &&
        id == other.id &&
        name == other.name &&
        link == other.link &&
        resource_type == other.resource_type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), name.hashCode), link.hashCode),
        resource_type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkshopResources')
          ..add('id', id)
          ..add('name', name)
          ..add('link', link)
          ..add('resource_type', resource_type))
        .toString();
  }
}

class WorkshopResourcesBuilder
    implements Builder<WorkshopResources, WorkshopResourcesBuilder> {
  _$WorkshopResources _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _resource_type;
  String get resource_type => _$this._resource_type;
  set resource_type(String resource_type) =>
      _$this._resource_type = resource_type;

  WorkshopResourcesBuilder();

  WorkshopResourcesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _link = _$v.link;
      _resource_type = _$v.resource_type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkshopResources other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkshopResources;
  }

  @override
  void update(void Function(WorkshopResourcesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkshopResources build() {
    final _$result = _$v ??
        new _$WorkshopResources._(
            id: id, name: name, link: link, resource_type: resource_type);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltAllWorkshopsPost extends BuiltAllWorkshopsPost {
  @override
  final BuiltList<BuiltWorkshopSummaryPost> active_workshops;
  @override
  final BuiltList<BuiltWorkshopSummaryPost> past_workshops;

  factory _$BuiltAllWorkshopsPost(
          [void Function(BuiltAllWorkshopsPostBuilder) updates]) =>
      (new BuiltAllWorkshopsPostBuilder()..update(updates)).build();

  _$BuiltAllWorkshopsPost._({this.active_workshops, this.past_workshops})
      : super._();

  @override
  BuiltAllWorkshopsPost rebuild(
          void Function(BuiltAllWorkshopsPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllWorkshopsPostBuilder toBuilder() =>
      new BuiltAllWorkshopsPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllWorkshopsPost &&
        active_workshops == other.active_workshops &&
        past_workshops == other.past_workshops;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, active_workshops.hashCode), past_workshops.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllWorkshopsPost')
          ..add('active_workshops', active_workshops)
          ..add('past_workshops', past_workshops))
        .toString();
  }
}

class BuiltAllWorkshopsPostBuilder
    implements Builder<BuiltAllWorkshopsPost, BuiltAllWorkshopsPostBuilder> {
  _$BuiltAllWorkshopsPost _$v;

  ListBuilder<BuiltWorkshopSummaryPost> _active_workshops;
  ListBuilder<BuiltWorkshopSummaryPost> get active_workshops =>
      _$this._active_workshops ??= new ListBuilder<BuiltWorkshopSummaryPost>();
  set active_workshops(
          ListBuilder<BuiltWorkshopSummaryPost> active_workshops) =>
      _$this._active_workshops = active_workshops;

  ListBuilder<BuiltWorkshopSummaryPost> _past_workshops;
  ListBuilder<BuiltWorkshopSummaryPost> get past_workshops =>
      _$this._past_workshops ??= new ListBuilder<BuiltWorkshopSummaryPost>();
  set past_workshops(ListBuilder<BuiltWorkshopSummaryPost> past_workshops) =>
      _$this._past_workshops = past_workshops;

  BuiltAllWorkshopsPostBuilder();

  BuiltAllWorkshopsPostBuilder get _$this {
    if (_$v != null) {
      _active_workshops = _$v.active_workshops?.toBuilder();
      _past_workshops = _$v.past_workshops?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllWorkshopsPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAllWorkshopsPost;
  }

  @override
  void update(void Function(BuiltAllWorkshopsPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllWorkshopsPost build() {
    _$BuiltAllWorkshopsPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltAllWorkshopsPost._(
              active_workshops: _active_workshops?.build(),
              past_workshops: _past_workshops?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'active_workshops';
        _active_workshops?.build();
        _$failedField = 'past_workshops';
        _past_workshops?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAllWorkshopsPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltWorkshopSummaryPost extends BuiltWorkshopSummaryPost {
  @override
  final int id;
  @override
  final ClubListPost club;
  @override
  final EntityListPost entity;
  @override
  final String title;
  @override
  final String date;
  @override
  final bool is_workshop;
  @override
  final String time;
  @override
  final String image_url;
  @override
  final BuiltList<TagDetail> tags;

  factory _$BuiltWorkshopSummaryPost(
          [void Function(BuiltWorkshopSummaryPostBuilder) updates]) =>
      (new BuiltWorkshopSummaryPostBuilder()..update(updates)).build();

  _$BuiltWorkshopSummaryPost._(
      {this.id,
      this.club,
      this.entity,
      this.title,
      this.date,
      this.is_workshop,
      this.time,
      this.image_url,
      this.tags})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltWorkshopSummaryPost', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('BuiltWorkshopSummaryPost', 'date');
    }
    if (is_workshop == null) {
      throw new BuiltValueNullFieldError(
          'BuiltWorkshopSummaryPost', 'is_workshop');
    }
  }

  @override
  BuiltWorkshopSummaryPost rebuild(
          void Function(BuiltWorkshopSummaryPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltWorkshopSummaryPostBuilder toBuilder() =>
      new BuiltWorkshopSummaryPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltWorkshopSummaryPost &&
        id == other.id &&
        club == other.club &&
        entity == other.entity &&
        title == other.title &&
        date == other.date &&
        is_workshop == other.is_workshop &&
        time == other.time &&
        image_url == other.image_url &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), club.hashCode),
                                entity.hashCode),
                            title.hashCode),
                        date.hashCode),
                    is_workshop.hashCode),
                time.hashCode),
            image_url.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltWorkshopSummaryPost')
          ..add('id', id)
          ..add('club', club)
          ..add('entity', entity)
          ..add('title', title)
          ..add('date', date)
          ..add('is_workshop', is_workshop)
          ..add('time', time)
          ..add('image_url', image_url)
          ..add('tags', tags))
        .toString();
  }
}

class BuiltWorkshopSummaryPostBuilder
    implements
        Builder<BuiltWorkshopSummaryPost, BuiltWorkshopSummaryPostBuilder> {
  _$BuiltWorkshopSummaryPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ClubListPostBuilder _club;
  ClubListPostBuilder get club => _$this._club ??= new ClubListPostBuilder();
  set club(ClubListPostBuilder club) => _$this._club = club;

  EntityListPostBuilder _entity;
  EntityListPostBuilder get entity =>
      _$this._entity ??= new EntityListPostBuilder();
  set entity(EntityListPostBuilder entity) => _$this._entity = entity;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  bool _is_workshop;
  bool get is_workshop => _$this._is_workshop;
  set is_workshop(bool is_workshop) => _$this._is_workshop = is_workshop;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  String _image_url;
  String get image_url => _$this._image_url;
  set image_url(String image_url) => _$this._image_url = image_url;

  ListBuilder<TagDetail> _tags;
  ListBuilder<TagDetail> get tags =>
      _$this._tags ??= new ListBuilder<TagDetail>();
  set tags(ListBuilder<TagDetail> tags) => _$this._tags = tags;

  BuiltWorkshopSummaryPostBuilder();

  BuiltWorkshopSummaryPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _club = _$v.club?.toBuilder();
      _entity = _$v.entity?.toBuilder();
      _title = _$v.title;
      _date = _$v.date;
      _is_workshop = _$v.is_workshop;
      _time = _$v.time;
      _image_url = _$v.image_url;
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltWorkshopSummaryPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltWorkshopSummaryPost;
  }

  @override
  void update(void Function(BuiltWorkshopSummaryPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltWorkshopSummaryPost build() {
    _$BuiltWorkshopSummaryPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltWorkshopSummaryPost._(
              id: id,
              club: _club?.build(),
              entity: _entity?.build(),
              title: title,
              date: date,
              is_workshop: is_workshop,
              time: time,
              image_url: image_url,
              tags: _tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'club';
        _club?.build();
        _$failedField = 'entity';
        _entity?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltWorkshopSummaryPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltWorkshopDetailPost extends BuiltWorkshopDetailPost {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final ClubListPost club;
  @override
  final EntityListPost entity;
  @override
  final String date;
  @override
  final bool is_workshop;
  @override
  final String time;
  @override
  final String location;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String audience;
  @override
  final BuiltList<WorkshopResources> resources;
  @override
  final BuiltList<ContactPost> contacts;
  @override
  final String image_url;
  @override
  final bool is_interested;
  @override
  final int interested_users;
  @override
  final bool is_workshop_contact;
  @override
  final bool is_por_holder;
  @override
  final BuiltList<TagDetail> tags;
  @override
  final String link;

  factory _$BuiltWorkshopDetailPost(
          [void Function(BuiltWorkshopDetailPostBuilder) updates]) =>
      (new BuiltWorkshopDetailPostBuilder()..update(updates)).build();

  _$BuiltWorkshopDetailPost._(
      {this.id,
      this.title,
      this.description,
      this.club,
      this.entity,
      this.date,
      this.is_workshop,
      this.time,
      this.location,
      this.latitude,
      this.longitude,
      this.audience,
      this.resources,
      this.contacts,
      this.image_url,
      this.is_interested,
      this.interested_users,
      this.is_workshop_contact,
      this.is_por_holder,
      this.tags,
      this.link})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltWorkshopDetailPost', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('BuiltWorkshopDetailPost', 'date');
    }
    if (is_workshop == null) {
      throw new BuiltValueNullFieldError(
          'BuiltWorkshopDetailPost', 'is_workshop');
    }
  }

  @override
  BuiltWorkshopDetailPost rebuild(
          void Function(BuiltWorkshopDetailPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltWorkshopDetailPostBuilder toBuilder() =>
      new BuiltWorkshopDetailPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltWorkshopDetailPost &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        club == other.club &&
        entity == other.entity &&
        date == other.date &&
        is_workshop == other.is_workshop &&
        time == other.time &&
        location == other.location &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        audience == other.audience &&
        resources == other.resources &&
        contacts == other.contacts &&
        image_url == other.image_url &&
        is_interested == other.is_interested &&
        interested_users == other.interested_users &&
        is_workshop_contact == other.is_workshop_contact &&
        is_por_holder == other.is_por_holder &&
        tags == other.tags &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, id.hashCode), title.hashCode),
                                                                                description.hashCode),
                                                                            club.hashCode),
                                                                        entity.hashCode),
                                                                    date.hashCode),
                                                                is_workshop.hashCode),
                                                            time.hashCode),
                                                        location.hashCode),
                                                    latitude.hashCode),
                                                longitude.hashCode),
                                            audience.hashCode),
                                        resources.hashCode),
                                    contacts.hashCode),
                                image_url.hashCode),
                            is_interested.hashCode),
                        interested_users.hashCode),
                    is_workshop_contact.hashCode),
                is_por_holder.hashCode),
            tags.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltWorkshopDetailPost')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('club', club)
          ..add('entity', entity)
          ..add('date', date)
          ..add('is_workshop', is_workshop)
          ..add('time', time)
          ..add('location', location)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('audience', audience)
          ..add('resources', resources)
          ..add('contacts', contacts)
          ..add('image_url', image_url)
          ..add('is_interested', is_interested)
          ..add('interested_users', interested_users)
          ..add('is_workshop_contact', is_workshop_contact)
          ..add('is_por_holder', is_por_holder)
          ..add('tags', tags)
          ..add('link', link))
        .toString();
  }
}

class BuiltWorkshopDetailPostBuilder
    implements
        Builder<BuiltWorkshopDetailPost, BuiltWorkshopDetailPostBuilder> {
  _$BuiltWorkshopDetailPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ClubListPostBuilder _club;
  ClubListPostBuilder get club => _$this._club ??= new ClubListPostBuilder();
  set club(ClubListPostBuilder club) => _$this._club = club;

  EntityListPostBuilder _entity;
  EntityListPostBuilder get entity =>
      _$this._entity ??= new EntityListPostBuilder();
  set entity(EntityListPostBuilder entity) => _$this._entity = entity;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  bool _is_workshop;
  bool get is_workshop => _$this._is_workshop;
  set is_workshop(bool is_workshop) => _$this._is_workshop = is_workshop;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _audience;
  String get audience => _$this._audience;
  set audience(String audience) => _$this._audience = audience;

  ListBuilder<WorkshopResources> _resources;
  ListBuilder<WorkshopResources> get resources =>
      _$this._resources ??= new ListBuilder<WorkshopResources>();
  set resources(ListBuilder<WorkshopResources> resources) =>
      _$this._resources = resources;

  ListBuilder<ContactPost> _contacts;
  ListBuilder<ContactPost> get contacts =>
      _$this._contacts ??= new ListBuilder<ContactPost>();
  set contacts(ListBuilder<ContactPost> contacts) =>
      _$this._contacts = contacts;

  String _image_url;
  String get image_url => _$this._image_url;
  set image_url(String image_url) => _$this._image_url = image_url;

  bool _is_interested;
  bool get is_interested => _$this._is_interested;
  set is_interested(bool is_interested) =>
      _$this._is_interested = is_interested;

  int _interested_users;
  int get interested_users => _$this._interested_users;
  set interested_users(int interested_users) =>
      _$this._interested_users = interested_users;

  bool _is_workshop_contact;
  bool get is_workshop_contact => _$this._is_workshop_contact;
  set is_workshop_contact(bool is_workshop_contact) =>
      _$this._is_workshop_contact = is_workshop_contact;

  bool _is_por_holder;
  bool get is_por_holder => _$this._is_por_holder;
  set is_por_holder(bool is_por_holder) =>
      _$this._is_por_holder = is_por_holder;

  ListBuilder<TagDetail> _tags;
  ListBuilder<TagDetail> get tags =>
      _$this._tags ??= new ListBuilder<TagDetail>();
  set tags(ListBuilder<TagDetail> tags) => _$this._tags = tags;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  BuiltWorkshopDetailPostBuilder();

  BuiltWorkshopDetailPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _club = _$v.club?.toBuilder();
      _entity = _$v.entity?.toBuilder();
      _date = _$v.date;
      _is_workshop = _$v.is_workshop;
      _time = _$v.time;
      _location = _$v.location;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _audience = _$v.audience;
      _resources = _$v.resources?.toBuilder();
      _contacts = _$v.contacts?.toBuilder();
      _image_url = _$v.image_url;
      _is_interested = _$v.is_interested;
      _interested_users = _$v.interested_users;
      _is_workshop_contact = _$v.is_workshop_contact;
      _is_por_holder = _$v.is_por_holder;
      _tags = _$v.tags?.toBuilder();
      _link = _$v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltWorkshopDetailPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltWorkshopDetailPost;
  }

  @override
  void update(void Function(BuiltWorkshopDetailPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltWorkshopDetailPost build() {
    _$BuiltWorkshopDetailPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltWorkshopDetailPost._(
              id: id,
              title: title,
              description: description,
              club: _club?.build(),
              entity: _entity?.build(),
              date: date,
              is_workshop: is_workshop,
              time: time,
              location: location,
              latitude: latitude,
              longitude: longitude,
              audience: audience,
              resources: _resources?.build(),
              contacts: _contacts?.build(),
              image_url: image_url,
              is_interested: is_interested,
              interested_users: interested_users,
              is_workshop_contact: is_workshop_contact,
              is_por_holder: is_por_holder,
              tags: _tags?.build(),
              link: link);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'club';
        _club?.build();
        _$failedField = 'entity';
        _entity?.build();

        _$failedField = 'resources';
        _resources?.build();
        _$failedField = 'contacts';
        _contacts?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltWorkshopDetailPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ContactPost extends ContactPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone_number;
  @override
  final String photo_url;

  factory _$ContactPost([void Function(ContactPostBuilder) updates]) =>
      (new ContactPostBuilder()..update(updates)).build();

  _$ContactPost._(
      {this.id, this.name, this.email, this.phone_number, this.photo_url})
      : super._();

  @override
  ContactPost rebuild(void Function(ContactPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactPostBuilder toBuilder() => new ContactPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactPost &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone_number == other.phone_number &&
        photo_url == other.photo_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), email.hashCode),
            phone_number.hashCode),
        photo_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactPost')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('phone_number', phone_number)
          ..add('photo_url', photo_url))
        .toString();
  }
}

class ContactPostBuilder implements Builder<ContactPost, ContactPostBuilder> {
  _$ContactPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  String _photo_url;
  String get photo_url => _$this._photo_url;
  set photo_url(String photo_url) => _$this._photo_url = photo_url;

  ContactPostBuilder();

  ContactPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _email = _$v.email;
      _phone_number = _$v.phone_number;
      _photo_url = _$v.photo_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactPost;
  }

  @override
  void update(void Function(ContactPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactPost build() {
    final _$result = _$v ??
        new _$ContactPost._(
            id: id,
            name: name,
            email: email,
            phone_number: phone_number,
            photo_url: photo_url);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltWorkshopSearchByStringPost
    extends BuiltWorkshopSearchByStringPost {
  @override
  final String search_by;
  @override
  final String search_string;

  factory _$BuiltWorkshopSearchByStringPost(
          [void Function(BuiltWorkshopSearchByStringPostBuilder) updates]) =>
      (new BuiltWorkshopSearchByStringPostBuilder()..update(updates)).build();

  _$BuiltWorkshopSearchByStringPost._({this.search_by, this.search_string})
      : super._();

  @override
  BuiltWorkshopSearchByStringPost rebuild(
          void Function(BuiltWorkshopSearchByStringPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltWorkshopSearchByStringPostBuilder toBuilder() =>
      new BuiltWorkshopSearchByStringPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltWorkshopSearchByStringPost &&
        search_by == other.search_by &&
        search_string == other.search_string;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, search_by.hashCode), search_string.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltWorkshopSearchByStringPost')
          ..add('search_by', search_by)
          ..add('search_string', search_string))
        .toString();
  }
}

class BuiltWorkshopSearchByStringPostBuilder
    implements
        Builder<BuiltWorkshopSearchByStringPost,
            BuiltWorkshopSearchByStringPostBuilder> {
  _$BuiltWorkshopSearchByStringPost _$v;

  String _search_by;
  String get search_by => _$this._search_by;
  set search_by(String search_by) => _$this._search_by = search_by;

  String _search_string;
  String get search_string => _$this._search_string;
  set search_string(String search_string) =>
      _$this._search_string = search_string;

  BuiltWorkshopSearchByStringPostBuilder();

  BuiltWorkshopSearchByStringPostBuilder get _$this {
    if (_$v != null) {
      _search_by = _$v.search_by;
      _search_string = _$v.search_string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltWorkshopSearchByStringPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltWorkshopSearchByStringPost;
  }

  @override
  void update(void Function(BuiltWorkshopSearchByStringPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltWorkshopSearchByStringPost build() {
    final _$result = _$v ??
        new _$BuiltWorkshopSearchByStringPost._(
            search_by: search_by, search_string: search_string);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltAllCouncilsPost extends BuiltAllCouncilsPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String small_image_url;
  @override
  final String large_image_url;

  factory _$BuiltAllCouncilsPost(
          [void Function(BuiltAllCouncilsPostBuilder) updates]) =>
      (new BuiltAllCouncilsPostBuilder()..update(updates)).build();

  _$BuiltAllCouncilsPost._(
      {this.id, this.name, this.small_image_url, this.large_image_url})
      : super._();

  @override
  BuiltAllCouncilsPost rebuild(
          void Function(BuiltAllCouncilsPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllCouncilsPostBuilder toBuilder() =>
      new BuiltAllCouncilsPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllCouncilsPost &&
        id == other.id &&
        name == other.name &&
        small_image_url == other.small_image_url &&
        large_image_url == other.large_image_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), small_image_url.hashCode),
        large_image_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllCouncilsPost')
          ..add('id', id)
          ..add('name', name)
          ..add('small_image_url', small_image_url)
          ..add('large_image_url', large_image_url))
        .toString();
  }
}

class BuiltAllCouncilsPostBuilder
    implements Builder<BuiltAllCouncilsPost, BuiltAllCouncilsPostBuilder> {
  _$BuiltAllCouncilsPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _small_image_url;
  String get small_image_url => _$this._small_image_url;
  set small_image_url(String small_image_url) =>
      _$this._small_image_url = small_image_url;

  String _large_image_url;
  String get large_image_url => _$this._large_image_url;
  set large_image_url(String large_image_url) =>
      _$this._large_image_url = large_image_url;

  BuiltAllCouncilsPostBuilder();

  BuiltAllCouncilsPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _small_image_url = _$v.small_image_url;
      _large_image_url = _$v.large_image_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllCouncilsPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAllCouncilsPost;
  }

  @override
  void update(void Function(BuiltAllCouncilsPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllCouncilsPost build() {
    final _$result = _$v ??
        new _$BuiltAllCouncilsPost._(
            id: id,
            name: name,
            small_image_url: small_image_url,
            large_image_url: large_image_url);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltCouncilPost extends BuiltCouncilPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final SecyPost gensec;
  @override
  final BuiltList<SecyPost> joint_gensec;
  @override
  final BuiltList<ClubListPost> clubs;
  @override
  final String small_image_url;
  @override
  final String large_image_url;
  @override
  final bool is_por_holder;
  @override
  final String website_url;
  @override
  final String facebook_url;
  @override
  final String twitter_url;
  @override
  final String instagram_url;
  @override
  final String linkedin_url;
  @override
  final String youtube_url;

  factory _$BuiltCouncilPost(
          [void Function(BuiltCouncilPostBuilder) updates]) =>
      (new BuiltCouncilPostBuilder()..update(updates)).build();

  _$BuiltCouncilPost._(
      {this.id,
      this.name,
      this.description,
      this.gensec,
      this.joint_gensec,
      this.clubs,
      this.small_image_url,
      this.large_image_url,
      this.is_por_holder,
      this.website_url,
      this.facebook_url,
      this.twitter_url,
      this.instagram_url,
      this.linkedin_url,
      this.youtube_url})
      : super._();

  @override
  BuiltCouncilPost rebuild(void Function(BuiltCouncilPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltCouncilPostBuilder toBuilder() =>
      new BuiltCouncilPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltCouncilPost &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        gensec == other.gensec &&
        joint_gensec == other.joint_gensec &&
        clubs == other.clubs &&
        small_image_url == other.small_image_url &&
        large_image_url == other.large_image_url &&
        is_por_holder == other.is_por_holder &&
        website_url == other.website_url &&
        facebook_url == other.facebook_url &&
        twitter_url == other.twitter_url &&
        instagram_url == other.instagram_url &&
        linkedin_url == other.linkedin_url &&
        youtube_url == other.youtube_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc($jc(0, id.hashCode),
                                                            name.hashCode),
                                                        description.hashCode),
                                                    gensec.hashCode),
                                                joint_gensec.hashCode),
                                            clubs.hashCode),
                                        small_image_url.hashCode),
                                    large_image_url.hashCode),
                                is_por_holder.hashCode),
                            website_url.hashCode),
                        facebook_url.hashCode),
                    twitter_url.hashCode),
                instagram_url.hashCode),
            linkedin_url.hashCode),
        youtube_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltCouncilPost')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('gensec', gensec)
          ..add('joint_gensec', joint_gensec)
          ..add('clubs', clubs)
          ..add('small_image_url', small_image_url)
          ..add('large_image_url', large_image_url)
          ..add('is_por_holder', is_por_holder)
          ..add('website_url', website_url)
          ..add('facebook_url', facebook_url)
          ..add('twitter_url', twitter_url)
          ..add('instagram_url', instagram_url)
          ..add('linkedin_url', linkedin_url)
          ..add('youtube_url', youtube_url))
        .toString();
  }
}

class BuiltCouncilPostBuilder
    implements Builder<BuiltCouncilPost, BuiltCouncilPostBuilder> {
  _$BuiltCouncilPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  SecyPostBuilder _gensec;
  SecyPostBuilder get gensec => _$this._gensec ??= new SecyPostBuilder();
  set gensec(SecyPostBuilder gensec) => _$this._gensec = gensec;

  ListBuilder<SecyPost> _joint_gensec;
  ListBuilder<SecyPost> get joint_gensec =>
      _$this._joint_gensec ??= new ListBuilder<SecyPost>();
  set joint_gensec(ListBuilder<SecyPost> joint_gensec) =>
      _$this._joint_gensec = joint_gensec;

  ListBuilder<ClubListPost> _clubs;
  ListBuilder<ClubListPost> get clubs =>
      _$this._clubs ??= new ListBuilder<ClubListPost>();
  set clubs(ListBuilder<ClubListPost> clubs) => _$this._clubs = clubs;

  String _small_image_url;
  String get small_image_url => _$this._small_image_url;
  set small_image_url(String small_image_url) =>
      _$this._small_image_url = small_image_url;

  String _large_image_url;
  String get large_image_url => _$this._large_image_url;
  set large_image_url(String large_image_url) =>
      _$this._large_image_url = large_image_url;

  bool _is_por_holder;
  bool get is_por_holder => _$this._is_por_holder;
  set is_por_holder(bool is_por_holder) =>
      _$this._is_por_holder = is_por_holder;

  String _website_url;
  String get website_url => _$this._website_url;
  set website_url(String website_url) => _$this._website_url = website_url;

  String _facebook_url;
  String get facebook_url => _$this._facebook_url;
  set facebook_url(String facebook_url) => _$this._facebook_url = facebook_url;

  String _twitter_url;
  String get twitter_url => _$this._twitter_url;
  set twitter_url(String twitter_url) => _$this._twitter_url = twitter_url;

  String _instagram_url;
  String get instagram_url => _$this._instagram_url;
  set instagram_url(String instagram_url) =>
      _$this._instagram_url = instagram_url;

  String _linkedin_url;
  String get linkedin_url => _$this._linkedin_url;
  set linkedin_url(String linkedin_url) => _$this._linkedin_url = linkedin_url;

  String _youtube_url;
  String get youtube_url => _$this._youtube_url;
  set youtube_url(String youtube_url) => _$this._youtube_url = youtube_url;

  BuiltCouncilPostBuilder();

  BuiltCouncilPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _gensec = _$v.gensec?.toBuilder();
      _joint_gensec = _$v.joint_gensec?.toBuilder();
      _clubs = _$v.clubs?.toBuilder();
      _small_image_url = _$v.small_image_url;
      _large_image_url = _$v.large_image_url;
      _is_por_holder = _$v.is_por_holder;
      _website_url = _$v.website_url;
      _facebook_url = _$v.facebook_url;
      _twitter_url = _$v.twitter_url;
      _instagram_url = _$v.instagram_url;
      _linkedin_url = _$v.linkedin_url;
      _youtube_url = _$v.youtube_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltCouncilPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltCouncilPost;
  }

  @override
  void update(void Function(BuiltCouncilPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltCouncilPost build() {
    _$BuiltCouncilPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltCouncilPost._(
              id: id,
              name: name,
              description: description,
              gensec: _gensec?.build(),
              joint_gensec: _joint_gensec?.build(),
              clubs: _clubs?.build(),
              small_image_url: small_image_url,
              large_image_url: large_image_url,
              is_por_holder: is_por_holder,
              website_url: website_url,
              facebook_url: facebook_url,
              twitter_url: twitter_url,
              instagram_url: instagram_url,
              linkedin_url: linkedin_url,
              youtube_url: youtube_url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gensec';
        _gensec?.build();
        _$failedField = 'joint_gensec';
        _joint_gensec?.build();
        _$failedField = 'clubs';
        _clubs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltCouncilPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SecyPost extends SecyPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone_number;
  @override
  final String photo_url;

  factory _$SecyPost([void Function(SecyPostBuilder) updates]) =>
      (new SecyPostBuilder()..update(updates)).build();

  _$SecyPost._(
      {this.id, this.name, this.email, this.phone_number, this.photo_url})
      : super._();

  @override
  SecyPost rebuild(void Function(SecyPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecyPostBuilder toBuilder() => new SecyPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecyPost &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone_number == other.phone_number &&
        photo_url == other.photo_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), email.hashCode),
            phone_number.hashCode),
        photo_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SecyPost')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('phone_number', phone_number)
          ..add('photo_url', photo_url))
        .toString();
  }
}

class SecyPostBuilder implements Builder<SecyPost, SecyPostBuilder> {
  _$SecyPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  String _photo_url;
  String get photo_url => _$this._photo_url;
  set photo_url(String photo_url) => _$this._photo_url = photo_url;

  SecyPostBuilder();

  SecyPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _email = _$v.email;
      _phone_number = _$v.phone_number;
      _photo_url = _$v.photo_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecyPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SecyPost;
  }

  @override
  void update(void Function(SecyPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SecyPost build() {
    final _$result = _$v ??
        new _$SecyPost._(
            id: id,
            name: name,
            email: email,
            phone_number: phone_number,
            photo_url: photo_url);
    replace(_$result);
    return _$result;
  }
}

class _$ClubListPost extends ClubListPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltAllCouncilsPost council;
  @override
  final String small_image_url;
  @override
  final String large_image_url;

  factory _$ClubListPost([void Function(ClubListPostBuilder) updates]) =>
      (new ClubListPostBuilder()..update(updates)).build();

  _$ClubListPost._(
      {this.id,
      this.name,
      this.council,
      this.small_image_url,
      this.large_image_url})
      : super._();

  @override
  ClubListPost rebuild(void Function(ClubListPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubListPostBuilder toBuilder() => new ClubListPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClubListPost &&
        id == other.id &&
        name == other.name &&
        council == other.council &&
        small_image_url == other.small_image_url &&
        large_image_url == other.large_image_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), council.hashCode),
            small_image_url.hashCode),
        large_image_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClubListPost')
          ..add('id', id)
          ..add('name', name)
          ..add('council', council)
          ..add('small_image_url', small_image_url)
          ..add('large_image_url', large_image_url))
        .toString();
  }
}

class ClubListPostBuilder
    implements Builder<ClubListPost, ClubListPostBuilder> {
  _$ClubListPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BuiltAllCouncilsPostBuilder _council;
  BuiltAllCouncilsPostBuilder get council =>
      _$this._council ??= new BuiltAllCouncilsPostBuilder();
  set council(BuiltAllCouncilsPostBuilder council) => _$this._council = council;

  String _small_image_url;
  String get small_image_url => _$this._small_image_url;
  set small_image_url(String small_image_url) =>
      _$this._small_image_url = small_image_url;

  String _large_image_url;
  String get large_image_url => _$this._large_image_url;
  set large_image_url(String large_image_url) =>
      _$this._large_image_url = large_image_url;

  ClubListPostBuilder();

  ClubListPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _council = _$v.council?.toBuilder();
      _small_image_url = _$v.small_image_url;
      _large_image_url = _$v.large_image_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClubListPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClubListPost;
  }

  @override
  void update(void Function(ClubListPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClubListPost build() {
    _$ClubListPost _$result;
    try {
      _$result = _$v ??
          new _$ClubListPost._(
              id: id,
              name: name,
              council: _council?.build(),
              small_image_url: small_image_url,
              large_image_url: large_image_url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'council';
        _council?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClubListPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltClubPost extends BuiltClubPost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final BuiltAllCouncilsPost council;
  @override
  final SecyPost secy;
  @override
  final BuiltList<SecyPost> joint_secy;
  @override
  final String small_image_url;
  @override
  final String large_image_url;
  @override
  final bool is_subscribed;
  @override
  final int subscribed_users;
  @override
  final bool is_por_holder;
  @override
  final String website_url;
  @override
  final String facebook_url;
  @override
  final String twitter_url;
  @override
  final String instagram_url;
  @override
  final String linkedin_url;
  @override
  final String youtube_url;

  factory _$BuiltClubPost([void Function(BuiltClubPostBuilder) updates]) =>
      (new BuiltClubPostBuilder()..update(updates)).build();

  _$BuiltClubPost._(
      {this.id,
      this.name,
      this.description,
      this.council,
      this.secy,
      this.joint_secy,
      this.small_image_url,
      this.large_image_url,
      this.is_subscribed,
      this.subscribed_users,
      this.is_por_holder,
      this.website_url,
      this.facebook_url,
      this.twitter_url,
      this.instagram_url,
      this.linkedin_url,
      this.youtube_url})
      : super._();

  @override
  BuiltClubPost rebuild(void Function(BuiltClubPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltClubPostBuilder toBuilder() => new BuiltClubPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltClubPost &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        council == other.council &&
        secy == other.secy &&
        joint_secy == other.joint_secy &&
        small_image_url == other.small_image_url &&
        large_image_url == other.large_image_url &&
        is_subscribed == other.is_subscribed &&
        subscribed_users == other.subscribed_users &&
        is_por_holder == other.is_por_holder &&
        website_url == other.website_url &&
        facebook_url == other.facebook_url &&
        twitter_url == other.twitter_url &&
        instagram_url == other.instagram_url &&
        linkedin_url == other.linkedin_url &&
        youtube_url == other.youtube_url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            council.hashCode),
                                                        secy.hashCode),
                                                    joint_secy.hashCode),
                                                small_image_url.hashCode),
                                            large_image_url.hashCode),
                                        is_subscribed.hashCode),
                                    subscribed_users.hashCode),
                                is_por_holder.hashCode),
                            website_url.hashCode),
                        facebook_url.hashCode),
                    twitter_url.hashCode),
                instagram_url.hashCode),
            linkedin_url.hashCode),
        youtube_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltClubPost')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('council', council)
          ..add('secy', secy)
          ..add('joint_secy', joint_secy)
          ..add('small_image_url', small_image_url)
          ..add('large_image_url', large_image_url)
          ..add('is_subscribed', is_subscribed)
          ..add('subscribed_users', subscribed_users)
          ..add('is_por_holder', is_por_holder)
          ..add('website_url', website_url)
          ..add('facebook_url', facebook_url)
          ..add('twitter_url', twitter_url)
          ..add('instagram_url', instagram_url)
          ..add('linkedin_url', linkedin_url)
          ..add('youtube_url', youtube_url))
        .toString();
  }
}

class BuiltClubPostBuilder
    implements Builder<BuiltClubPost, BuiltClubPostBuilder> {
  _$BuiltClubPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  BuiltAllCouncilsPostBuilder _council;
  BuiltAllCouncilsPostBuilder get council =>
      _$this._council ??= new BuiltAllCouncilsPostBuilder();
  set council(BuiltAllCouncilsPostBuilder council) => _$this._council = council;

  SecyPostBuilder _secy;
  SecyPostBuilder get secy => _$this._secy ??= new SecyPostBuilder();
  set secy(SecyPostBuilder secy) => _$this._secy = secy;

  ListBuilder<SecyPost> _joint_secy;
  ListBuilder<SecyPost> get joint_secy =>
      _$this._joint_secy ??= new ListBuilder<SecyPost>();
  set joint_secy(ListBuilder<SecyPost> joint_secy) =>
      _$this._joint_secy = joint_secy;

  String _small_image_url;
  String get small_image_url => _$this._small_image_url;
  set small_image_url(String small_image_url) =>
      _$this._small_image_url = small_image_url;

  String _large_image_url;
  String get large_image_url => _$this._large_image_url;
  set large_image_url(String large_image_url) =>
      _$this._large_image_url = large_image_url;

  bool _is_subscribed;
  bool get is_subscribed => _$this._is_subscribed;
  set is_subscribed(bool is_subscribed) =>
      _$this._is_subscribed = is_subscribed;

  int _subscribed_users;
  int get subscribed_users => _$this._subscribed_users;
  set subscribed_users(int subscribed_users) =>
      _$this._subscribed_users = subscribed_users;

  bool _is_por_holder;
  bool get is_por_holder => _$this._is_por_holder;
  set is_por_holder(bool is_por_holder) =>
      _$this._is_por_holder = is_por_holder;

  String _website_url;
  String get website_url => _$this._website_url;
  set website_url(String website_url) => _$this._website_url = website_url;

  String _facebook_url;
  String get facebook_url => _$this._facebook_url;
  set facebook_url(String facebook_url) => _$this._facebook_url = facebook_url;

  String _twitter_url;
  String get twitter_url => _$this._twitter_url;
  set twitter_url(String twitter_url) => _$this._twitter_url = twitter_url;

  String _instagram_url;
  String get instagram_url => _$this._instagram_url;
  set instagram_url(String instagram_url) =>
      _$this._instagram_url = instagram_url;

  String _linkedin_url;
  String get linkedin_url => _$this._linkedin_url;
  set linkedin_url(String linkedin_url) => _$this._linkedin_url = linkedin_url;

  String _youtube_url;
  String get youtube_url => _$this._youtube_url;
  set youtube_url(String youtube_url) => _$this._youtube_url = youtube_url;

  BuiltClubPostBuilder();

  BuiltClubPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _council = _$v.council?.toBuilder();
      _secy = _$v.secy?.toBuilder();
      _joint_secy = _$v.joint_secy?.toBuilder();
      _small_image_url = _$v.small_image_url;
      _large_image_url = _$v.large_image_url;
      _is_subscribed = _$v.is_subscribed;
      _subscribed_users = _$v.subscribed_users;
      _is_por_holder = _$v.is_por_holder;
      _website_url = _$v.website_url;
      _facebook_url = _$v.facebook_url;
      _twitter_url = _$v.twitter_url;
      _instagram_url = _$v.instagram_url;
      _linkedin_url = _$v.linkedin_url;
      _youtube_url = _$v.youtube_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltClubPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltClubPost;
  }

  @override
  void update(void Function(BuiltClubPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltClubPost build() {
    _$BuiltClubPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltClubPost._(
              id: id,
              name: name,
              description: description,
              council: _council?.build(),
              secy: _secy?.build(),
              joint_secy: _joint_secy?.build(),
              small_image_url: small_image_url,
              large_image_url: large_image_url,
              is_subscribed: is_subscribed,
              subscribed_users: subscribed_users,
              is_por_holder: is_por_holder,
              website_url: website_url,
              facebook_url: facebook_url,
              twitter_url: twitter_url,
              instagram_url: instagram_url,
              linkedin_url: linkedin_url,
              youtube_url: youtube_url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'council';
        _council?.build();
        _$failedField = 'secy';
        _secy?.build();
        _$failedField = 'joint_secy';
        _joint_secy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltClubPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltWorkshopCreatePost extends BuiltWorkshopCreatePost {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String date;
  @override
  final bool is_workshop;
  @override
  final String time;
  @override
  final String location;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String audience;
  @override
  final BuiltList<int> contacts;
  @override
  final String image_url;
  @override
  final BuiltList<int> tags;
  @override
  final String link;

  factory _$BuiltWorkshopCreatePost(
          [void Function(BuiltWorkshopCreatePostBuilder) updates]) =>
      (new BuiltWorkshopCreatePostBuilder()..update(updates)).build();

  _$BuiltWorkshopCreatePost._(
      {this.id,
      this.title,
      this.description,
      this.date,
      this.is_workshop,
      this.time,
      this.location,
      this.latitude,
      this.longitude,
      this.audience,
      this.contacts,
      this.image_url,
      this.tags,
      this.link})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltWorkshopCreatePost', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('BuiltWorkshopCreatePost', 'date');
    }
    if (is_workshop == null) {
      throw new BuiltValueNullFieldError(
          'BuiltWorkshopCreatePost', 'is_workshop');
    }
  }

  @override
  BuiltWorkshopCreatePost rebuild(
          void Function(BuiltWorkshopCreatePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltWorkshopCreatePostBuilder toBuilder() =>
      new BuiltWorkshopCreatePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltWorkshopCreatePost &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        is_workshop == other.is_workshop &&
        time == other.time &&
        location == other.location &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        audience == other.audience &&
        contacts == other.contacts &&
        image_url == other.image_url &&
        tags == other.tags &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        title.hashCode),
                                                    description.hashCode),
                                                date.hashCode),
                                            is_workshop.hashCode),
                                        time.hashCode),
                                    location.hashCode),
                                latitude.hashCode),
                            longitude.hashCode),
                        audience.hashCode),
                    contacts.hashCode),
                image_url.hashCode),
            tags.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltWorkshopCreatePost')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('is_workshop', is_workshop)
          ..add('time', time)
          ..add('location', location)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('audience', audience)
          ..add('contacts', contacts)
          ..add('image_url', image_url)
          ..add('tags', tags)
          ..add('link', link))
        .toString();
  }
}

class BuiltWorkshopCreatePostBuilder
    implements
        Builder<BuiltWorkshopCreatePost, BuiltWorkshopCreatePostBuilder> {
  _$BuiltWorkshopCreatePost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  bool _is_workshop;
  bool get is_workshop => _$this._is_workshop;
  set is_workshop(bool is_workshop) => _$this._is_workshop = is_workshop;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _audience;
  String get audience => _$this._audience;
  set audience(String audience) => _$this._audience = audience;

  ListBuilder<int> _contacts;
  ListBuilder<int> get contacts => _$this._contacts ??= new ListBuilder<int>();
  set contacts(ListBuilder<int> contacts) => _$this._contacts = contacts;

  String _image_url;
  String get image_url => _$this._image_url;
  set image_url(String image_url) => _$this._image_url = image_url;

  ListBuilder<int> _tags;
  ListBuilder<int> get tags => _$this._tags ??= new ListBuilder<int>();
  set tags(ListBuilder<int> tags) => _$this._tags = tags;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  BuiltWorkshopCreatePostBuilder();

  BuiltWorkshopCreatePostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _date = _$v.date;
      _is_workshop = _$v.is_workshop;
      _time = _$v.time;
      _location = _$v.location;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _audience = _$v.audience;
      _contacts = _$v.contacts?.toBuilder();
      _image_url = _$v.image_url;
      _tags = _$v.tags?.toBuilder();
      _link = _$v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltWorkshopCreatePost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltWorkshopCreatePost;
  }

  @override
  void update(void Function(BuiltWorkshopCreatePostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltWorkshopCreatePost build() {
    _$BuiltWorkshopCreatePost _$result;
    try {
      _$result = _$v ??
          new _$BuiltWorkshopCreatePost._(
              id: id,
              title: title,
              description: description,
              date: date,
              is_workshop: is_workshop,
              time: time,
              location: location,
              latitude: latitude,
              longitude: longitude,
              audience: audience,
              contacts: _contacts?.build(),
              image_url: image_url,
              tags: _tags?.build(),
              link: link);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contacts';
        _contacts?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltWorkshopCreatePost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltProfilePost extends BuiltProfilePost {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone_number;
  @override
  final String department;
  @override
  final String year_of_joining;
  @override
  final BuiltList<ClubListPost> club_subscriptions;
  @override
  final BuiltList<EntityListPost> entity_subscriptions;
  @override
  final BuiltList<ClubListPost> club_privileges;
  @override
  final BuiltList<EntityListPost> entity_privileges;
  @override
  final String photo_url;
  @override
  final bool can_post_notice;
  @override
  final bool can_add_parliament_details;

  factory _$BuiltProfilePost(
          [void Function(BuiltProfilePostBuilder) updates]) =>
      (new BuiltProfilePostBuilder()..update(updates)).build();

  _$BuiltProfilePost._(
      {this.id,
      this.name,
      this.email,
      this.phone_number,
      this.department,
      this.year_of_joining,
      this.club_subscriptions,
      this.entity_subscriptions,
      this.club_privileges,
      this.entity_privileges,
      this.photo_url,
      this.can_post_notice,
      this.can_add_parliament_details})
      : super._();

  @override
  BuiltProfilePost rebuild(void Function(BuiltProfilePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltProfilePostBuilder toBuilder() =>
      new BuiltProfilePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltProfilePost &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone_number == other.phone_number &&
        department == other.department &&
        year_of_joining == other.year_of_joining &&
        club_subscriptions == other.club_subscriptions &&
        entity_subscriptions == other.entity_subscriptions &&
        club_privileges == other.club_privileges &&
        entity_privileges == other.entity_privileges &&
        photo_url == other.photo_url &&
        can_post_notice == other.can_post_notice &&
        can_add_parliament_details == other.can_add_parliament_details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    name.hashCode),
                                                email.hashCode),
                                            phone_number.hashCode),
                                        department.hashCode),
                                    year_of_joining.hashCode),
                                club_subscriptions.hashCode),
                            entity_subscriptions.hashCode),
                        club_privileges.hashCode),
                    entity_privileges.hashCode),
                photo_url.hashCode),
            can_post_notice.hashCode),
        can_add_parliament_details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltProfilePost')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('phone_number', phone_number)
          ..add('department', department)
          ..add('year_of_joining', year_of_joining)
          ..add('club_subscriptions', club_subscriptions)
          ..add('entity_subscriptions', entity_subscriptions)
          ..add('club_privileges', club_privileges)
          ..add('entity_privileges', entity_privileges)
          ..add('photo_url', photo_url)
          ..add('can_post_notice', can_post_notice)
          ..add('can_add_parliament_details', can_add_parliament_details))
        .toString();
  }
}

class BuiltProfilePostBuilder
    implements Builder<BuiltProfilePost, BuiltProfilePostBuilder> {
  _$BuiltProfilePost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  String _department;
  String get department => _$this._department;
  set department(String department) => _$this._department = department;

  String _year_of_joining;
  String get year_of_joining => _$this._year_of_joining;
  set year_of_joining(String year_of_joining) =>
      _$this._year_of_joining = year_of_joining;

  ListBuilder<ClubListPost> _club_subscriptions;
  ListBuilder<ClubListPost> get club_subscriptions =>
      _$this._club_subscriptions ??= new ListBuilder<ClubListPost>();
  set club_subscriptions(ListBuilder<ClubListPost> club_subscriptions) =>
      _$this._club_subscriptions = club_subscriptions;

  ListBuilder<EntityListPost> _entity_subscriptions;
  ListBuilder<EntityListPost> get entity_subscriptions =>
      _$this._entity_subscriptions ??= new ListBuilder<EntityListPost>();
  set entity_subscriptions(ListBuilder<EntityListPost> entity_subscriptions) =>
      _$this._entity_subscriptions = entity_subscriptions;

  ListBuilder<ClubListPost> _club_privileges;
  ListBuilder<ClubListPost> get club_privileges =>
      _$this._club_privileges ??= new ListBuilder<ClubListPost>();
  set club_privileges(ListBuilder<ClubListPost> club_privileges) =>
      _$this._club_privileges = club_privileges;

  ListBuilder<EntityListPost> _entity_privileges;
  ListBuilder<EntityListPost> get entity_privileges =>
      _$this._entity_privileges ??= new ListBuilder<EntityListPost>();
  set entity_privileges(ListBuilder<EntityListPost> entity_privileges) =>
      _$this._entity_privileges = entity_privileges;

  String _photo_url;
  String get photo_url => _$this._photo_url;
  set photo_url(String photo_url) => _$this._photo_url = photo_url;

  bool _can_post_notice;
  bool get can_post_notice => _$this._can_post_notice;
  set can_post_notice(bool can_post_notice) =>
      _$this._can_post_notice = can_post_notice;

  bool _can_add_parliament_details;
  bool get can_add_parliament_details => _$this._can_add_parliament_details;
  set can_add_parliament_details(bool can_add_parliament_details) =>
      _$this._can_add_parliament_details = can_add_parliament_details;

  BuiltProfilePostBuilder();

  BuiltProfilePostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _email = _$v.email;
      _phone_number = _$v.phone_number;
      _department = _$v.department;
      _year_of_joining = _$v.year_of_joining;
      _club_subscriptions = _$v.club_subscriptions?.toBuilder();
      _entity_subscriptions = _$v.entity_subscriptions?.toBuilder();
      _club_privileges = _$v.club_privileges?.toBuilder();
      _entity_privileges = _$v.entity_privileges?.toBuilder();
      _photo_url = _$v.photo_url;
      _can_post_notice = _$v.can_post_notice;
      _can_add_parliament_details = _$v.can_add_parliament_details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltProfilePost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltProfilePost;
  }

  @override
  void update(void Function(BuiltProfilePostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltProfilePost build() {
    _$BuiltProfilePost _$result;
    try {
      _$result = _$v ??
          new _$BuiltProfilePost._(
              id: id,
              name: name,
              email: email,
              phone_number: phone_number,
              department: department,
              year_of_joining: year_of_joining,
              club_subscriptions: _club_subscriptions?.build(),
              entity_subscriptions: _entity_subscriptions?.build(),
              club_privileges: _club_privileges?.build(),
              entity_privileges: _entity_privileges?.build(),
              photo_url: photo_url,
              can_post_notice: can_post_notice,
              can_add_parliament_details: can_add_parliament_details);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'club_subscriptions';
        _club_subscriptions?.build();
        _$failedField = 'entity_subscriptions';
        _entity_subscriptions?.build();
        _$failedField = 'club_privileges';
        _club_privileges?.build();
        _$failedField = 'entity_privileges';
        _entity_privileges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltProfilePost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltProfileSearchPost extends BuiltProfileSearchPost {
  @override
  final String search_by;
  @override
  final String search_string;

  factory _$BuiltProfileSearchPost(
          [void Function(BuiltProfileSearchPostBuilder) updates]) =>
      (new BuiltProfileSearchPostBuilder()..update(updates)).build();

  _$BuiltProfileSearchPost._({this.search_by, this.search_string}) : super._();

  @override
  BuiltProfileSearchPost rebuild(
          void Function(BuiltProfileSearchPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltProfileSearchPostBuilder toBuilder() =>
      new BuiltProfileSearchPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltProfileSearchPost &&
        search_by == other.search_by &&
        search_string == other.search_string;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, search_by.hashCode), search_string.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltProfileSearchPost')
          ..add('search_by', search_by)
          ..add('search_string', search_string))
        .toString();
  }
}

class BuiltProfileSearchPostBuilder
    implements Builder<BuiltProfileSearchPost, BuiltProfileSearchPostBuilder> {
  _$BuiltProfileSearchPost _$v;

  String _search_by;
  String get search_by => _$this._search_by;
  set search_by(String search_by) => _$this._search_by = search_by;

  String _search_string;
  String get search_string => _$this._search_string;
  set search_string(String search_string) =>
      _$this._search_string = search_string;

  BuiltProfileSearchPostBuilder();

  BuiltProfileSearchPostBuilder get _$this {
    if (_$v != null) {
      _search_by = _$v.search_by;
      _search_string = _$v.search_string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltProfileSearchPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltProfileSearchPost;
  }

  @override
  void update(void Function(BuiltProfileSearchPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltProfileSearchPost build() {
    final _$result = _$v ??
        new _$BuiltProfileSearchPost._(
            search_by: search_by, search_string: search_string);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltTeamMemberPost extends BuiltTeamMemberPost {
  @override
  final String role;
  @override
  final BuiltList<TeamMember> team_members;

  factory _$BuiltTeamMemberPost(
          [void Function(BuiltTeamMemberPostBuilder) updates]) =>
      (new BuiltTeamMemberPostBuilder()..update(updates)).build();

  _$BuiltTeamMemberPost._({this.role, this.team_members}) : super._();

  @override
  BuiltTeamMemberPost rebuild(
          void Function(BuiltTeamMemberPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTeamMemberPostBuilder toBuilder() =>
      new BuiltTeamMemberPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTeamMemberPost &&
        role == other.role &&
        team_members == other.team_members;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, role.hashCode), team_members.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTeamMemberPost')
          ..add('role', role)
          ..add('team_members', team_members))
        .toString();
  }
}

class BuiltTeamMemberPostBuilder
    implements Builder<BuiltTeamMemberPost, BuiltTeamMemberPostBuilder> {
  _$BuiltTeamMemberPost _$v;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  ListBuilder<TeamMember> _team_members;
  ListBuilder<TeamMember> get team_members =>
      _$this._team_members ??= new ListBuilder<TeamMember>();
  set team_members(ListBuilder<TeamMember> team_members) =>
      _$this._team_members = team_members;

  BuiltTeamMemberPostBuilder();

  BuiltTeamMemberPostBuilder get _$this {
    if (_$v != null) {
      _role = _$v.role;
      _team_members = _$v.team_members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltTeamMemberPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTeamMemberPost;
  }

  @override
  void update(void Function(BuiltTeamMemberPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTeamMemberPost build() {
    _$BuiltTeamMemberPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltTeamMemberPost._(
              role: role, team_members: _team_members?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'team_members';
        _team_members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltTeamMemberPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TeamMember extends TeamMember {
  @override
  final String name;
  @override
  final String github_username;
  @override
  final String github_image_url;

  factory _$TeamMember([void Function(TeamMemberBuilder) updates]) =>
      (new TeamMemberBuilder()..update(updates)).build();

  _$TeamMember._({this.name, this.github_username, this.github_image_url})
      : super._();

  @override
  TeamMember rebuild(void Function(TeamMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberBuilder toBuilder() => new TeamMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMember &&
        name == other.name &&
        github_username == other.github_username &&
        github_image_url == other.github_image_url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), github_username.hashCode),
        github_image_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMember')
          ..add('name', name)
          ..add('github_username', github_username)
          ..add('github_image_url', github_image_url))
        .toString();
  }
}

class TeamMemberBuilder implements Builder<TeamMember, TeamMemberBuilder> {
  _$TeamMember _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _github_username;
  String get github_username => _$this._github_username;
  set github_username(String github_username) =>
      _$this._github_username = github_username;

  String _github_image_url;
  String get github_image_url => _$this._github_image_url;
  set github_image_url(String github_image_url) =>
      _$this._github_image_url = github_image_url;

  TeamMemberBuilder();

  TeamMemberBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _github_username = _$v.github_username;
      _github_image_url = _$v.github_image_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMember other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamMember;
  }

  @override
  void update(void Function(TeamMemberBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMember build() {
    final _$result = _$v ??
        new _$TeamMember._(
            name: name,
            github_username: github_username,
            github_image_url: github_image_url);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltContacts extends BuiltContacts {
  @override
  final BuiltList<int> contacts;

  factory _$BuiltContacts([void Function(BuiltContactsBuilder) updates]) =>
      (new BuiltContactsBuilder()..update(updates)).build();

  _$BuiltContacts._({this.contacts}) : super._();

  @override
  BuiltContacts rebuild(void Function(BuiltContactsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltContactsBuilder toBuilder() => new BuiltContactsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltContacts && contacts == other.contacts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contacts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltContacts')
          ..add('contacts', contacts))
        .toString();
  }
}

class BuiltContactsBuilder
    implements Builder<BuiltContacts, BuiltContactsBuilder> {
  _$BuiltContacts _$v;

  ListBuilder<int> _contacts;
  ListBuilder<int> get contacts => _$this._contacts ??= new ListBuilder<int>();
  set contacts(ListBuilder<int> contacts) => _$this._contacts = contacts;

  BuiltContactsBuilder();

  BuiltContactsBuilder get _$this {
    if (_$v != null) {
      _contacts = _$v.contacts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltContacts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltContacts;
  }

  @override
  void update(void Function(BuiltContactsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltContacts build() {
    _$BuiltContacts _$result;
    try {
      _$result = _$v ?? new _$BuiltContacts._(contacts: _contacts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contacts';
        _contacts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltContacts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltTags extends BuiltTags {
  @override
  final BuiltList<int> tags;

  factory _$BuiltTags([void Function(BuiltTagsBuilder) updates]) =>
      (new BuiltTagsBuilder()..update(updates)).build();

  _$BuiltTags._({this.tags}) : super._();

  @override
  BuiltTags rebuild(void Function(BuiltTagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTagsBuilder toBuilder() => new BuiltTagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTags && tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTags')..add('tags', tags))
        .toString();
  }
}

class BuiltTagsBuilder implements Builder<BuiltTags, BuiltTagsBuilder> {
  _$BuiltTags _$v;

  ListBuilder<int> _tags;
  ListBuilder<int> get tags => _$this._tags ??= new ListBuilder<int>();
  set tags(ListBuilder<int> tags) => _$this._tags = tags;

  BuiltTagsBuilder();

  BuiltTagsBuilder get _$this {
    if (_$v != null) {
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltTags other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTags;
  }

  @override
  void update(void Function(BuiltTagsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTags build() {
    _$BuiltTags _$result;
    try {
      _$result = _$v ?? new _$BuiltTags._(tags: _tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltTags', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LoginPost extends LoginPost {
  @override
  final String id_token;

  factory _$LoginPost([void Function(LoginPostBuilder) updates]) =>
      (new LoginPostBuilder()..update(updates)).build();

  _$LoginPost._({this.id_token}) : super._() {
    if (id_token == null) {
      throw new BuiltValueNullFieldError('LoginPost', 'id_token');
    }
  }

  @override
  LoginPost rebuild(void Function(LoginPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginPostBuilder toBuilder() => new LoginPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginPost && id_token == other.id_token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginPost')..add('id_token', id_token))
        .toString();
  }
}

class LoginPostBuilder implements Builder<LoginPost, LoginPostBuilder> {
  _$LoginPost _$v;

  String _id_token;
  String get id_token => _$this._id_token;
  set id_token(String id_token) => _$this._id_token = id_token;

  LoginPostBuilder();

  LoginPostBuilder get _$this {
    if (_$v != null) {
      _id_token = _$v.id_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginPost;
  }

  @override
  void update(void Function(LoginPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginPost build() {
    final _$result = _$v ?? new _$LoginPost._(id_token: id_token);
    replace(_$result);
    return _$result;
  }
}

class _$Token extends Token {
  @override
  final String token;

  factory _$Token([void Function(TokenBuilder) updates]) =>
      (new TokenBuilder()..update(updates)).build();

  _$Token._({this.token}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('Token', 'token');
    }
  }

  @override
  Token rebuild(void Function(TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBuilder toBuilder() => new TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Token && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Token')..add('token', token))
        .toString();
  }
}

class TokenBuilder implements Builder<Token, TokenBuilder> {
  _$Token _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  TokenBuilder();

  TokenBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Token other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Token;
  }

  @override
  void update(void Function(TokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Token build() {
    final _$result = _$v ?? new _$Token._(token: token);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltAllNotices extends BuiltAllNotices {
  @override
  final int id;
  @override
  final String title;
  @override
  final String date;
  @override
  final int importance;
  @override
  final String description;

  factory _$BuiltAllNotices([void Function(BuiltAllNoticesBuilder) updates]) =>
      (new BuiltAllNoticesBuilder()..update(updates)).build();

  _$BuiltAllNotices._(
      {this.id, this.title, this.date, this.importance, this.description})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltAllNotices', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('BuiltAllNotices', 'date');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('BuiltAllNotices', 'description');
    }
  }

  @override
  BuiltAllNotices rebuild(void Function(BuiltAllNoticesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllNoticesBuilder toBuilder() =>
      new BuiltAllNoticesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllNotices &&
        id == other.id &&
        title == other.title &&
        date == other.date &&
        importance == other.importance &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), date.hashCode),
            importance.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllNotices')
          ..add('id', id)
          ..add('title', title)
          ..add('date', date)
          ..add('importance', importance)
          ..add('description', description))
        .toString();
  }
}

class BuiltAllNoticesBuilder
    implements Builder<BuiltAllNotices, BuiltAllNoticesBuilder> {
  _$BuiltAllNotices _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _importance;
  int get importance => _$this._importance;
  set importance(int importance) => _$this._importance = importance;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  BuiltAllNoticesBuilder();

  BuiltAllNoticesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _date = _$v.date;
      _importance = _$v.importance;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllNotices other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAllNotices;
  }

  @override
  void update(void Function(BuiltAllNoticesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllNotices build() {
    final _$result = _$v ??
        new _$BuiltAllNotices._(
            id: id,
            title: title,
            date: date,
            importance: importance,
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltNoticeDetail extends BuiltNoticeDetail {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String date;
  @override
  final int upvotes;
  @override
  final int downvotes;
  @override
  final int importance;
  @override
  final bool has_voted;

  factory _$BuiltNoticeDetail(
          [void Function(BuiltNoticeDetailBuilder) updates]) =>
      (new BuiltNoticeDetailBuilder()..update(updates)).build();

  _$BuiltNoticeDetail._(
      {this.id,
      this.title,
      this.description,
      this.date,
      this.upvotes,
      this.downvotes,
      this.importance,
      this.has_voted})
      : super._();

  @override
  BuiltNoticeDetail rebuild(void Function(BuiltNoticeDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNoticeDetailBuilder toBuilder() =>
      new BuiltNoticeDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNoticeDetail &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        upvotes == other.upvotes &&
        downvotes == other.downvotes &&
        importance == other.importance &&
        has_voted == other.has_voted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), title.hashCode),
                            description.hashCode),
                        date.hashCode),
                    upvotes.hashCode),
                downvotes.hashCode),
            importance.hashCode),
        has_voted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltNoticeDetail')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('upvotes', upvotes)
          ..add('downvotes', downvotes)
          ..add('importance', importance)
          ..add('has_voted', has_voted))
        .toString();
  }
}

class BuiltNoticeDetailBuilder
    implements Builder<BuiltNoticeDetail, BuiltNoticeDetailBuilder> {
  _$BuiltNoticeDetail _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _upvotes;
  int get upvotes => _$this._upvotes;
  set upvotes(int upvotes) => _$this._upvotes = upvotes;

  int _downvotes;
  int get downvotes => _$this._downvotes;
  set downvotes(int downvotes) => _$this._downvotes = downvotes;

  int _importance;
  int get importance => _$this._importance;
  set importance(int importance) => _$this._importance = importance;

  bool _has_voted;
  bool get has_voted => _$this._has_voted;
  set has_voted(bool has_voted) => _$this._has_voted = has_voted;

  BuiltNoticeDetailBuilder();

  BuiltNoticeDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _date = _$v.date;
      _upvotes = _$v.upvotes;
      _downvotes = _$v.downvotes;
      _importance = _$v.importance;
      _has_voted = _$v.has_voted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltNoticeDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltNoticeDetail;
  }

  @override
  void update(void Function(BuiltNoticeDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNoticeDetail build() {
    final _$result = _$v ??
        new _$BuiltNoticeDetail._(
            id: id,
            title: title,
            description: description,
            date: date,
            upvotes: upvotes,
            downvotes: downvotes,
            importance: importance,
            has_voted: has_voted);
    replace(_$result);
    return _$result;
  }
}

class _$NoticeCreatePost extends NoticeCreatePost {
  @override
  final String title;
  @override
  final String description;
  @override
  final String date;
  @override
  final int importance;

  factory _$NoticeCreatePost(
          [void Function(NoticeCreatePostBuilder) updates]) =>
      (new NoticeCreatePostBuilder()..update(updates)).build();

  _$NoticeCreatePost._(
      {this.title, this.description, this.date, this.importance})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('NoticeCreatePost', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('NoticeCreatePost', 'date');
    }
  }

  @override
  NoticeCreatePost rebuild(void Function(NoticeCreatePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticeCreatePostBuilder toBuilder() =>
      new NoticeCreatePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticeCreatePost &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        importance == other.importance;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), description.hashCode), date.hashCode),
        importance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoticeCreatePost')
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('importance', importance))
        .toString();
  }
}

class NoticeCreatePostBuilder
    implements Builder<NoticeCreatePost, NoticeCreatePostBuilder> {
  _$NoticeCreatePost _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _importance;
  int get importance => _$this._importance;
  set importance(int importance) => _$this._importance = importance;

  NoticeCreatePostBuilder();

  NoticeCreatePostBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _date = _$v.date;
      _importance = _$v.importance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticeCreatePost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NoticeCreatePost;
  }

  @override
  void update(void Function(NoticeCreatePostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoticeCreatePost build() {
    final _$result = _$v ??
        new _$NoticeCreatePost._(
            title: title,
            description: description,
            date: date,
            importance: importance);
    replace(_$result);
    return _$result;
  }
}

class _$CreateMinute extends CreateMinute {
  @override
  final String title;
  @override
  final String description;
  @override
  final int committee;

  factory _$CreateMinute([void Function(CreateMinuteBuilder) updates]) =>
      (new CreateMinuteBuilder()..update(updates)).build();

  _$CreateMinute._({this.title, this.description, this.committee}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('CreateMinute', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('CreateMinute', 'description');
    }
    if (committee == null) {
      throw new BuiltValueNullFieldError('CreateMinute', 'committee');
    }
  }

  @override
  CreateMinute rebuild(void Function(CreateMinuteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMinuteBuilder toBuilder() => new CreateMinuteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMinute &&
        title == other.title &&
        description == other.description &&
        committee == other.committee;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, title.hashCode), description.hashCode), committee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateMinute')
          ..add('title', title)
          ..add('description', description)
          ..add('committee', committee))
        .toString();
  }
}

class CreateMinuteBuilder
    implements Builder<CreateMinute, CreateMinuteBuilder> {
  _$CreateMinute _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _committee;
  int get committee => _$this._committee;
  set committee(int committee) => _$this._committee = committee;

  CreateMinuteBuilder();

  CreateMinuteBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _committee = _$v.committee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMinute other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateMinute;
  }

  @override
  void update(void Function(CreateMinuteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateMinute build() {
    final _$result = _$v ??
        new _$CreateMinute._(
            title: title, description: description, committee: committee);
    replace(_$result);
    return _$result;
  }
}

class _$CreateMinutePost extends CreateMinutePost {
  @override
  final String title;
  @override
  final String description;
  @override
  final int committee;

  factory _$CreateMinutePost(
          [void Function(CreateMinutePostBuilder) updates]) =>
      (new CreateMinutePostBuilder()..update(updates)).build();

  _$CreateMinutePost._({this.title, this.description, this.committee})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('CreateMinutePost', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('CreateMinutePost', 'description');
    }
    if (committee == null) {
      throw new BuiltValueNullFieldError('CreateMinutePost', 'committee');
    }
  }

  @override
  CreateMinutePost rebuild(void Function(CreateMinutePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMinutePostBuilder toBuilder() =>
      new CreateMinutePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMinutePost &&
        title == other.title &&
        description == other.description &&
        committee == other.committee;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, title.hashCode), description.hashCode), committee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateMinutePost')
          ..add('title', title)
          ..add('description', description)
          ..add('committee', committee))
        .toString();
  }
}

class CreateMinutePostBuilder
    implements Builder<CreateMinutePost, CreateMinutePostBuilder> {
  _$CreateMinutePost _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _committee;
  int get committee => _$this._committee;
  set committee(int committee) => _$this._committee = committee;

  CreateMinutePostBuilder();

  CreateMinutePostBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _committee = _$v.committee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMinutePost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateMinutePost;
  }

  @override
  void update(void Function(CreateMinutePostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateMinutePost build() {
    final _$result = _$v ??
        new _$CreateMinutePost._(
            title: title, description: description, committee: committee);
    replace(_$result);
    return _$result;
  }
}

class _$CreateSuggestion extends CreateSuggestion {
  @override
  final String title;
  @override
  final String description;

  factory _$CreateSuggestion(
          [void Function(CreateSuggestionBuilder) updates]) =>
      (new CreateSuggestionBuilder()..update(updates)).build();

  _$CreateSuggestion._({this.title, this.description}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('CreateSuggestion', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('CreateSuggestion', 'description');
    }
  }

  @override
  CreateSuggestion rebuild(void Function(CreateSuggestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSuggestionBuilder toBuilder() =>
      new CreateSuggestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSuggestion &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateSuggestion')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class CreateSuggestionBuilder
    implements Builder<CreateSuggestion, CreateSuggestionBuilder> {
  _$CreateSuggestion _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  CreateSuggestionBuilder();

  CreateSuggestionBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSuggestion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateSuggestion;
  }

  @override
  void update(void Function(CreateSuggestionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateSuggestion build() {
    final _$result =
        _$v ?? new _$CreateSuggestion._(title: title, description: description);
    replace(_$result);
    return _$result;
  }
}

class _$CreateSuggestionPost extends CreateSuggestionPost {
  @override
  final String title;
  @override
  final String description;

  factory _$CreateSuggestionPost(
          [void Function(CreateSuggestionPostBuilder) updates]) =>
      (new CreateSuggestionPostBuilder()..update(updates)).build();

  _$CreateSuggestionPost._({this.title, this.description}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('CreateSuggestionPost', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('CreateSuggestionPost', 'description');
    }
  }

  @override
  CreateSuggestionPost rebuild(
          void Function(CreateSuggestionPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSuggestionPostBuilder toBuilder() =>
      new CreateSuggestionPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSuggestionPost &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateSuggestionPost')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class CreateSuggestionPostBuilder
    implements Builder<CreateSuggestionPost, CreateSuggestionPostBuilder> {
  _$CreateSuggestionPost _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  CreateSuggestionPostBuilder();

  CreateSuggestionPostBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSuggestionPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateSuggestionPost;
  }

  @override
  void update(void Function(CreateSuggestionPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateSuggestionPost build() {
    final _$result = _$v ??
        new _$CreateSuggestionPost._(title: title, description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GrievanceCount extends GrievanceCount {
  @override
  final int pending;
  @override
  final int registered;
  @override
  final int closed;

  factory _$GrievanceCount([void Function(GrievanceCountBuilder) updates]) =>
      (new GrievanceCountBuilder()..update(updates)).build();

  _$GrievanceCount._({this.pending, this.registered, this.closed}) : super._();

  @override
  GrievanceCount rebuild(void Function(GrievanceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrievanceCountBuilder toBuilder() =>
      new GrievanceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrievanceCount &&
        pending == other.pending &&
        registered == other.registered &&
        closed == other.closed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, pending.hashCode), registered.hashCode), closed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrievanceCount')
          ..add('pending', pending)
          ..add('registered', registered)
          ..add('closed', closed))
        .toString();
  }
}

class GrievanceCountBuilder
    implements Builder<GrievanceCount, GrievanceCountBuilder> {
  _$GrievanceCount _$v;

  int _pending;
  int get pending => _$this._pending;
  set pending(int pending) => _$this._pending = pending;

  int _registered;
  int get registered => _$this._registered;
  set registered(int registered) => _$this._registered = registered;

  int _closed;
  int get closed => _$this._closed;
  set closed(int closed) => _$this._closed = closed;

  GrievanceCountBuilder();

  GrievanceCountBuilder get _$this {
    if (_$v != null) {
      _pending = _$v.pending;
      _registered = _$v.registered;
      _closed = _$v.closed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrievanceCount other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GrievanceCount;
  }

  @override
  void update(void Function(GrievanceCountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrievanceCount build() {
    final _$result = _$v ??
        new _$GrievanceCount._(
            pending: pending, registered: registered, closed: closed);
    replace(_$result);
    return _$result;
  }
}

class _$GrievancePost extends GrievancePost {
  @override
  final String name;
  @override
  final String branch;
  @override
  final String course;
  @override
  final String year;
  @override
  final String type_of_complaint;
  @override
  final String description;
  @override
  final String drive_link;

  factory _$GrievancePost([void Function(GrievancePostBuilder) updates]) =>
      (new GrievancePostBuilder()..update(updates)).build();

  _$GrievancePost._(
      {this.name,
      this.branch,
      this.course,
      this.year,
      this.type_of_complaint,
      this.description,
      this.drive_link})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('GrievancePost', 'name');
    }
    if (branch == null) {
      throw new BuiltValueNullFieldError('GrievancePost', 'branch');
    }
    if (course == null) {
      throw new BuiltValueNullFieldError('GrievancePost', 'course');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('GrievancePost', 'year');
    }
    if (type_of_complaint == null) {
      throw new BuiltValueNullFieldError('GrievancePost', 'type_of_complaint');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('GrievancePost', 'description');
    }
  }

  @override
  GrievancePost rebuild(void Function(GrievancePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrievancePostBuilder toBuilder() => new GrievancePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrievancePost &&
        name == other.name &&
        branch == other.branch &&
        course == other.course &&
        year == other.year &&
        type_of_complaint == other.type_of_complaint &&
        description == other.description &&
        drive_link == other.drive_link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), branch.hashCode),
                        course.hashCode),
                    year.hashCode),
                type_of_complaint.hashCode),
            description.hashCode),
        drive_link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrievancePost')
          ..add('name', name)
          ..add('branch', branch)
          ..add('course', course)
          ..add('year', year)
          ..add('type_of_complaint', type_of_complaint)
          ..add('description', description)
          ..add('drive_link', drive_link))
        .toString();
  }
}

class GrievancePostBuilder
    implements Builder<GrievancePost, GrievancePostBuilder> {
  _$GrievancePost _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _course;
  String get course => _$this._course;
  set course(String course) => _$this._course = course;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _type_of_complaint;
  String get type_of_complaint => _$this._type_of_complaint;
  set type_of_complaint(String type_of_complaint) =>
      _$this._type_of_complaint = type_of_complaint;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _drive_link;
  String get drive_link => _$this._drive_link;
  set drive_link(String drive_link) => _$this._drive_link = drive_link;

  GrievancePostBuilder();

  GrievancePostBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _branch = _$v.branch;
      _course = _$v.course;
      _year = _$v.year;
      _type_of_complaint = _$v.type_of_complaint;
      _description = _$v.description;
      _drive_link = _$v.drive_link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrievancePost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GrievancePost;
  }

  @override
  void update(void Function(GrievancePostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrievancePost build() {
    final _$result = _$v ??
        new _$GrievancePost._(
            name: name,
            branch: branch,
            course: course,
            year: year,
            type_of_complaint: type_of_complaint,
            description: description,
            drive_link: drive_link);
    replace(_$result);
    return _$result;
  }
}

class _$Grievance extends Grievance {
  @override
  final int id;
  @override
  final String name;
  @override
  final String branch;
  @override
  final String course;
  @override
  final String year;
  @override
  final String type_of_complaint;
  @override
  final String description;
  @override
  final String drive_link;
  @override
  final int status;

  factory _$Grievance([void Function(GrievanceBuilder) updates]) =>
      (new GrievanceBuilder()..update(updates)).build();

  _$Grievance._(
      {this.id,
      this.name,
      this.branch,
      this.course,
      this.year,
      this.type_of_complaint,
      this.description,
      this.drive_link,
      this.status})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Grievance', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Grievance', 'name');
    }
    if (branch == null) {
      throw new BuiltValueNullFieldError('Grievance', 'branch');
    }
    if (course == null) {
      throw new BuiltValueNullFieldError('Grievance', 'course');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('Grievance', 'year');
    }
    if (type_of_complaint == null) {
      throw new BuiltValueNullFieldError('Grievance', 'type_of_complaint');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Grievance', 'description');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Grievance', 'status');
    }
  }

  @override
  Grievance rebuild(void Function(GrievanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrievanceBuilder toBuilder() => new GrievanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grievance &&
        id == other.id &&
        name == other.name &&
        branch == other.branch &&
        course == other.course &&
        year == other.year &&
        type_of_complaint == other.type_of_complaint &&
        description == other.description &&
        drive_link == other.drive_link &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                branch.hashCode),
                            course.hashCode),
                        year.hashCode),
                    type_of_complaint.hashCode),
                description.hashCode),
            drive_link.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Grievance')
          ..add('id', id)
          ..add('name', name)
          ..add('branch', branch)
          ..add('course', course)
          ..add('year', year)
          ..add('type_of_complaint', type_of_complaint)
          ..add('description', description)
          ..add('drive_link', drive_link)
          ..add('status', status))
        .toString();
  }
}

class GrievanceBuilder implements Builder<Grievance, GrievanceBuilder> {
  _$Grievance _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _course;
  String get course => _$this._course;
  set course(String course) => _$this._course = course;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _type_of_complaint;
  String get type_of_complaint => _$this._type_of_complaint;
  set type_of_complaint(String type_of_complaint) =>
      _$this._type_of_complaint = type_of_complaint;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _drive_link;
  String get drive_link => _$this._drive_link;
  set drive_link(String drive_link) => _$this._drive_link = drive_link;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  GrievanceBuilder();

  GrievanceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _branch = _$v.branch;
      _course = _$v.course;
      _year = _$v.year;
      _type_of_complaint = _$v.type_of_complaint;
      _description = _$v.description;
      _drive_link = _$v.drive_link;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grievance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Grievance;
  }

  @override
  void update(void Function(GrievanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Grievance build() {
    final _$result = _$v ??
        new _$Grievance._(
            id: id,
            name: name,
            branch: branch,
            course: course,
            year: year,
            type_of_complaint: type_of_complaint,
            description: description,
            drive_link: drive_link,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$LostAndFoundPost extends LostAndFoundPost {
  @override
  final String name;
  @override
  final String branch;
  @override
  final String course;
  @override
  final String year;
  @override
  final String type_of_lost_and_found;
  @override
  final String description;
  @override
  final String drive_link;

  factory _$LostAndFoundPost(
          [void Function(LostAndFoundPostBuilder) updates]) =>
      (new LostAndFoundPostBuilder()..update(updates)).build();

  _$LostAndFoundPost._(
      {this.name,
      this.branch,
      this.course,
      this.year,
      this.type_of_lost_and_found,
      this.description,
      this.drive_link})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('LostAndFoundPost', 'name');
    }
    if (branch == null) {
      throw new BuiltValueNullFieldError('LostAndFoundPost', 'branch');
    }
    if (course == null) {
      throw new BuiltValueNullFieldError('LostAndFoundPost', 'course');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('LostAndFoundPost', 'year');
    }
    if (type_of_lost_and_found == null) {
      throw new BuiltValueNullFieldError(
          'LostAndFoundPost', 'type_of_lost_and_found');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('LostAndFoundPost', 'description');
    }
  }

  @override
  LostAndFoundPost rebuild(void Function(LostAndFoundPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LostAndFoundPostBuilder toBuilder() =>
      new LostAndFoundPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LostAndFoundPost &&
        name == other.name &&
        branch == other.branch &&
        course == other.course &&
        year == other.year &&
        type_of_lost_and_found == other.type_of_lost_and_found &&
        description == other.description &&
        drive_link == other.drive_link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), branch.hashCode),
                        course.hashCode),
                    year.hashCode),
                type_of_lost_and_found.hashCode),
            description.hashCode),
        drive_link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LostAndFoundPost')
          ..add('name', name)
          ..add('branch', branch)
          ..add('course', course)
          ..add('year', year)
          ..add('type_of_lost_and_found', type_of_lost_and_found)
          ..add('description', description)
          ..add('drive_link', drive_link))
        .toString();
  }
}

class LostAndFoundPostBuilder
    implements Builder<LostAndFoundPost, LostAndFoundPostBuilder> {
  _$LostAndFoundPost _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _course;
  String get course => _$this._course;
  set course(String course) => _$this._course = course;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _type_of_lost_and_found;
  String get type_of_lost_and_found => _$this._type_of_lost_and_found;
  set type_of_lost_and_found(String type_of_lost_and_found) =>
      _$this._type_of_lost_and_found = type_of_lost_and_found;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _drive_link;
  String get drive_link => _$this._drive_link;
  set drive_link(String drive_link) => _$this._drive_link = drive_link;

  LostAndFoundPostBuilder();

  LostAndFoundPostBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _branch = _$v.branch;
      _course = _$v.course;
      _year = _$v.year;
      _type_of_lost_and_found = _$v.type_of_lost_and_found;
      _description = _$v.description;
      _drive_link = _$v.drive_link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LostAndFoundPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LostAndFoundPost;
  }

  @override
  void update(void Function(LostAndFoundPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LostAndFoundPost build() {
    final _$result = _$v ??
        new _$LostAndFoundPost._(
            name: name,
            branch: branch,
            course: course,
            year: year,
            type_of_lost_and_found: type_of_lost_and_found,
            description: description,
            drive_link: drive_link);
    replace(_$result);
    return _$result;
  }
}

class _$LostAndFound extends LostAndFound {
  @override
  final int id;
  @override
  final String name;
  @override
  final String branch;
  @override
  final String course;
  @override
  final String year;
  @override
  final String type_of_lost_and_found;
  @override
  final String description;
  @override
  final String drive_link;

  factory _$LostAndFound([void Function(LostAndFoundBuilder) updates]) =>
      (new LostAndFoundBuilder()..update(updates)).build();

  _$LostAndFound._(
      {this.id,
      this.name,
      this.branch,
      this.course,
      this.year,
      this.type_of_lost_and_found,
      this.description,
      this.drive_link})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LostAndFound', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('LostAndFound', 'name');
    }
    if (branch == null) {
      throw new BuiltValueNullFieldError('LostAndFound', 'branch');
    }
    if (course == null) {
      throw new BuiltValueNullFieldError('LostAndFound', 'course');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('LostAndFound', 'year');
    }
    if (type_of_lost_and_found == null) {
      throw new BuiltValueNullFieldError(
          'LostAndFound', 'type_of_lost_and_found');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('LostAndFound', 'description');
    }
  }

  @override
  LostAndFound rebuild(void Function(LostAndFoundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LostAndFoundBuilder toBuilder() => new LostAndFoundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LostAndFound &&
        id == other.id &&
        name == other.name &&
        branch == other.branch &&
        course == other.course &&
        year == other.year &&
        type_of_lost_and_found == other.type_of_lost_and_found &&
        description == other.description &&
        drive_link == other.drive_link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            branch.hashCode),
                        course.hashCode),
                    year.hashCode),
                type_of_lost_and_found.hashCode),
            description.hashCode),
        drive_link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LostAndFound')
          ..add('id', id)
          ..add('name', name)
          ..add('branch', branch)
          ..add('course', course)
          ..add('year', year)
          ..add('type_of_lost_and_found', type_of_lost_and_found)
          ..add('description', description)
          ..add('drive_link', drive_link))
        .toString();
  }
}

class LostAndFoundBuilder
    implements Builder<LostAndFound, LostAndFoundBuilder> {
  _$LostAndFound _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _course;
  String get course => _$this._course;
  set course(String course) => _$this._course = course;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _type_of_lost_and_found;
  String get type_of_lost_and_found => _$this._type_of_lost_and_found;
  set type_of_lost_and_found(String type_of_lost_and_found) =>
      _$this._type_of_lost_and_found = type_of_lost_and_found;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _drive_link;
  String get drive_link => _$this._drive_link;
  set drive_link(String drive_link) => _$this._drive_link = drive_link;

  LostAndFoundBuilder();

  LostAndFoundBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _branch = _$v.branch;
      _course = _$v.course;
      _year = _$v.year;
      _type_of_lost_and_found = _$v.type_of_lost_and_found;
      _description = _$v.description;
      _drive_link = _$v.drive_link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LostAndFound other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LostAndFound;
  }

  @override
  void update(void Function(LostAndFoundBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LostAndFound build() {
    final _$result = _$v ??
        new _$LostAndFound._(
            id: id,
            name: name,
            branch: branch,
            course: course,
            year: year,
            type_of_lost_and_found: type_of_lost_and_found,
            description: description,
            drive_link: drive_link);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
