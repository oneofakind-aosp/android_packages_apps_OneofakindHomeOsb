.class public Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;
.super Ljava/lang/Object;
.source "DesktopItemLocationSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;


# instance fields
.field private final mLeftmostPageIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "leftmostPageIndex"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;->mLeftmostPageIndex:I

    .line 21
    return-void
.end method

.method private hasDimensions(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 36
    instance-of v0, p1, Lcom/sonymobile/home/data/WidgetItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLocationAttributes(Lorg/json/JSONObject;Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 26
    .local v0, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    const-string v1, "panel"

    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;->getPanelIndex(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v1, "x"

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string v1, "y"

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-direct {p0, p2}, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;->hasDimensions(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const-string v1, "width"

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string v1, "height"

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    :cond_0
    return-void
.end method

.method public getPanelIndex(I)I
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;->mLeftmostPageIndex:I

    sub-int v0, p1, v0

    return v0
.end method
