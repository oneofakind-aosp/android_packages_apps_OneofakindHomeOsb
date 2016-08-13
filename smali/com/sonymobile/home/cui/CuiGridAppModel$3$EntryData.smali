.class Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;
.super Ljava/lang/Object;
.source "CuiGridAppModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/CuiGridAppModel$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryData"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final item:Lcom/sonymobile/home/data/ActivityItem;

.field public final label:Ljava/lang/String;

.field final synthetic this$1:Lcom/sonymobile/home/cui/CuiGridAppModel$3;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/cui/CuiGridAppModel$3;Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "item"    # Lcom/sonymobile/home/data/ActivityItem;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->this$1:Lcom/sonymobile/home/cui/CuiGridAppModel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->item:Lcom/sonymobile/home/data/ActivityItem;

    .line 124
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->label:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->bitmap:Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method
