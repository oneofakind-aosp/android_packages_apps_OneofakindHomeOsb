.class public Lcom/sonymobile/home/search/SearchAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/SearchAdapter$1;,
        Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;,
        Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sonymobile/home/search/binding/SearchViewDataBinder;",
        ">;",
        "Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsViewSelectionEnabled:Z

.field private final mNbrOfSearchColumns:I

.field final mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

.field private mSelectedPosition:I

.field private final mSpanSizeLookup:Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

.field private mSuggestionEventListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

.field protected final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field protected final mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonymobile/home/search/SearchAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/SearchAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nbrOfSearchColumns"    # I
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 76
    new-instance v0, Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-direct {v0}, Lcom/sonymobile/home/search/SearchEntryContainer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mIsViewSelectionEnabled:Z

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchAdapter;->setHasStableIds(Z)V

    .line 96
    new-instance v0, Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;-><init>(Lcom/sonymobile/home/search/SearchAdapter;Lcom/sonymobile/home/search/SearchAdapter$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSpanSizeLookup:Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

    .line 97
    iput p2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mNbrOfSearchColumns:I

    .line 98
    new-instance v0, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    invoke-direct {v0, p1, p0}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    .line 99
    iput-object p3, p0, Lcom/sonymobile/home/search/SearchAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/SearchAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->getItemSpan(I)I

    move-result v0

    return v0
.end method

.method private getItemSpan(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "span":I
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v1

    .line 313
    .local v1, "type":Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    sget-object v2, Lcom/sonymobile/home/search/SearchAdapter$1;->$SwitchMap$com$sonymobile$home$search$entry$SearchEntry$Type:[I

    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 325
    .end local v1    # "type":Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    :cond_0
    :goto_0
    return v0

    .line 319
    .restart local v1    # "type":Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mNbrOfSearchColumns:I

    .line 320
    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSearchEntry(I)Lcom/sonymobile/home/search/entry/SearchEntry;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    .line 199
    :cond_0
    return-object v0
.end method


# virtual methods
.method public enableViewSelection(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mIsViewSelectionEnabled:Z

    .line 265
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method

.method public getFirstSearchLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->getFirstLocalSearchEntry()Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    move-result-object v0

    .line 157
    .local v0, "entry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    return-object v1
.end method

.method public getFirstSearchSuggestionId()I
    .locals 3

    .prologue
    .line 121
    const/high16 v1, -0x80000000

    .line 122
    .local v1, "id":I
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->getFirstLocalSearchEntry()Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    move-result-object v0

    .line 123
    .local v0, "entry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSuggestionId()I

    move-result v1

    .line 126
    :cond_0
    return v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchEntryContainer;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SearchEntry;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ordinal()I

    move-result v0

    .line 338
    .local v0, "itemViewType":I
    :goto_0
    return v0

    .line 335
    .end local v0    # "itemViewType":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "itemViewType":I
    goto :goto_0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mNbrOfSearchColumns:I

    return v0
.end method

.method public getPositionFromSuggestionId(I)I
    .locals 4
    .param p1, "suggestionId"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchAdapter;->getItemCount()I

    move-result v2

    .line 137
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 138
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v1

    .line 139
    .local v1, "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    instance-of v3, v1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    if-eqz v3, :cond_0

    .line 140
    check-cast v1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .end local v1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSuggestionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 146
    .end local v0    # "pos":I
    :goto_1
    return v0

    .line 137
    .restart local v0    # "pos":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getSelectedSearchEntry()Lcom/sonymobile/home/search/entry/SearchEntry;
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchAdapter;->getSearchEntry(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSpanSizeLookup()Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSpanSizeLookup:Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

    return-object v0
.end method

.method public isLocalSearchEntry(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->getSearchEntry(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    .line 210
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPositionLegal(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 360
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchEntrySelectable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->getSearchEntry(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    .line 222
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SearchEntry;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 28
    check-cast p1, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/search/SearchAdapter;->onBindViewHolder(Lcom/sonymobile/home/search/binding/SearchViewDataBinder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sonymobile/home/search/binding/SearchViewDataBinder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .param p2, "position"    # I

    .prologue
    .line 285
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v3, p2}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v1

    .line 287
    .local v1, "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;->bind(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    iget-boolean v3, p0, Lcom/sonymobile/home/search/SearchAdapter;->mIsViewSelectionEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    if-ne p2, v3, :cond_0

    const/4 v2, 0x1

    .line 292
    .local v2, "selected":Z
    :goto_1
    iget-object v3, p1, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 293
    return-void

    .line 288
    .end local v2    # "selected":Z
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/security/InvalidParameterException;
    sget-object v3, Lcom/sonymobile/home/search/SearchAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Binding error."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/search/SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 274
    if-ltz p2, :cond_0

    invoke-static {}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->values()[Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 275
    :cond_0
    sget-object v0, Lcom/sonymobile/home/search/SearchAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to instantiate illegal type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    invoke-static {}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->values()[Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSuggestionEventListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    iget-object v3, p0, Lcom/sonymobile/home/search/SearchAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->createViewHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/entry/SearchEntry$Type;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->cleanUp()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchAdapter;->setSearchSuggestionEventListener(Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)V

    .line 113
    return-void
.end method

.method public onIconDownloaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->getPosition(Ljava/lang/String;)I

    move-result v1

    .line 344
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(I)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    .line 346
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    instance-of v2, v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .end local v0    # "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchAdapter;->notifyItemChanged(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public setSearchSuggestionEventListener(Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSuggestionEventListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .line 261
    return-void
.end method

.method public setSelectedPosition(ILandroid/support/v7/widget/GridLayoutManager;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "gridLayoutManager"    # Landroid/support/v7/widget/GridLayoutManager;

    .prologue
    .line 242
    iget v0, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    .line 243
    .local v0, "oldSelectedPosition":I
    iput p1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    .line 245
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchAdapter;->notifyItemChanged(I)V

    .line 248
    :cond_0
    iget v1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget v1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchAdapter;->notifyItemChanged(I)V

    .line 250
    iget v1, p0, Lcom/sonymobile/home/search/SearchAdapter;->mSelectedPosition:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    .line 252
    :cond_1
    return-void
.end method
