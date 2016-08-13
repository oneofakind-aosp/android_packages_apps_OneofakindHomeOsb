.class public Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
.super Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
.source "CuiGridWidgetGroupItem.java"


# instance fields
.field private final mCategoryName:Ljava/lang/String;

.field private mIconPackageName:Ljava/lang/String;

.field private mIconResourceId:I

.field private mLabel:Ljava/lang/String;

.field public final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mCategoryName:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mWidgetProviders:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mProviders:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public addWidgetProvider(Lcom/sonymobile/home/model/UserComponentName;)V
    .locals 1
    .param p1, "provider"    # Lcom/sonymobile/home/model/UserComponentName;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mWidgetProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 95
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .line 97
    .local v0, "other":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->getCategoryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 98
    goto :goto_0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mIconPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mIconResourceId:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetProviders()[Lcom/sonymobile/home/model/UserComponentName;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mWidgetProviders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mWidgetProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/home/model/UserComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/model/UserComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    const/16 v0, 0x1f

    .line 105
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 106
    .local v1, "result":I
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mCategoryName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 107
    return v1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setIconPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconPackageName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mIconPackageName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIconResourceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mIconResourceId:I

    .line 78
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mLabel:Ljava/lang/String;

    .line 56
    return-void
.end method
