.class Lcom/sonymobile/home/tutorial/Tutorial$2;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/tutorial/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/Tutorial;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/Tutorial;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/Tutorial$2;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$2;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->access$000(Lcom/sonymobile/home/tutorial/Tutorial;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$2;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    sget-object v1, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->NEXT:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    # invokes: Lcom/sonymobile/home/tutorial/Tutorial;->switchPage(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$100(Lcom/sonymobile/home/tutorial/Tutorial;Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V

    .line 191
    :cond_0
    return-void
.end method
