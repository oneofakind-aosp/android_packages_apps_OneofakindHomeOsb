.class public abstract Lcom/sonymobile/home/replacements/ReplacementsXmlParser;
.super Ljava/lang/Object;
.source "ReplacementsXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method protected abstract handleSettingsGroup(Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public parseReplacementsFromXML(Ljava/util/List;I)Ljava/util/Map;
    .locals 21
    .param p2, "replacementsResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I)",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/16 v16, 0x0

    .line 78
    .local v16, "xml":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 83
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v11, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;>;"
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    if-eqz v17, :cond_0

    .line 87
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Error: Wrong XML parser state"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 157
    :catch_0
    move-exception v5

    .line 158
    .local v5, "e":Ljava/io/IOException;
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to read replacement XML file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17

    .line 79
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;>;"
    :catch_1
    move-exception v10

    .line 80
    .local v10, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Failed to find replacement xml file"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17

    .line 90
    .end local v10    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .restart local v11    # "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 94
    .local v6, "event":I
    if-nez v6, :cond_1

    .line 95
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 98
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_2

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "settings"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 99
    :cond_2
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Error: Missing expected <settings> tag in replacement xml file"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 160
    .end local v6    # "event":I
    :catch_2
    move-exception v5

    .line 161
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Replacement XML parsing failed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17

    .line 104
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "event":I
    :cond_3
    :try_start_3
    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 105
    .local v8, "groupTypesStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 106
    .local v12, "settingsGroupStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;>;"
    const/4 v3, 0x0

    .line 107
    .local v3, "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    const/4 v4, 0x0

    .line 109
    .local v4, "currentGroupType":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_d

    .line 110
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_9

    .line 111
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "tagName":Ljava/lang/String;
    const-string v17, "setting"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 113
    const/16 v17, 0x0

    const-string v18, "key"

    invoke-interface/range {v16 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 115
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "value":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {v3, v9, v15}, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->putSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v15    # "value":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x3

    const/16 v18, 0x0

    const-string v19, "setting"

    invoke-interface/range {v16 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 163
    .end local v3    # "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    .end local v4    # "currentGroupType":Ljava/lang/String;
    .end local v6    # "event":I
    .end local v8    # "groupTypesStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "settingsGroupStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;>;"
    .end local v13    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 166
    .local v14, "throwable":Ljava/lang/Throwable;
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Replacement failed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17

    .line 121
    .end local v14    # "throwable":Ljava/lang/Throwable;
    .restart local v3    # "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    .restart local v4    # "currentGroupType":Ljava/lang/String;
    .restart local v6    # "event":I
    .restart local v8    # "groupTypesStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .restart local v12    # "settingsGroupStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;>;"
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string v17, "group"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 122
    new-instance v3, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;

    .end local v3    # "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    invoke-direct {v3, v4}, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v3    # "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    invoke-virtual {v12, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_7
    const-string v17, "groups"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 125
    const/16 v17, 0x0

    const-string v18, "type"

    invoke-interface/range {v16 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v8, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    :cond_8
    sget-object v17, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring unknown tag: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_4

    .line 131
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 132
    .restart local v13    # "tagName":Ljava/lang/String;
    const-string v17, "group"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, "group":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    invoke-virtual {v12}, Ljava/util/Stack;->empty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 135
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "group":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    check-cast v7, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;

    .line 137
    .restart local v7    # "group":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    :cond_a
    if-nez v7, :cond_b

    .line 138
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Incorrect XML format"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 140
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1, v11}, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;->handleSettingsGroup(Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;Ljava/util/List;Ljava/util/Map;)V

    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-virtual {v12}, Ljava/util/Stack;->empty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 143
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    check-cast v3, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;

    .restart local v3    # "currentGroup":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    goto/16 :goto_0

    .line 145
    .end local v7    # "group":Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    :cond_c
    const-string v17, "groups"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 148
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 149
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 150
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "currentGroupType":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v4    # "currentGroupType":Ljava/lang/String;
    goto/16 :goto_0

    .line 170
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_d
    return-object v11
.end method
