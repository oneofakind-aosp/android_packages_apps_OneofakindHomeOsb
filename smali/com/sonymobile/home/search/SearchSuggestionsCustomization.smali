.class public Lcom/sonymobile/home/search/SearchSuggestionsCustomization;
.super Lcom/sonymobile/home/customization/PageViewCustomization;
.source "SearchSuggestionsCustomization.java"


# static fields
.field private static final SUPPORTED_TAGS:[Ljava/lang/String;


# instance fields
.field private final mItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxNbrOfItemsOffline:I

.field private final mMaxNbrOfItemsOnline:I

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activities"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "remove-activities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p4, "settings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/sonymobile/home/customization/PageViewCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 52
    iput-object p3, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 53
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mMaxNbrOfItemsOffline:I

    .line 57
    const v1, 0x7f0d0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mMaxNbrOfItemsOnline:I

    .line 60
    iput-object p4, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 61
    return-void
.end method

.method private addInFirstAvailable(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "itemAdded":Z
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 127
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-nez v1, :cond_0

    .line 128
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 129
    const/4 v2, 0x1

    .line 134
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    if-nez v2, :cond_2

    .line 135
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    return-void
.end method

.method private getMaxNbrOfItems()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isOnlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mMaxNbrOfItemsOnline:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mMaxNbrOfItemsOffline:I

    goto :goto_0
.end method

.method private insert(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 141
    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 146
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->clear(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method protected getItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v4, 0x0

    .line 151
    .local v4, "position":I
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getMaxNbrOfItems()I

    move-result v3

    .line 152
    .local v3, "maxNbrOfItems":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v6, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 154
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v1, :cond_0

    .line 155
    new-instance v6, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v7, 0x0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    invoke-direct {v6, v7, v4}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 156
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    if-lt v5, v3, :cond_2

    move v4, v5

    .line 161
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v5    # "position":I
    .restart local v4    # "position":I
    :cond_1
    return-object v2

    .end local v4    # "position":I
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v5    # "position":I
    :cond_2
    move v4, v5

    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_0
.end method

.method protected getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "search_suggestions"

    return-object v0
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 90
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getMaxNbrOfItems()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    .line 108
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 109
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->insert(Lcom/sonymobile/home/data/Item;)V

    .line 115
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->addInFirstAvailable(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method protected onRemoveItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 101
    return-void
.end method

.method protected store()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/storage/Storage;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V

    .line 173
    return-void
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/home/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
