.class Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "CuiGridWidgetFirstLevelModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->load()V
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

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->gridItems:Ljava/util/List;

    return-void
.end method

.method private addGridItems(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;>;"
    const/4 v10, 0x0

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;

    .line 238
    .local v3, "widgetItem":Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "label":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 242
    const/4 v5, 0x1

    .line 243
    .local v5, "spanX":I
    const/4 v4, 0x1

    .line 245
    .local v4, "spanY":I
    instance-of v0, v3, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    if-eqz v0, :cond_1

    move-object v8, v3

    .line 246
    check-cast v8, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .line 247
    .local v8, "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    invoke-virtual {v8}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanX()I

    move-result v5

    .line 248
    invoke-virtual {v8}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanY()I

    move-result v4

    .line 249
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGET_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .line 254
    .end local v8    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .local v1, "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    :goto_1
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    invoke-direct {v2, v10, v7, v10, v10}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 256
    .local v2, "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    iget-object v9, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->gridItems:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1    # "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .end local v2    # "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    :cond_1
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .restart local v1    # "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    goto :goto_1

    .line 259
    .end local v1    # "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .end local v3    # "widgetItem":Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .end local v4    # "spanY":I
    .end local v5    # "spanX":I
    .end local v7    # "label":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createMoreItem(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;I)Lcom/sonymobile/home/cui/CuiGridItem;
    .locals 9
    .param p1, "type"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .param p2, "res"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 287
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "label":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v6, v1}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 289
    .local v7, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem;

    new-instance v2, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    const v1, 0x7f020054

    invoke-static {v8, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v7, v6, v1, v3}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V

    return-object v0
.end method

.method private getAdvWidgets(Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 8
    .param p1, "loadHelper"    # Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;>;"
    .local p3, "widgetGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    const/4 v2, 0x0

    .line 174
    .local v2, "homeUidPackages":[Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v7, v7, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 175
    .local v1, "home":Landroid/content/pm/ApplicationInfo;
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 176
    .local v6, "uid":I
    iget-object v7, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$100(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_2

    .line 178
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 179
    .local v5, "packageName":Ljava/lang/String;
    const-string v7, "com.sonyericsson.advancedwidget."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.sonymobile.advancedwidget."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p1, p2, p3, v5}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->setupAdvWidget(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V

    .line 178
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getAppWidgets(Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 19
    .param p1, "loadHelper"    # Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;>;"
    .local p3, "widgetGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v3, v3, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 193
    .local v10, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$500(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v18

    .line 195
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 196
    .local v7, "user":Landroid/os/UserHandle;
    invoke-virtual {v10, v7}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v16

    .line 198
    .local v16, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 199
    .local v5, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v5}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isHomeScreenCategory(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const/4 v9, 0x0

    .line 202
    .local v9, "added":Z
    iget-object v15, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 203
    .local v15, "provider":Landroid/content/ComponentName;
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonyericsson."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonymobile."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$100(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v15, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 210
    .local v14, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1, v7}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->categorizeWidget(Landroid/content/pm/ActivityInfo;Ljava/util/Map;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 215
    .end local v14    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    :goto_1
    if-nez v9, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$100(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "label":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 221
    .local v2, "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;
    invoke-static {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$300(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v4, v4, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getResizedWidgetSpanXY(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v17

    .line 223
    .local v17, "spanXY":[I
    if-eqz v17, :cond_1

    .line 226
    const/4 v3, 0x0

    aget v3, v17, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setSpanX(I)V

    .line 227
    const/4 v3, 0x1

    aget v3, v17, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setSpanY(I)V

    .line 228
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 211
    .end local v2    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .end local v8    # "label":Ljava/lang/String;
    .end local v17    # "spanXY":[I
    :catch_0
    move-exception v11

    .line 212
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "CuiWidgetFirstLevel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    .end local v5    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v7    # "user":Landroid/os/UserHandle;
    .end local v9    # "added":Z
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "provider":Landroid/content/ComponentName;
    .end local v16    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 9

    .prologue
    .line 143
    new-instance v3, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;

    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v6, v6, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$100(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;
    invoke-static {v8}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$300(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;)V

    .line 145
    .local v3, "loadHelper":Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v5, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v4, "widgetGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    invoke-direct {p0, v3, v5, v4}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->getAdvWidgets(Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 152
    invoke-direct {p0, v3, v5, v4}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->getAppWidgets(Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v1, "groupItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .line 158
    .local v0, "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0    # "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetComparator:Ljava/util/Comparator;
    invoke-static {v6}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$400(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    invoke-direct {p0, v5}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->addGridItems(Ljava/util/ArrayList;)V

    .line 166
    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->onDestroy()V

    .line 167
    return-void
.end method

.method public onFinish()V
    .locals 5

    .prologue
    .line 263
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$600(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/home/desktop/DesktopPreferences;->allowUserToAddAppsToDesktop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mGridItems:Ljava/util/List;

    sget-object v3, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_APP_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const v4, 0x7f080084

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->createMoreItem(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;I)Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mGridItems:Ljava/util/List;

    sget-object v3, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_SHORTCUT_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const v4, 0x7f080085

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->createMoreItem(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;I)Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mGridItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->gridItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mGridItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItem;

    .line 279
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$700(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->load(Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    goto :goto_0

    .line 282
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->setLoaded()V

    .line 283
    return-void
.end method
