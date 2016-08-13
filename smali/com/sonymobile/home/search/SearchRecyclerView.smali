.class public Lcom/sonymobile/home/search/SearchRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SearchRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/SearchRecyclerView$1;,
        Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

.field private mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private getNextLocalSearchEntryPositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/sonymobile/home/search/SearchAdapter;->getItemCount()I

    move-result v0

    .line 278
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 279
    invoke-virtual {p2, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isLocalSearchEntry(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 278
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getNextLocalSearchEntryPositionUpwards(IILcom/sonymobile/home/search/SearchAdapter;)I
    .locals 2
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 288
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 289
    invoke-virtual {p3, v0}, Lcom/sonymobile/home/search/SearchAdapter;->isLocalSearchEntry(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 288
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNextSelectableNonLocalSearchEntryPositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 298
    invoke-virtual {p2}, Lcom/sonymobile/home/search/SearchAdapter;->getItemCount()I

    move-result v0

    .line 299
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 300
    invoke-virtual {p2, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isLocalSearchEntry(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isSearchEntrySelectable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 299
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getNextSelectablePositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 266
    invoke-virtual {p2}, Lcom/sonymobile/home/search/SearchAdapter;->getItemCount()I

    move-result v0

    .line 267
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 268
    invoke-virtual {p2, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isSearchEntrySelectable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 267
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getNextSelectablePositionDownwards(Lcom/sonymobile/home/search/SearchAdapter;)I
    .locals 10
    .param p1, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    const/4 v9, -0x1

    .line 233
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchAdapter;->getSelectedPosition()I

    move-result v1

    .line 234
    .local v1, "currentlySelectedPos":I
    const/4 v4, -0x1

    .line 236
    .local v4, "nextPos":I
    invoke-virtual {p1, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isLocalSearchEntry(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchAdapter;->getNumberOfColumns()I

    move-result v6

    .line 240
    .local v6, "numCols":I
    add-int v7, v1, v6

    add-int/lit8 v8, v1, 0x1

    invoke-direct {p0, v7, v8, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextLocalSearchEntryPositionUpwards(IILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v3

    .line 243
    .local v3, "nextLocalSearchEntryPos":I
    if-eq v3, v9, :cond_0

    .line 245
    const/4 v7, 0x0

    invoke-direct {p0, v7, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextLocalSearchEntryPositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v2

    .line 246
    .local v2, "firstPos":I
    if-eq v2, v9, :cond_0

    .line 247
    sub-int v7, v1, v2

    div-int v0, v7, v6

    .line 248
    .local v0, "currentRow":I
    sub-int v7, v3, v2

    div-int v5, v7, v6

    .line 249
    .local v5, "nextRow":I
    if-le v5, v0, :cond_0

    .line 251
    move v4, v3

    .line 257
    .end local v0    # "currentRow":I
    .end local v2    # "firstPos":I
    .end local v3    # "nextLocalSearchEntryPos":I
    .end local v5    # "nextRow":I
    .end local v6    # "numCols":I
    :cond_0
    if-ne v4, v9, :cond_1

    .line 258
    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectableNonLocalSearchEntryPositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v4

    .line 262
    :cond_1
    return v4
.end method

.method private getNextSelectablePositionToTheLeft(Lcom/sonymobile/home/search/SearchAdapter;)I
    .locals 2
    .param p1, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchAdapter;->getSelectedPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 180
    .local v0, "startPos":I
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionUpwards(ILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    return v1
.end method

.method private getNextSelectablePositionToTheRight(Lcom/sonymobile/home/search/SearchAdapter;)I
    .locals 2
    .param p1, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchAdapter;->getSelectedPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 192
    .local v0, "startPos":I
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    return v1
.end method

.method private getNextSelectablePositionUpwards(ILcom/sonymobile/home/search/SearchAdapter;)I
    .locals 2
    .param p1, "startPos"    # I
    .param p2, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 217
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 218
    invoke-virtual {p2, v0}, Lcom/sonymobile/home/search/SearchAdapter;->isSearchEntrySelectable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 217
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNextSelectablePositionUpwards(Lcom/sonymobile/home/search/SearchAdapter;)I
    .locals 4
    .param p1, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchAdapter;->getSelectedPosition()I

    move-result v0

    .line 205
    .local v0, "currentlySelectedPosition":I
    invoke-virtual {p1, v0}, Lcom/sonymobile/home/search/SearchAdapter;->isLocalSearchEntry(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchAdapter;->getNumberOfColumns()I

    move-result v3

    neg-int v1, v3

    .line 212
    .local v1, "positionOffset":I
    :goto_0
    add-int v2, v0, v1

    .line 213
    .local v2, "startPos":I
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionUpwards(ILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v3

    return v3

    .line 210
    .end local v1    # "positionOffset":I
    .end local v2    # "startPos":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "positionOffset":I
    goto :goto_0
.end method

.method private handleKeyEnterEvent(Lcom/sonymobile/home/search/entry/SearchEntry;)Z
    .locals 3
    .param p1, "searchEntry"    # Lcom/sonymobile/home/search/entry/SearchEntry;

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "handled":Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    if-eqz v1, :cond_0

    .line 317
    sget-object v1, Lcom/sonymobile/home/search/SearchRecyclerView$1;->$SwitchMap$com$sonymobile$home$search$entry$SearchEntry$Type:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 344
    .end local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_0
    :goto_0
    return v0

    .line 319
    .restart local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :pswitch_0
    check-cast p1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .end local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->handleKeyEnterOnLocalEntry(Lcom/sonymobile/home/search/entry/LocalSearchEntry;)V

    .line 320
    const/4 v0, 0x1

    .line 321
    goto :goto_0

    .line 324
    .restart local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :pswitch_1
    const-string v1, "SearchRecommendedClicked"

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 327
    check-cast p1, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .end local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->handleKeyEnterOnSuggestionEntry(Lcom/sonymobile/home/search/entry/SuggestionEntry;)V

    .line 328
    const/4 v0, 0x1

    .line 329
    goto :goto_0

    .line 332
    .restart local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :pswitch_2
    const-string v1, "SearchGooglePlayClicked"

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 335
    check-cast p1, Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    .end local p1    # "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchRecyclerView;->handleKeyEnterOnGooglePlayEntry(Lcom/sonymobile/home/search/entry/GooglePlayEntry;)V

    .line 336
    const/4 v0, 0x1

    .line 337
    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleKeyEnterOnGooglePlayEntry(Lcom/sonymobile/home/search/entry/GooglePlayEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;->onSearchSuggestionItemKeyEnterEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleKeyEnterOnLocalEntry(Lcom/sonymobile/home/search/entry/LocalSearchEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSuggestionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;->onSearchSuggestionItemKeyEnterEvent(I)V

    .line 351
    :cond_0
    return-void
.end method

.method private handleKeyEnterOnSuggestionEntry(Lcom/sonymobile/home/search/entry/SuggestionEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .prologue
    .line 354
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->formatQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "queryText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;->onSearchSuggestionItemKeyEnterEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v0    # "queryText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleKeyNavigationEvent(ILcom/sonymobile/home/search/SearchAdapter;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "adapter"    # Lcom/sonymobile/home/search/SearchAdapter;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "handled":Z
    packed-switch p1, :pswitch_data_0

    .line 158
    const/4 v1, -0x1

    .line 162
    .local v1, "nextSelectedPosition":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/search/SearchAdapter;->isPositionLegal(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    invoke-interface {v2, v1}, Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;->onSelectedPositionChanged(I)V

    .line 164
    const/4 v0, 0x1

    .line 167
    :cond_0
    return v0

    .line 142
    .end local v1    # "nextSelectedPosition":I
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionUpwards(Lcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    .line 143
    .restart local v1    # "nextSelectedPosition":I
    goto :goto_0

    .line 146
    .end local v1    # "nextSelectedPosition":I
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionToTheLeft(Lcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    .line 147
    .restart local v1    # "nextSelectedPosition":I
    goto :goto_0

    .line 150
    .end local v1    # "nextSelectedPosition":I
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionToTheRight(Lcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    .line 151
    .restart local v1    # "nextSelectedPosition":I
    goto :goto_0

    .line 154
    .end local v1    # "nextSelectedPosition":I
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionDownwards(Lcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    .line 155
    .restart local v1    # "nextSelectedPosition":I
    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 84
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    if-eqz v2, :cond_1

    .line 85
    const/4 v1, -0x1

    .line 86
    .local v1, "nextSelectedPosition":I
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    instance-of v2, v0, Lcom/sonymobile/home/search/SearchAdapter;

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x0

    check-cast v0, Lcom/sonymobile/home/search/SearchAdapter;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getNextSelectablePositionDownwards(ILcom/sonymobile/home/search/SearchAdapter;)I

    move-result v1

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    invoke-interface {v2, v1}, Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;->onSelectedPositionChanged(I)V

    .line 91
    .end local v1    # "nextSelectedPosition":I
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "adapter":Lcom/sonymobile/home/search/SearchAdapter;
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lcom/sonymobile/home/search/SearchAdapter;

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .end local v0    # "adapter":Lcom/sonymobile/home/search/SearchAdapter;
    check-cast v0, Lcom/sonymobile/home/search/SearchAdapter;

    .line 100
    .restart local v0    # "adapter":Lcom/sonymobile/home/search/SearchAdapter;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchAdapter;->getSelectedPosition()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchAdapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 126
    :goto_0
    return v1

    .line 107
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 112
    .end local v1    # "handled":Z
    :sswitch_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->handleKeyNavigationEvent(ILcom/sonymobile/home/search/SearchAdapter;)Z

    move-result v1

    .line 113
    .restart local v1    # "handled":Z
    goto :goto_0

    .line 117
    .end local v1    # "handled":Z
    :sswitch_1
    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchAdapter;->getSelectedSearchEntry()Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v2

    .line 118
    .local v2, "searchEntry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/SearchRecyclerView;->handleKeyEnterEvent(Lcom/sonymobile/home/search/entry/SearchEntry;)Z

    move-result v1

    .line 119
    .restart local v1    # "handled":Z
    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public setUserSettings(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 369
    return-void
.end method

.method public setViewListener(Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchRecyclerView;->mListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    .line 77
    return-void
.end method
