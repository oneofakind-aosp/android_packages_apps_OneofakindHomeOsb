.class public Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;
.super Ljava/lang/Object;
.source "ListTouchHelper.java"

# interfaces
.implements Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/ListTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeriodicSnappingStrategy"
.end annotation


# instance fields
.field private mSnappingInterval:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "snappingInterval"    # F

    .prologue
    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;->mSnappingInterval:F

    .line 1238
    return-void
.end method


# virtual methods
.method public onRequestSnap(Lcom/sonymobile/flix/util/ListTouchHelper;FLcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;)Z
    .locals 4
    .param p1, "source"    # Lcom/sonymobile/flix/util/ListTouchHelper;
    .param p2, "position"    # F
    .param p3, "output"    # Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    .prologue
    .line 1250
    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;->mSnappingInterval:F

    div-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1251
    .local v0, "belowIndex":I
    int-to-float v2, v0

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;->mSnappingInterval:F

    mul-float v1, v2, v3

    .line 1252
    .local v1, "belowPosition":F
    invoke-virtual {p3, v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->setPrev(IF)V

    .line 1253
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;->mSnappingInterval:F

    add-float/2addr v3, v1

    invoke-virtual {p3, v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->setNext(IF)V

    .line 1254
    const/4 v2, 0x1

    return v2
.end method
