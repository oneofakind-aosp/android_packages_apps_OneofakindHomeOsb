.class Lcom/sonymobile/home/tutorial/TutorialPage$1;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "TutorialPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/TutorialPage;-><init>(Lcom/sonymobile/flix/components/Scene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/TutorialPage;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/TutorialPage;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/TutorialPage$1;->this$0:Lcom/sonymobile/home/tutorial/TutorialPage;

    invoke-direct {p0}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;->onClick(Lcom/sonymobile/flix/components/Button;FF)V

    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage$1;->this$0:Lcom/sonymobile/home/tutorial/TutorialPage;

    # getter for: Lcom/sonymobile/home/tutorial/TutorialPage;->mListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->access$000(Lcom/sonymobile/home/tutorial/TutorialPage;)Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage$1;->this$0:Lcom/sonymobile/home/tutorial/TutorialPage;

    # getter for: Lcom/sonymobile/home/tutorial/TutorialPage;->mListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->access$000(Lcom/sonymobile/home/tutorial/TutorialPage;)Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;->onPageFinished()V

    .line 55
    :cond_0
    return-void
.end method
