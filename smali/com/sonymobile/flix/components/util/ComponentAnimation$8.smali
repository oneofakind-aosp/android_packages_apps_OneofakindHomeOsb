.class Lcom/sonymobile/flix/components/util/ComponentAnimation$8;
.super Lcom/sonymobile/flix/util/Animation;
.source "ComponentAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation$8;->this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation$8;->this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v0, v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation$8;->this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, v1, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getRotationX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation$8;->this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v2, v2, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getRotationY()F

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonymobile/flix/components/Component;->setRotation(FFF)V

    .line 252
    return-void
.end method
