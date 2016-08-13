.class public Lcom/sonymobile/home/search/entry/LocalSearchEntry;
.super Lcom/sonymobile/home/search/entry/SearchEntry;
.source "LocalSearchEntry.java"


# instance fields
.field private final mFolderInWhichItemIsLocated:Lcom/sonymobile/home/data/FolderItem;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mId:I

.field private final mItem:Lcom/sonymobile/home/data/Item;

.field private mSearchPriority:I


# direct methods
.method public constructor <init>(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "folderInWhichItemIsLocated"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    const/4 v3, 0x0

    .line 50
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;-><init>(ILcom/sonymobile/home/data/Item;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/sonymobile/home/data/FolderItem;)V

    .line 51
    return-void
.end method

.method public constructor <init>(ILcom/sonymobile/home/data/Item;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "folderInWhichItemIsLocated"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 64
    sget-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-direct {p0, v0, p3}, Lcom/sonymobile/home/search/entry/SearchEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;)V

    .line 22
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mSearchPriority:I

    .line 65
    iput p1, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mId:I

    .line 66
    iput-object p5, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mFolderInWhichItemIsLocated:Lcom/sonymobile/home/data/FolderItem;

    .line 67
    iput-object p2, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mItem:Lcom/sonymobile/home/data/Item;

    .line 68
    iput-object p4, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method


# virtual methods
.method public getAssociatedFolderItem()Lcom/sonymobile/home/data/FolderItem;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mFolderInWhichItemIsLocated:Lcom/sonymobile/home/data/FolderItem;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getModelItem()Lcom/sonymobile/home/data/Item;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mItem:Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method public getSearchPriority()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mSearchPriority:I

    return v0
.end method

.method public getSuggestionId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mId:I

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    return-void
.end method

.method public setSearchPriority(I)V
    .locals 0
    .param p1, "searchPriority"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->mSearchPriority:I

    .line 102
    return-void
.end method
