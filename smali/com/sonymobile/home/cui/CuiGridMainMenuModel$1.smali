.class Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "CuiGridMainMenuModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->load()V
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

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridMainMenuModel;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->gridItems:Ljava/util/List;

    return-void
.end method

.method private addGridItem(IILcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V
    .locals 12
    .param p1, "iconResId"    # I
    .param p2, "labelResId"    # I
    .param p3, "gridItemType"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 59
    .local v9, "resources":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v10

    .line 60
    .local v10, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-virtual {v10, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 61
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "label":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    invoke-virtual {v0, v7, v4}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 64
    .local v8, "labelBitmap":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->gridItems:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem;

    new-instance v2, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    invoke-direct {v2, v8, v7, v6, v3}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object v1, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f02005b

    const v1, 0x7f080089

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_WIDGETS_AND_APPS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->addGridItem(IILcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V

    .line 46
    const v0, 0x7f02005a

    const v1, 0x7f080087

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->addGridItem(IILcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V

    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mEnableThemes:Z
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->access$000(Lcom/sonymobile/home/cui/CuiGridMainMenuModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f020059

    const v1, 0x7f080086

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_THEMES:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->addGridItem(IILcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V

    .line 52
    :cond_0
    const v0, 0x7f020058

    const v1, 0x7f080083

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_SETTINGS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->addGridItem(IILcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V

    .line 54
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mGridItems:Ljava/util/List;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->gridItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->setLoaded()V

    .line 72
    return-void
.end method
