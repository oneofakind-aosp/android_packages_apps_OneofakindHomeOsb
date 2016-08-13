.class Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "CuiGridShortcutModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridShortcutModel;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final gridItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->gridItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 14

    .prologue
    .line 107
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v9, "intentResolve":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v1, v1, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 109
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v12, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 111
    .local v13, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v12}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 117
    .local v11, "labelChars":Ljava/lang/CharSequence;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "label":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v1, v10, v5, v6}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 121
    .local v2, "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    new-instance v3, Lcom/sonymobile/home/data/ShortcutItem;

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v3, v1, v5, v6}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 124
    .local v3, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem;

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_SHORTCUT_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;Landroid/content/pm/ResolveInfo;II)V

    .line 126
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->gridItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    .end local v2    # "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    .end local v3    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v10    # "label":Ljava/lang/String;
    :cond_0
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 128
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "labelChars":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 132
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mGridItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->gridItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mGridItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItem;

    .line 134
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$300(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->load(Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    goto :goto_0

    .line 136
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->setLoaded()V

    .line 137
    return-void
.end method
