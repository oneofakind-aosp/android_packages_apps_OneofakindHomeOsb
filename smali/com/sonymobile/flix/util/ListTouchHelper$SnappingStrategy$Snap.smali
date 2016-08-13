.class public Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;
.super Ljava/lang/Object;
.source "ListTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snap"
.end annotation


# instance fields
.field protected mIndexNext:I

.field protected mIndexPrev:I

.field protected mPosition:F

.field protected mPositionNext:F

.field protected mPositionPrev:F

.field protected mResistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexPrev:I

    .line 1171
    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    .line 1173
    iput v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexNext:I

    .line 1175
    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    .line 1177
    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPosition:F

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 1182
    iput v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexPrev:I

    .line 1183
    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    .line 1184
    iput v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexNext:I

    .line 1185
    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    .line 1186
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mResistance:F

    .line 1187
    return-void
.end method

.method public setNext(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "position"    # F

    .prologue
    .line 1212
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexNext:I

    .line 1213
    iput p2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    .line 1214
    return-void
.end method

.method public setPrev(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "position"    # F

    .prologue
    .line 1207
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexPrev:I

    .line 1208
    iput p2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    .line 1209
    return-void
.end method
