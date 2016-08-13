.class Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;
.super Lcom/sonymobile/flix/util/Animation;
.source "TransferView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/transfer/TransferView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupAnimation"
.end annotation


# instance fields
.field private final mComponent:Lcom/sonymobile/flix/components/Component;

.field private final mEnd:F

.field private final mMiddle:F

.field private final mStart:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Component;FFFJJ)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "start"    # F
    .param p3, "middle"    # F
    .param p4, "end"    # F
    .param p5, "duration"    # J
    .param p7, "delay"    # J

    .prologue
    .line 576
    invoke-direct {p0, p5, p6, p7, p8}, Lcom/sonymobile/flix/util/Animation;-><init>(JJ)V

    .line 577
    iput-object p1, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 578
    iput p2, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mStart:F

    .line 579
    iput p3, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mMiddle:F

    .line 580
    iput p4, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mEnd:F

    .line 581
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 582
    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 5
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 587
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mStart:F

    mul-float v2, p1, p1

    sub-float v2, v3, v2

    iget v3, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mMiddle:F

    iget v4, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setScaling(F)V

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 593
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mEnd:F

    mul-float v2, p1, p1

    sub-float v2, v3, v2

    iget v3, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mMiddle:F

    iget v4, p0, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->mEnd:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setScaling(F)V

    goto :goto_0
.end method
