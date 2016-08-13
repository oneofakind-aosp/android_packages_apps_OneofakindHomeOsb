.class public Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
.super Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
.source "CuiGridWidgetLeafItem.java"


# instance fields
.field private final mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private final mLabel:Ljava/lang/String;

.field private mOrder:I

.field private mSpanX:I

.field private mSpanY:I

.field private final mWidgetType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p4, "widgetType"    # I

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p4, "widgetType"    # I
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "label"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p5}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 32
    const/16 v0, 0x32

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mOrder:I

    .line 48
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 49
    iput-object p6, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mLabel:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mWidgetType:I

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIconPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mOrder:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mSpanY:I

    return v0
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mWidgetType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->hashCode()I

    move-result v0

    return v0
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mOrder:I

    .line 94
    return-void
.end method

.method public setSpanX(I)V
    .locals 0
    .param p1, "spanX"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mSpanX:I

    .line 55
    return-void
.end method

.method public setSpanY(I)V
    .locals 0
    .param p1, "spanY"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->mSpanY:I

    .line 59
    return-void
.end method
