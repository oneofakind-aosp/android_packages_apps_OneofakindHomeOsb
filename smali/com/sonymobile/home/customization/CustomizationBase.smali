.class public abstract Lcom/sonymobile/home/customization/CustomizationBase;
.super Ljava/lang/Object;
.source "CustomizationBase.java"

# interfaces
.implements Lcom/sonymobile/home/customization/Customization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mGroupTypes:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGroups:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroupTypes:Ljava/util/ArrayDeque;

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroups:Ljava/util/ArrayDeque;

    .line 67
    iput-object p1, p0, Lcom/sonymobile/home/customization/CustomizationBase;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public applyCustomization()Z
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/CustomizationBase;->getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/customization/CustomizationBase;->applyCustomization(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    .line 80
    .local v1, "defaultOk":Z
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/CustomizationBase;->getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/customization/CustomizationBase;->applyCustomization(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 82
    .local v0, "customOk":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected applyCustomization(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 16
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 193
    const/4 v8, 0x0

    .line 194
    .local v8, "result":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/customization/CustomizationBase;->getName()Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, "type":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 197
    const/4 v13, 0x1

    .line 273
    :goto_0
    return v13

    .line 201
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    if-eqz v13, :cond_1

    .line 202
    const-string v13, "Error: Wrong XML parser state"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v13, 0x0

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 209
    .local v4, "event":I
    if-nez v4, :cond_2

    .line 210
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 213
    :cond_2
    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "settings"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 214
    :cond_3
    const-string v13, "Error: Missing expected <settings> tag in customization xml file"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v13, 0x0

    goto :goto_0

    .line 218
    :cond_4
    const/4 v1, 0x0

    .line 219
    .local v1, "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    const/4 v2, 0x0

    .line 220
    .local v2, "currentGroupType":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v13, 0x1

    if-eq v4, v13, :cond_e

    .line 221
    const/4 v13, 0x2

    if-ne v4, v13, :cond_b

    .line 222
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "tagName":Ljava/lang/String;
    const-string v13, "setting"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 224
    const/4 v13, 0x0

    const-string v14, "key"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "key":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 227
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "value":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 230
    invoke-virtual {v1, v7, v12}, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;->putSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v12    # "value":Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v13, 0x3

    const/4 v14, 0x0

    const-string v15, "setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 263
    .end local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    .end local v2    # "currentGroupType":Ljava/lang/String;
    .end local v4    # "event":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 264
    .local v3, "e":Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to read customization xml file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    move v13, v8

    .line 273
    goto :goto_0

    .line 232
    .restart local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    .restart local v2    # "currentGroupType":Ljava/lang/String;
    .restart local v4    # "event":I
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/sonymobile/home/customization/CustomizationBase;->handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 265
    .end local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    .end local v2    # "currentGroupType":Ljava/lang/String;
    .end local v4    # "event":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 266
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Customization XML parsing failed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 236
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    .restart local v2    # "currentGroupType":Ljava/lang/String;
    .restart local v4    # "event":I
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v13, "group"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 237
    const/4 v13, 0x0

    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "groupId":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;

    .end local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    invoke-direct {v1, v2, v6}, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .restart local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroups:Ljava/util/ArrayDeque;

    invoke-virtual {v13, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 267
    .end local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    .end local v2    # "currentGroupType":Ljava/lang/String;
    .end local v4    # "event":I
    .end local v6    # "groupId":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 270
    .local v10, "throwable":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Customization failed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 240
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    .restart local v2    # "currentGroupType":Ljava/lang/String;
    .restart local v4    # "event":I
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_9
    :try_start_3
    const-string v13, "groups"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 241
    const/4 v13, 0x0

    const-string v14, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroupTypes:Ljava/util/ArrayDeque;

    invoke-virtual {v13, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 244
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring unknown tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 246
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_b
    const/4 v13, 0x3

    if-ne v4, v13, :cond_5

    .line 247
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 249
    .restart local v9    # "tagName":Ljava/lang/String;
    const-string v13, "group"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroups:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;

    .line 251
    .local v5, "group":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    if-nez v5, :cond_c

    .line 252
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "Incorrect XML format"

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 254
    :cond_c
    iget-object v13, v5, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;->type:Ljava/lang/String;

    iget-object v14, v5, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;->id:Ljava/lang/String;

    iget-object v15, v5, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;->settings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/sonymobile/home/customization/CustomizationBase;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroups:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    check-cast v1, Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;

    .line 256
    .restart local v1    # "currentGroup":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    goto/16 :goto_1

    .end local v5    # "group":Lcom/sonymobile/home/customization/CustomizationBase$SettingsGroup;
    :cond_d
    const-string v13, "groups"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroupTypes:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/customization/CustomizationBase;->mGroupTypes:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "currentGroupType":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v2    # "currentGroupType":Ljava/lang/String;
    goto/16 :goto_1

    .line 262
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_3
.end method

.method public finalizeCustomization()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected abstract getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
.end method

.method protected abstract getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .param p1, "xmlResourceId"    # I

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 124
    .local v1, "xml":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/customization/CustomizationBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/CustomizationBase;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to find customization xml file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public postCustomization()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public preCustomization(I)V
    .locals 0
    .param p1, "customizationsCompletedMask"    # I

    .prologue
    .line 72
    return-void
.end method

.method protected abstract supportsGroup(Ljava/lang/String;)Z
.end method
