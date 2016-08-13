.class public Lcom/sonymobile/home/ApplicationCustomization;
.super Lcom/sonymobile/home/customization/CustomizationBase;
.source "ApplicationCustomization.java"


# static fields
.field private static final SUPPORTED_TAGS:[Ljava/lang/String;


# instance fields
.field private mIsStkUSIMNameDisplayEnabled:Z

.field private final mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "stk-usim-name-display-enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/ApplicationCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/home/customization/CustomizationBase;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mIsStkUSIMNameDisplayEnabled:Z

    .line 37
    new-instance v0, Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/ApplicationPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    .line 38
    return-void
.end method

.method public static getCustomizationId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public clearData()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ApplicationCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/ApplicationCustomization;->getCustomizationId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ApplicationCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method protected handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "stk-usim-name-display-enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mIsStkUSIMNameDisplayEnabled:Z

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 95
    .local p3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public storeData()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ApplicationPreferenceManager;->read()V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    iget-boolean v1, p0, Lcom/sonymobile/home/ApplicationCustomization;->mIsStkUSIMNameDisplayEnabled:Z

    iget-object v2, p0, Lcom/sonymobile/home/ApplicationCustomization;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/ApplicationPreferenceManager;->getStkSetupMenuTitles()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/ApplicationPreferenceManager;->setValues(Z[Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomization;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ApplicationPreferenceManager;->store()V

    .line 64
    return-void
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/sonymobile/home/ApplicationCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/home/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
